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
import p610i.AbstractC10264e;
import p610i.AbstractC10281q;
import p610i.C10270k;
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/BitmapHunter.class */
public class BitmapHunter implements Runnable {
    public Action action;
    public List<Action> actions;
    public final Cache cache;
    public final Request data;
    public final Dispatcher dispatcher;
    public Exception exception;
    public int exifOrientation;
    public Future<?> future;
    public final String key;
    public Picasso.LoadedFrom loadedFrom;
    public final int memoryPolicy;
    public int networkPolicy;
    public final Picasso picasso;
    public Picasso.Priority priority;
    public final RequestHandler requestHandler;
    public Bitmap result;
    public int retryCount;
    public final int sequence = SEQUENCE_GENERATOR.incrementAndGet();
    public final Stats stats;
    public static final Object DECODE_LOCK = new Object();
    public static final ThreadLocal<StringBuilder> NAME_BUILDER = new ThreadLocal<StringBuilder>() { // from class: com.squareup.picasso.BitmapHunter.1
        @Override // java.lang.ThreadLocal
        public StringBuilder initialValue() {
            return new StringBuilder(Utils.THREAD_PREFIX);
        }
    };
    public static final AtomicInteger SEQUENCE_GENERATOR = new AtomicInteger();
    public static final RequestHandler ERRORING_HANDLER = new RequestHandler() { // from class: com.squareup.picasso.BitmapHunter.2
        @Override // com.squareup.picasso.RequestHandler
        public boolean canHandleRequest(Request request) {
            return true;
        }

        @Override // com.squareup.picasso.RequestHandler
        public RequestHandler.Result load(Request request, int i) throws IOException {
            throw new IllegalStateException("Unrecognized type of request: " + request);
        }
    };

