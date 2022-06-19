package com.squareup.picasso;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.NetworkInfo;
import android.os.Build;
import com.squareup.picasso.NetworkRequestHandler;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestHandler;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;
import okio.BufferedSource;
import okio.Okio;
import okio.Source;
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/BitmapHunter.class */
public class BitmapHunter implements Runnable {
    Action action;
    List<Action> actions;
    final Cache cache;
    final Request data;
    final Dispatcher dispatcher;
    Exception exception;
    int exifOrientation;
    Future<?> future;
    final String key;
    Picasso.LoadedFrom loadedFrom;
    final int memoryPolicy;
    int networkPolicy;
    final Picasso picasso;
    Picasso.Priority priority;
    final RequestHandler requestHandler;
    Bitmap result;
    int retryCount;
    final int sequence = SEQUENCE_GENERATOR.incrementAndGet();
    final Stats stats;
    private static final Object DECODE_LOCK = new Object();
    private static final ThreadLocal<StringBuilder> NAME_BUILDER = new ThreadLocal<StringBuilder>() { // from class: com.squareup.picasso.BitmapHunter.1
        @Override // java.lang.ThreadLocal
        public StringBuilder initialValue() {
            return new StringBuilder("Picasso-");
        }
    };
    private static final AtomicInteger SEQUENCE_GENERATOR = new AtomicInteger();
    private static final RequestHandler ERRORING_HANDLER = new RequestHandler() { // from class: com.squareup.picasso.BitmapHunter.2
        @Override // com.squareup.picasso.RequestHandler
        public boolean canHandleRequest(Request request) {
            return true;
        }

        @Override // com.squareup.picasso.RequestHandler
        public RequestHandler.Result load(Request request, int i) throws IOException {
            throw new IllegalStateException("Unrecognized type of request: " + request);
        }
    };

    BitmapHunter(Picasso picasso, Dispatcher dispatcher, Cache cache, Stats stats, Action action, RequestHandler requestHandler) {
        this.picasso = picasso;
        this.dispatcher = dispatcher;
        this.cache = cache;
        this.stats = stats;
        this.action = action;
        this.key = action.getKey();
        this.data = action.getRequest();
        this.priority = action.getPriority();
        this.memoryPolicy = action.getMemoryPolicy();
        this.networkPolicy = action.getNetworkPolicy();
        this.requestHandler = requestHandler;
        this.retryCount = requestHandler.getRetryCount();
    }

