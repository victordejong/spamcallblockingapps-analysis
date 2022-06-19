package com.squareup.picasso;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.widget.ImageView;
import android.widget.RemoteViews;
import com.squareup.picasso.Action;
import com.squareup.picasso.RemoteViewsAction;
import java.io.File;
import java.lang.ref.ReferenceQueue;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
/* loaded from: classes4-dex2jar.jar:com/squareup/picasso/Picasso.class */
public class Picasso {
    static final String TAG = "Picasso";
    final Cache cache;
    private final CleanupThread cleanupThread;
    final Context context;
    final Bitmap.Config defaultBitmapConfig;
    final Dispatcher dispatcher;
    boolean indicatorsEnabled;
    private final Listener listener;
    volatile boolean loggingEnabled;
    final ReferenceQueue<Object> referenceQueue;
    private final List<RequestHandler> requestHandlers;
    private final RequestTransformer requestTransformer;
    boolean shutdown;
    final Stats stats;
    final Map<Object, Action> targetToAction;
    final Map<ImageView, DeferredRequestCreator> targetToDeferredRequestCreator;
    static final Handler HANDLER = new Handler(Looper.getMainLooper()) { // from class: com.squareup.picasso.Picasso.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int i = message.what;
            if (i == 3) {
                Action action = (Action) message.obj;
                if (action.getPicasso().loggingEnabled) {
                    Utils.log("Main", "canceled", action.request.logId(), "target got garbage collected");
                }
                action.picasso.cancelExistingRequest(action.getTarget());
                return;
            }
            if (i == 8) {
                List list = (List) message.obj;
                int size = list.size();
                for (int i2 = 0; i2 < size; i2++) {
                    BitmapHunter bitmapHunter = (BitmapHunter) list.get(i2);
                    bitmapHunter.picasso.complete(bitmapHunter);
                }
            } else if (i != 13) {
                throw new AssertionError("Unknown handler message received: " + message.what);
            } else {
                List list2 = (List) message.obj;
                int size2 = list2.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    Action action2 = (Action) list2.get(i3);
                    action2.picasso.resumeAction(action2);
                }
            }
        }
    };
    static volatile Picasso singleton = null;

    /* loaded from: classes4-dex2jar.jar:com/squareup/picasso/Picasso$Builder.class */
    public static class Builder {
        private Cache cache;
        private final Context context;
        private Bitmap.Config defaultBitmapConfig;
        private Downloader downloader;
        private boolean indicatorsEnabled;
        private Listener listener;
        private boolean loggingEnabled;
        private List<RequestHandler> requestHandlers;
        private ExecutorService service;
        private RequestTransformer transformer;

        public Builder(Context context) {
            if (context != null) {
                this.context = context.getApplicationContext();
                return;
            }
            throw new IllegalArgumentException("Context must not be null.");
        }

        public Builder addRequestHandler(RequestHandler requestHandler) {
            if (requestHandler != null) {
                if (this.requestHandlers == null) {
                    this.requestHandlers = new ArrayList();
                }
                if (this.requestHandlers.contains(requestHandler)) {
                    throw new IllegalStateException("RequestHandler already registered.");
                }
                this.requestHandlers.add(requestHandler);
                return this;
            }
            throw new IllegalArgumentException("RequestHandler must not be null.");
        }

        public Picasso build() {
            Context context = this.context;
            if (this.downloader == null) {
                this.downloader = new OkHttp3Downloader(context);
            }
            if (this.cache == null) {
                this.cache = new LruCache(context);
            }
            if (this.service == null) {
                this.service = new PicassoExecutorService();
            }
            if (this.transformer == null) {
                this.transformer = RequestTransformer.IDENTITY;
            }
            Stats stats = new Stats(this.cache);
            return new Picasso(context, new Dispatcher(context, this.service, Picasso.HANDLER, this.downloader, this.cache, stats), this.cache, this.listener, this.transformer, this.requestHandlers, stats, this.defaultBitmapConfig, this.indicatorsEnabled, this.loggingEnabled);
        }

        public Builder defaultBitmapConfig(Bitmap.Config config) {
            if (config != null) {
                this.defaultBitmapConfig = config;
                return this;
            }
            throw new IllegalArgumentException("Bitmap config must not be null.");
        }

        public Builder downloader(Downloader downloader) {
            if (downloader != null) {
                if (this.downloader != null) {
                    throw new IllegalStateException("Downloader already set.");
                }
                this.downloader = downloader;
                return this;
            }
            throw new IllegalArgumentException("Downloader must not be null.");
        }

        public Builder executor(ExecutorService executorService) {
            if (executorService != null) {
                if (this.service != null) {
                    throw new IllegalStateException("Executor service already set.");
                }
                this.service = executorService;
                return this;
            }
            throw new IllegalArgumentException("Executor service must not be null.");
        }

        public Builder indicatorsEnabled(boolean z) {
            this.indicatorsEnabled = z;
            return this;
        }

        public Builder listener(Listener listener) {
            if (listener != null) {
                if (this.listener != null) {
                    throw new IllegalStateException("Listener already set.");
                }
                this.listener = listener;
                return this;
            }
            throw new IllegalArgumentException("Listener must not be null.");
        }

        public Builder loggingEnabled(boolean z) {
            this.loggingEnabled = z;
            return this;
        }

        public Builder memoryCache(Cache cache) {
            if (cache != null) {
                if (this.cache != null) {
                    throw new IllegalStateException("Memory cache already set.");
                }
                this.cache = cache;
                return this;
            }
            throw new IllegalArgumentException("Memory cache must not be null.");
        }

        public Builder requestTransformer(RequestTransformer requestTransformer) {
            if (requestTransformer != null) {
                if (this.transformer != null) {
                    throw new IllegalStateException("Transformer already set.");
                }
                this.transformer = requestTransformer;
                return this;
            }
            throw new IllegalArgumentException("Transformer must not be null.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/squareup/picasso/Picasso$CleanupThread.class */
    public static class CleanupThread extends Thread {
        private final Handler handler;
        private final ReferenceQueue<Object> referenceQueue;

        CleanupThread(ReferenceQueue<Object> referenceQueue, Handler handler) {
            this.referenceQueue = referenceQueue;
            this.handler = handler;
            setDaemon(true);
            setName("Picasso-refQueue");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            while (true) {
                try {
                    Action.RequestWeakReference requestWeakReference = (Action.RequestWeakReference) this.referenceQueue.remove(1000L);
                    Message obtainMessage = this.handler.obtainMessage();
                    if (requestWeakReference != null) {
                        obtainMessage.what = 3;
                        obtainMessage.obj = requestWeakReference.action;
                        this.handler.sendMessage(obtainMessage);
                    } else {
                        obtainMessage.recycle();
                    }
                } catch (InterruptedException e) {
                    return;
                } catch (Exception e2) {
                    this.handler.post(new Runnable() { // from class: com.squareup.picasso.Picasso.CleanupThread.1
                        @Override // java.lang.Runnable
                        public void run() {
                            throw new RuntimeException(e2);
                        }
                    });
                    return;
                }
            }
        }

        void shutdown() {
            interrupt();
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/squareup/picasso/Picasso$Listener.class */
    public interface Listener {
        void onImageLoadFailed(Picasso picasso, Uri uri, Exception exc);
    }

    /* loaded from: classes4-dex2jar.jar:com/squareup/picasso/Picasso$LoadedFrom.class */
    public enum LoadedFrom {
        MEMORY(-16711936),
        DISK(-16776961),
        NETWORK(-65536);
        
        final int debugColor;

        LoadedFrom(int i) {
            this.debugColor = i;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/squareup/picasso/Picasso$Priority.class */
    public enum Priority {
        LOW,
        NORMAL,
        HIGH
    }

    /* loaded from: classes4-dex2jar.jar:com/squareup/picasso/Picasso$RequestTransformer.class */
    public interface RequestTransformer {
        public static final RequestTransformer IDENTITY = new RequestTransformer() { // from class: com.squareup.picasso.Picasso.RequestTransformer.1
            @Override // com.squareup.picasso.Picasso.RequestTransformer
            public final Request transformRequest(Request request) {
                return request;
            }
        };

        Request transformRequest(Request request);
    }

    Picasso(Context context, Dispatcher dispatcher, Cache cache, Listener listener, RequestTransformer requestTransformer, List<RequestHandler> list, Stats stats, Bitmap.Config config, boolean z, boolean z2) {
        this.context = context;
        this.dispatcher = dispatcher;
        this.cache = cache;
        this.listener = listener;
        this.requestTransformer = requestTransformer;
        this.defaultBitmapConfig = config;
        ArrayList arrayList = new ArrayList((list != null ? list.size() : 0) + 7);
        arrayList.add(new ResourceRequestHandler(context));
        if (list != null) {
            arrayList.addAll(list);
        }
        arrayList.add(new ContactsPhotoRequestHandler(context));
        arrayList.add(new MediaStoreRequestHandler(context));
        arrayList.add(new ContentStreamRequestHandler(context));
        arrayList.add(new AssetRequestHandler(context));
        arrayList.add(new FileRequestHandler(context));
        arrayList.add(new NetworkRequestHandler(dispatcher.downloader, stats));
        this.requestHandlers = Collections.unmodifiableList(arrayList);
        this.stats = stats;
        this.targetToAction = new WeakHashMap();
        this.targetToDeferredRequestCreator = new WeakHashMap();
        this.indicatorsEnabled = z;
        this.loggingEnabled = z2;
        ReferenceQueue<Object> referenceQueue = new ReferenceQueue<>();
        this.referenceQueue = referenceQueue;
        CleanupThread cleanupThread = new CleanupThread(referenceQueue, HANDLER);
        this.cleanupThread = cleanupThread;
        cleanupThread.start();
    }

    private void deliverAction(Bitmap bitmap, LoadedFrom loadedFrom, Action action, Exception exc) {
        if (action.isCancelled()) {
            return;
        }
        if (!action.willReplay()) {
            this.targetToAction.remove(action.getTarget());
        }
        if (bitmap == null) {
            action.error(exc);
            if (!this.loggingEnabled) {
                return;
            }
            Utils.log("Main", "errored", action.request.logId(), exc.getMessage());
        } else if (loadedFrom == null) {
            throw new AssertionError("LoadedFrom cannot be null.");
        } else {
            action.complete(bitmap, loadedFrom);
            if (!this.loggingEnabled) {
                return;
            }
            Utils.log("Main", "completed", action.request.logId(), "from ".concat(String.valueOf(loadedFrom)));
        }
    }

    public static Picasso get() {
        if (singleton == null) {
            synchronized (Picasso.class) {
                try {
                    if (singleton == null) {
                        if (PicassoProvider.context == null) {
                            throw new IllegalStateException("context == null");
                        }
                        singleton = new Builder(PicassoProvider.context).build();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return singleton;
    }

    public static void setSingletonInstance(Picasso picasso) {
        if (picasso != null) {
            synchronized (Picasso.class) {
                try {
                    if (singleton != null) {
                        throw new IllegalStateException("Singleton instance already exists.");
                    }
                    singleton = picasso;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return;
        }
        throw new IllegalArgumentException("Picasso must not be null.");
    }

    public boolean areIndicatorsEnabled() {
        return this.indicatorsEnabled;
    }

    void cancelExistingRequest(Object obj) {
        Utils.checkMain();
        Action remove = this.targetToAction.remove(obj);
        if (remove != null) {
            remove.cancel();
            this.dispatcher.dispatchCancel(remove);
        }
        if (obj instanceof ImageView) {
            DeferredRequestCreator remove2 = this.targetToDeferredRequestCreator.remove((ImageView) obj);
            if (remove2 == null) {
                return;
            }
            remove2.cancel();
        }
    }

    public void cancelRequest(ImageView imageView) {
        if (imageView != null) {
            cancelExistingRequest(imageView);
            return;
        }
        throw new IllegalArgumentException("view cannot be null.");
    }

    public void cancelRequest(RemoteViews remoteViews, int i) {
        if (remoteViews != null) {
            cancelExistingRequest(new RemoteViewsAction.RemoteViewsTarget(remoteViews, i));
            return;
        }
        throw new IllegalArgumentException("remoteViews cannot be null.");
    }

    public void cancelRequest(Target target) {
        if (target != null) {
            cancelExistingRequest(target);
            return;
        }
        throw new IllegalArgumentException("target cannot be null.");
    }

    public void cancelTag(Object obj) {
        Utils.checkMain();
        if (obj != null) {
            ArrayList arrayList = new ArrayList(this.targetToAction.values());
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                Action action = (Action) arrayList.get(i);
                if (obj.equals(action.getTag())) {
                    cancelExistingRequest(action.getTarget());
                }
            }
            ArrayList arrayList2 = new ArrayList(this.targetToDeferredRequestCreator.values());
            int size2 = arrayList2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                DeferredRequestCreator deferredRequestCreator = (DeferredRequestCreator) arrayList2.get(i2);
                if (obj.equals(deferredRequestCreator.getTag())) {
                    deferredRequestCreator.cancel();
                }
            }
            return;
        }
        throw new IllegalArgumentException("Cannot cancel requests with null tag.");
    }

    void complete(BitmapHunter bitmapHunter) {
        Action action = bitmapHunter.getAction();
        List<Action> actions = bitmapHunter.getActions();
        boolean z = actions != null && !actions.isEmpty();
        boolean z2 = true;
        if (action == null) {
            z2 = z;
        }
        if (!z2) {
            return;
        }
        Uri uri = bitmapHunter.getData().uri;
        Exception exception = bitmapHunter.getException();
        Bitmap result = bitmapHunter.getResult();
        LoadedFrom loadedFrom = bitmapHunter.getLoadedFrom();
        if (action != null) {
            deliverAction(result, loadedFrom, action, exception);
        }
        if (z) {
            int size = actions.size();
            for (int i = 0; i < size; i++) {
                deliverAction(result, loadedFrom, actions.get(i), exception);
            }
        }
        Listener listener = this.listener;
        if (listener == null || exception == null) {
            return;
        }
        listener.onImageLoadFailed(this, uri, exception);
    }

    public void defer(ImageView imageView, DeferredRequestCreator deferredRequestCreator) {
        if (this.targetToDeferredRequestCreator.containsKey(imageView)) {
            cancelExistingRequest(imageView);
        }
        this.targetToDeferredRequestCreator.put(imageView, deferredRequestCreator);
    }

    public void enqueueAndSubmit(Action action) {
        Object target = action.getTarget();
        if (target != null && this.targetToAction.get(target) != action) {
            cancelExistingRequest(target);
            this.targetToAction.put(target, action);
        }
        submit(action);
    }

    public List<RequestHandler> getRequestHandlers() {
        return this.requestHandlers;
    }

    public StatsSnapshot getSnapshot() {
        return this.stats.createSnapshot();
    }

    public void invalidate(Uri uri) {
        if (uri != null) {
            this.cache.clearKeyUri(uri.toString());
        }
    }

    public void invalidate(File file) {
        if (file != null) {
            invalidate(Uri.fromFile(file));
            return;
        }
        throw new IllegalArgumentException("file == null");
    }

    public void invalidate(String str) {
        if (str != null) {
            invalidate(Uri.parse(str));
        }
    }

    public boolean isLoggingEnabled() {
        return this.loggingEnabled;
    }

    public RequestCreator load(int i) {
        if (i != 0) {
            return new RequestCreator(this, null, i);
        }
        throw new IllegalArgumentException("Resource ID must not be zero.");
    }

    public RequestCreator load(Uri uri) {
        return new RequestCreator(this, uri, 0);
    }

    public RequestCreator load(File file) {
        return file == null ? new RequestCreator(this, null, 0) : load(Uri.fromFile(file));
    }

    public RequestCreator load(String str) {
        if (str == null) {
            return new RequestCreator(this, null, 0);
        }
        if (str.trim().length() == 0) {
            throw new IllegalArgumentException("Path must not be empty.");
        }
        return load(Uri.parse(str));
    }

    public void pauseTag(Object obj) {
        if (obj != null) {
            this.dispatcher.dispatchPauseTag(obj);
            return;
        }
        throw new IllegalArgumentException("tag == null");
    }

    public Bitmap quickMemoryCacheCheck(String str) {
        Bitmap bitmap = this.cache.get(str);
        if (bitmap != null) {
            this.stats.dispatchCacheHit();
        } else {
            this.stats.dispatchCacheMiss();
        }
        return bitmap;
    }

    void resumeAction(Action action) {
        Bitmap quickMemoryCacheCheck = MemoryPolicy.shouldReadFromMemoryCache(action.memoryPolicy) ? quickMemoryCacheCheck(action.getKey()) : null;
        if (quickMemoryCacheCheck == null) {
            enqueueAndSubmit(action);
            if (!this.loggingEnabled) {
                return;
            }
            Utils.log("Main", "resumed", action.request.logId());
            return;
        }
        deliverAction(quickMemoryCacheCheck, LoadedFrom.MEMORY, action, null);
        if (!this.loggingEnabled) {
            return;
        }
        String logId = action.request.logId();
        Utils.log("Main", "completed", logId, "from " + LoadedFrom.MEMORY);
    }

    public void resumeTag(Object obj) {
        if (obj != null) {
            this.dispatcher.dispatchResumeTag(obj);
            return;
        }
        throw new IllegalArgumentException("tag == null");
    }

    public void setIndicatorsEnabled(boolean z) {
        this.indicatorsEnabled = z;
    }

    public void setLoggingEnabled(boolean z) {
        this.loggingEnabled = z;
    }

    public void shutdown() {
        if (this != singleton) {
            if (this.shutdown) {
                return;
            }
            this.cache.clear();
            this.cleanupThread.shutdown();
            this.stats.shutdown();
            this.dispatcher.shutdown();
            for (DeferredRequestCreator deferredRequestCreator : this.targetToDeferredRequestCreator.values()) {
                deferredRequestCreator.cancel();
            }
            this.targetToDeferredRequestCreator.clear();
            this.shutdown = true;
            return;
        }
        throw new UnsupportedOperationException("Default singleton instance cannot be shutdown.");
    }

    public void submit(Action action) {
        this.dispatcher.dispatchSubmit(action);
    }

    public Request transformRequest(Request request) {
        Request transformRequest = this.requestTransformer.transformRequest(request);
        if (transformRequest != null) {
            return transformRequest;
        }
        throw new IllegalStateException("Request transformer " + this.requestTransformer.getClass().getCanonicalName() + " returned null for " + request);
    }
}