    public BitmapHunter(Picasso picasso, Dispatcher dispatcher, Cache cache, Stats stats, Action action, RequestHandler requestHandler) {
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

    public static Bitmap applyCustomTransformations(List<Transformation> list, Bitmap bitmap) {
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
                            throw new IllegalStateException("Transformation " + Transformation.this.key() + " returned input Bitmap but recycled it.");
                        }
                    });
                    return null;
                } else if (transform == bitmap || bitmap.isRecycled()) {
                    i++;
                    bitmap = transform;
                } else {
                    Picasso.HANDLER.post(new Runnable() { // from class: com.squareup.picasso.BitmapHunter.6
                        @Override // java.lang.Runnable
                        public void run() {
                            throw new IllegalStateException("Transformation " + Transformation.this.key() + " mutated input Bitmap but failed to recycle the original.");
                        }
                    });
                    return null;
                }
            } catch (RuntimeException e) {
                Picasso.HANDLER.post(new Runnable() { // from class: com.squareup.picasso.BitmapHunter.3
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new RuntimeException("Transformation " + Transformation.this.key() + " crashed with exception.", e);
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
        int i = 0;
        boolean z = list != null && !list.isEmpty();
        boolean z2 = true;
        if (this.action == null) {
            z2 = z;
        }
        if (!z2) {
            return priority;
        }
        Action action = this.action;
        if (action != null) {
            priority = action.getPriority();
        }
        Picasso.Priority priority2 = priority;
        if (z) {
            int size = this.actions.size();
            while (true) {
                priority2 = priority;
                if (i >= size) {
                    break;
                }
                Picasso.Priority priority3 = this.actions.get(i).getPriority();
                priority = priority;
                if (priority3.ordinal() > priority.ordinal()) {
                    priority = priority3;
                }
                i++;
            }
        }
        return priority2;
    }

    public static Bitmap decodeStream(AbstractC10281q qVar, Request request) throws IOException {
        AbstractC10264e a = C10270k.m753a(qVar);
        boolean isWebPFile = Utils.isWebPFile(a);
        boolean z = request.purgeable && Build.VERSION.SDK_INT < 21;
        BitmapFactory.Options createBitmapOptions = RequestHandler.createBitmapOptions(request);
        boolean requiresInSampleSize = RequestHandler.requiresInSampleSize(createBitmapOptions);
        if (isWebPFile || z) {
            byte[] G0 = a.mo733G0();
            if (requiresInSampleSize) {
                BitmapFactory.decodeByteArray(G0, 0, G0.length, createBitmapOptions);
                RequestHandler.calculateInSampleSize(request.targetWidth, request.targetHeight, createBitmapOptions, request);
            }
            return BitmapFactory.decodeByteArray(G0, 0, G0.length, createBitmapOptions);
        }
        InputStream e2 = a.mo717e2();
        MarkableInputStream markableInputStream = e2;
        if (requiresInSampleSize) {
            MarkableInputStream markableInputStream2 = new MarkableInputStream(e2);
            markableInputStream2.allowMarksToExpire(false);
            long savePosition = markableInputStream2.savePosition(1024);
            BitmapFactory.decodeStream(markableInputStream2, null, createBitmapOptions);
            RequestHandler.calculateInSampleSize(request.targetWidth, request.targetHeight, createBitmapOptions, request);
            markableInputStream2.reset(savePosition);
            markableInputStream2.allowMarksToExpire(true);
            markableInputStream = markableInputStream2;
        }
        Bitmap decodeStream = BitmapFactory.decodeStream(markableInputStream, null, createBitmapOptions);
        if (decodeStream != null) {
            return decodeStream;
        }
        throw new IOException("Failed to decode stream.");
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

    public static int getExifRotation(int i) {
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

    public static int getExifTranslation(int i) {
        return (i == 2 || i == 7 || i == 4 || i == 5) ? -1 : 1;
    }

    public static boolean shouldResize(boolean z, int i, int i2, int i3, int i4) {
        return !z || (i3 != 0 && i > i3) || (i4 != 0 && i2 > i4);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0329, code lost:
        if (r0 == 270) goto L_0x032c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x050c, code lost:
        if (r40 != 0) goto L_0x050f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x051f, code lost:
        if (r40 != r0) goto L_0x0522;
     */
    /* JADX WARN: Removed duplicated region for block: B:98:0x05af  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap transformResult(com.squareup.picasso.Request r9, android.graphics.Bitmap r10, int r11) {
        /*
            Method dump skipped, instructions count: 1466
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.picasso.BitmapHunter.transformResult(com.squareup.picasso.Request, android.graphics.Bitmap, int):android.graphics.Bitmap");
    }

    public static void updateThreadName(Request request) {
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
            if (z) {
                List<Action> list = this.actions;
                if (list == null || list.isEmpty()) {
                    Utils.log(Utils.OWNER_HUNTER, Utils.VERB_JOINED, request.logId(), "to empty hunter");
                } else {
                    Utils.log(Utils.OWNER_HUNTER, Utils.VERB_JOINED, request.logId(), Utils.getLogIdsForHunter(this, "to "));
                }
            }
        } else {
            if (this.actions == null) {
                this.actions = new ArrayList(3);
            }
            this.actions.add(action);
            if (z) {
                Utils.log(Utils.OWNER_HUNTER, Utils.VERB_JOINED, request.logId(), Utils.getLogIdsForHunter(this, "to "));
            }
            Picasso.Priority priority = action.getPriority();
            if (priority.ordinal() > this.priority.ordinal()) {
                this.priority = priority;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001e, code lost:
        if (r0.isEmpty() != false) goto L_0x0021;
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
            if (r0 != 0) goto L_0x003a
            r0 = r3
            java.util.List<com.squareup.picasso.Action> r0 = r0.actions
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0021
            r0 = r5
            r6 = r0
            r0 = r4
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x003a
        L_0x0021:
            r0 = r3
            java.util.concurrent.Future<?> r0 = r0.future
            r4 = r0
            r0 = r5
            r6 = r0
            r0 = r4
            if (r0 == 0) goto L_0x003a
            r0 = r5
            r6 = r0
            r0 = r4
            r1 = 0
            boolean r0 = r0.cancel(r1)
            if (r0 == 0) goto L_0x003a
            r0 = 1
            r6 = r0
        L_0x003a:
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
            Utils.log(Utils.OWNER_HUNTER, Utils.VERB_REMOVED, action.request.logId(), Utils.getLogIdsForHunter(this, "from "));
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
        if (r5.exifOrientation != 0) goto L_0x00f5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x010d, code lost:
        if (r5.exifOrientation != 0) goto L_0x0110;
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
                            Utils.log(Utils.OWNER_HUNTER, Utils.VERB_EXECUTING, Utils.getLogIdsForHunter(this));
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
            Thread.currentThread().setName(Utils.THREAD_IDLE_NAME);
        } catch (Throwable th) {
            Thread.currentThread().setName(Utils.THREAD_IDLE_NAME);
            throw th;
        }
    }

    public boolean shouldRetry(boolean z, NetworkInfo networkInfo) {
        if (!(this.retryCount > 0)) {
            return false;
        }
        this.retryCount--;
        return this.requestHandler.shouldRetry(z, networkInfo);
    }

    public boolean supportsReplay() {
        return this.requestHandler.supportsReplay();
    }
}