    static Bitmap applyCustomTransformations(List<Transformation> list, Bitmap bitmap) {
        int size = list.size();
        int i = 0;
        while (i < size) {
            final Transformation transformation = list.get(i);
            try {
                Bitmap transform = transformation.transform(bitmap);
                if (transform == null) {
                    final StringBuilder sb = new StringBuilder();
                    sb.append("Transformation ");
                    sb.append(transformation.key());
                    sb.append(" returned null after ");
                    sb.append(i);
                    sb.append(" previous transformation(s).\n\nTransformation list:\n");
                    for (Transformation transformation2 : list) {
                        sb.append(transformation2.key());
                        sb.append('\n');
                    }
                    Picasso.HANDLER.post(new Runnable() { // from class: com.squareup.picasso.BitmapHunter.4
                        @Override // java.lang.Runnable
                        public void run() {
                            throw new NullPointerException(sb.toString());
                        }
                    });
                    return null;
                } else if (transform == bitmap && bitmap.isRecycled()) {
                    Picasso.HANDLER.post(new Runnable() { // from class: com.squareup.picasso.BitmapHunter.5
                        @Override // java.lang.Runnable
                        public void run() {
                            throw new IllegalStateException("Transformation " + transformation.key() + " returned input Bitmap but recycled it.");
                        }
                    });
                    return null;
                } else if (transform != bitmap && !bitmap.isRecycled()) {
                    Picasso.HANDLER.post(new Runnable() { // from class: com.squareup.picasso.BitmapHunter.6
                        @Override // java.lang.Runnable
                        public void run() {
                            throw new IllegalStateException("Transformation " + transformation.key() + " mutated input Bitmap but failed to recycle the original.");
                        }
                    });
                    return null;
                } else {
                    i++;
                    bitmap = transform;
                }
            } catch (RuntimeException e) {
                Picasso.HANDLER.post(new Runnable() { // from class: com.squareup.picasso.BitmapHunter.3
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new RuntimeException("Transformation " + transformation.key() + " crashed with exception.", e);
                    }
                });
                return null;
            }
        }
        return bitmap;
    }

    private Picasso.Priority computeNewPriority() {
        Picasso.Priority priority = Picasso.Priority.LOW;
        List<Action> list = this.actions;
        boolean z = list != null && !list.isEmpty();
        Action action = this.action;
        boolean z2 = true;
        if (action == null) {
            z2 = z;
        }
        if (!z2) {
            return priority;
        }
        if (action != null) {
            priority = action.getPriority();
        }
        Picasso.Priority priority2 = priority;
        if (z) {
            int size = this.actions.size();
            int i = 0;
            while (true) {
                priority2 = priority;
                if (i >= size) {
                    break;
                }
                Picasso.Priority priority3 = this.actions.get(i).getPriority();
                Picasso.Priority priority4 = priority;
                if (priority3.ordinal() > priority.ordinal()) {
                    priority4 = priority3;
                }
                i++;
                priority = priority4;
            }
        }
        return priority2;
    }

    static Bitmap decodeStream(Source source, Request request) throws IOException {
        BufferedSource buffer = Okio.buffer(source);
        boolean isWebPFile = Utils.isWebPFile(buffer);
        boolean z = request.purgeable && Build.VERSION.SDK_INT < 21;
        BitmapFactory.Options createBitmapOptions = RequestHandler.createBitmapOptions(request);
        boolean requiresInSampleSize = RequestHandler.requiresInSampleSize(createBitmapOptions);
        if (isWebPFile || z) {
            byte[] readByteArray = buffer.readByteArray();
            if (requiresInSampleSize) {
                BitmapFactory.decodeByteArray(readByteArray, 0, readByteArray.length, createBitmapOptions);
                RequestHandler.calculateInSampleSize(request.targetWidth, request.targetHeight, createBitmapOptions, request);
            }
            return BitmapFactory.decodeByteArray(readByteArray, 0, readByteArray.length, createBitmapOptions);
        }
        InputStream inputStream = buffer.inputStream();
        MarkableInputStream markableInputStream = inputStream;
        if (requiresInSampleSize) {
            MarkableInputStream markableInputStream2 = new MarkableInputStream(inputStream);
            markableInputStream2.allowMarksToExpire(false);
            long savePosition = markableInputStream2.savePosition(1024);
            BitmapFactory.decodeStream(markableInputStream2, null, createBitmapOptions);
            RequestHandler.calculateInSampleSize(request.targetWidth, request.targetHeight, createBitmapOptions, request);
            markableInputStream2.reset(savePosition);
            markableInputStream2.allowMarksToExpire(true);
            markableInputStream = markableInputStream2;
        }
        Bitmap decodeStream = BitmapFactory.decodeStream(markableInputStream, null, createBitmapOptions);
        if (decodeStream == null) {
            throw new IOException("Failed to decode stream.");
        }
        return decodeStream;
    }

    public static BitmapHunter forRequest(Picasso picasso, Dispatcher dispatcher, Cache cache, Stats stats, Action action) {
        Request request = action.getRequest();
        List<RequestHandler> requestHandlers = picasso.getRequestHandlers();
        int size = requestHandlers.size();
        for (int i = 0; i < size; i++) {
            RequestHandler requestHandler = requestHandlers.get(i);
            if (requestHandler.canHandleRequest(request)) {
                return new BitmapHunter(picasso, dispatcher, cache, stats, action, requestHandler);
            }
        }
        return new BitmapHunter(picasso, dispatcher, cache, stats, action, ERRORING_HANDLER);
    }

    static int getExifRotation(int i) {
        int i2;
        switch (i) {
            case 3:
            case 4:
                i2 = 180;
                break;
            case 5:
            case 6:
                i2 = 90;
                break;
            case 7:
            case 8:
                i2 = 270;
                break;
            default:
                i2 = 0;
                break;
        }
        return i2;
    }

    static int getExifTranslation(int i) {
        return (i == 2 || i == 7 || i == 4 || i == 5) ? -1 : 1;
    }

    private static boolean shouldResize(boolean z, int i, int i2, int i3, int i4) {
        return !z || (i3 != 0 && i > i3) || (i4 != 0 && i2 > i4);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0259, code lost:
        if (r0 == 270) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0455, code lost:
        if (r37 != 0) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x046b, code lost:
        if (r37 != r0) goto L86;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x04fe  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static android.graphics.Bitmap transformResult(com.squareup.picasso.Request r9, android.graphics.Bitmap r10, int r11) {
        /*
            Method dump skipped, instructions count: 1289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.picasso.BitmapHunter.transformResult(com.squareup.picasso.Request, android.graphics.Bitmap, int):android.graphics.Bitmap");
    }

    static void updateThreadName(Request request) {
        String name = request.getName();
        StringBuilder sb = NAME_BUILDER.get();
        sb.ensureCapacity(name.length() + 8);
        sb.replace(8, sb.length(), name);
        Thread.currentThread().setName(sb.toString());
    }

    public void attach(Action action) {
        boolean z = this.picasso.loggingEnabled;
        Request request = action.request;
        if (this.action == null) {
            this.action = action;
            if (!z) {
                return;
            }
            List<Action> list = this.actions;
            if (list == null || list.isEmpty()) {
                Utils.log("Hunter", "joined", request.logId(), "to empty hunter");
                return;
            } else {
                Utils.log("Hunter", "joined", request.logId(), Utils.getLogIdsForHunter(this, "to "));
                return;
            }
        }
        if (this.actions == null) {
            this.actions = new ArrayList(3);
        }
        this.actions.add(action);
        if (z) {
            Utils.log("Hunter", "joined", request.logId(), Utils.getLogIdsForHunter(this, "to "));
        }
        Picasso.Priority priority = action.getPriority();
        if (priority.ordinal() <= this.priority.ordinal()) {
            return;
        }
        this.priority = priority;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001e, code lost:
        if (r0.isEmpty() != false) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean cancel() {
        /*
            r3 = this;
            r0 = r3
            com.squareup.picasso.Action r0 = r0.action
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r4
            if (r0 != 0) goto L3a
            r0 = r3
            java.util.List<com.squareup.picasso.Action> r0 = r0.actions
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L21
            r0 = r5
            r6 = r0
            r0 = r4
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L3a
        L21:
            r0 = r3
            java.util.concurrent.Future<?> r0 = r0.future
            r4 = r0
            r0 = r5
            r6 = r0
            r0 = r4
            if (r0 == 0) goto L3a
            r0 = r5
            r6 = r0
            r0 = r4
            r1 = 0
            boolean r0 = r0.cancel(r1)
            if (r0 == 0) goto L3a
            r0 = 1
            r6 = r0
        L3a:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.picasso.BitmapHunter.cancel():boolean");
    }

    public void detach(Action action) {
        boolean z;
        if (this.action == action) {
            this.action = null;
            z = true;
        } else {
            List<Action> list = this.actions;
            z = list != null ? list.remove(action) : false;
        }
        if (z && action.getPriority() == this.priority) {
            this.priority = computeNewPriority();
        }
        if (this.picasso.loggingEnabled) {
            Utils.log("Hunter", "removed", action.request.logId(), Utils.getLogIdsForHunter(this, "from "));
        }
    }

    public Action getAction() {
        return this.action;
    }

    public List<Action> getActions() {
        return this.actions;
    }

    public Request getData() {
        return this.data;
    }

    public Exception getException() {
        return this.exception;
    }

    public String getKey() {
        return this.key;
    }

    public Picasso.LoadedFrom getLoadedFrom() {
        return this.loadedFrom;
    }

    public int getMemoryPolicy() {
        return this.memoryPolicy;
    }

    public Picasso getPicasso() {
        return this.picasso;
    }

    public Picasso.Priority getPriority() {
        return this.priority;
    }

    public Bitmap getResult() {
        return this.result;
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00f2, code lost:
        if (r5.exifOrientation != 0) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x010d, code lost:
        if (r5.exifOrientation != 0) goto L46;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Bitmap hunt() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 410
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.picasso.BitmapHunter.hunt():android.graphics.Bitmap");
    }

    public boolean isCancelled() {
        Future<?> future = this.future;
        return future != null && future.isCancelled();
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            try {
                try {
                    try {
                        updateThreadName(this.data);
                        if (this.picasso.loggingEnabled) {
                            Utils.log("Hunter", "executing", Utils.getLogIdsForHunter(this));
                        }
                        Bitmap hunt = hunt();
                        this.result = hunt;
                        if (hunt == null) {
                            this.dispatcher.dispatchFailed(this);
                        } else {
                            this.dispatcher.dispatchComplete(this);
                        }
                    } catch (Exception e) {
                        this.exception = e;
                        this.dispatcher.dispatchFailed(this);
                    }
                } catch (NetworkRequestHandler.ResponseException e2) {
                    if (!NetworkPolicy.isOfflineOnly(e2.networkPolicy) || e2.code != 504) {
                        this.exception = e2;
                    }
                    this.dispatcher.dispatchFailed(this);
                }
            } catch (IOException e3) {
                this.exception = e3;
                this.dispatcher.dispatchRetry(this);
            } catch (OutOfMemoryError e4) {
                StringWriter stringWriter = new StringWriter();
                this.stats.createSnapshot().dump(new PrintWriter(stringWriter));
                this.exception = new RuntimeException(stringWriter.toString(), e4);
                this.dispatcher.dispatchFailed(this);
            }
            Thread.currentThread().setName("Picasso-Idle");
        } catch (Throwable th) {
            Thread.currentThread().setName("Picasso-Idle");
            throw th;
        }
    }

    public boolean shouldRetry(boolean z, NetworkInfo networkInfo) {
        int i = this.retryCount;
        if (!(i > 0)) {
            return false;
        }
        this.retryCount = i - 1;
        return this.requestHandler.shouldRetry(z, networkInfo);
    }

    public boolean supportsReplay() {
        return this.requestHandler.supportsReplay();
    }
}
