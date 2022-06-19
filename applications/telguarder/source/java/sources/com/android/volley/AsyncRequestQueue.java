package com.android.volley;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.android.volley.AsyncCache;
import com.android.volley.AsyncNetwork;
import com.android.volley.Cache;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/android/volley/AsyncRequestQueue.class */
public class AsyncRequestQueue extends RequestQueue {
    private static final int DEFAULT_BLOCKING_THREAD_POOL_SIZE = 4;
    private final AsyncCache mAsyncCache;
    private ExecutorService mBlockingExecutor;
    private final Object mCacheInitializationLock;
    private ExecutorFactory mExecutorFactory;
    private volatile boolean mIsCacheInitialized;
    private final AsyncNetwork mNetwork;
    private ExecutorService mNonBlockingExecutor;
    private ScheduledExecutorService mNonBlockingScheduledExecutor;
    private final List<Request<?>> mRequestsAwaitingCacheInitialization;
    private final WaitingRequestManager mWaitingRequestManager;

    /* loaded from: classes-dex2jar.jar:com/android/volley/AsyncRequestQueue$Builder.class */
    public static class Builder {
        private final AsyncNetwork mNetwork;
        private AsyncCache mAsyncCache = null;
        private Cache mCache = null;
        private ExecutorFactory mExecutorFactory = null;
        private ResponseDelivery mResponseDelivery = null;

        public Builder(AsyncNetwork asyncNetwork) {
            if (asyncNetwork != null) {
                this.mNetwork = asyncNetwork;
                return;
            }
            throw new IllegalArgumentException("Network cannot be null");
        }

        private ExecutorFactory getDefaultExecutorFactory() {
            return new ExecutorFactory() { // from class: com.android.volley.AsyncRequestQueue.Builder.1
                private ThreadPoolExecutor getNewThreadPoolExecutor(int i, String str, BlockingQueue<Runnable> blockingQueue) {
                    return new ThreadPoolExecutor(0, i, 60L, TimeUnit.SECONDS, blockingQueue, getThreadFactory(str));
                }

                private ThreadFactory getThreadFactory(final String str) {
                    return new ThreadFactory() { // from class: com.android.volley.AsyncRequestQueue.Builder.1.1
                        @Override // java.util.concurrent.ThreadFactory
                        public Thread newThread(Runnable runnable) {
                            Thread newThread = Executors.defaultThreadFactory().newThread(runnable);
                            newThread.setName("Volley-" + str);
                            return newThread;
                        }
                    };
                }

                @Override // com.android.volley.AsyncRequestQueue.ExecutorFactory
                public ExecutorService createBlockingExecutor(BlockingQueue<Runnable> blockingQueue) {
                    return getNewThreadPoolExecutor(4, "BlockingExecutor", blockingQueue);
                }

                @Override // com.android.volley.AsyncRequestQueue.ExecutorFactory
                public ExecutorService createNonBlockingExecutor(BlockingQueue<Runnable> blockingQueue) {
                    return getNewThreadPoolExecutor(1, "Non-BlockingExecutor", blockingQueue);
                }

                @Override // com.android.volley.AsyncRequestQueue.ExecutorFactory
                public ScheduledExecutorService createNonBlockingScheduledExecutor() {
                    return new ScheduledThreadPoolExecutor(0, getThreadFactory("ScheduledExecutor"));
                }
            };
        }

        public AsyncRequestQueue build() {
            Cache cache = this.mCache;
            if (cache == null && this.mAsyncCache == null) {
                throw new IllegalArgumentException("You must set one of the cache objects");
            }
            if (cache == null) {
                this.mCache = new ThrowingCache();
            }
            if (this.mResponseDelivery == null) {
                this.mResponseDelivery = new ExecutorDelivery(new Handler(Looper.getMainLooper()));
            }
            if (this.mExecutorFactory == null) {
                this.mExecutorFactory = getDefaultExecutorFactory();
            }
            return new AsyncRequestQueue(this.mCache, this.mNetwork, this.mAsyncCache, this.mResponseDelivery, this.mExecutorFactory);
        }

        public Builder setAsyncCache(AsyncCache asyncCache) {
            this.mAsyncCache = asyncCache;
            return this;
        }

        public Builder setCache(Cache cache) {
            this.mCache = cache;
            return this;
        }

        public Builder setExecutorFactory(ExecutorFactory executorFactory) {
            this.mExecutorFactory = executorFactory;
            return this;
        }

        public Builder setResponseDelivery(ResponseDelivery responseDelivery) {
            this.mResponseDelivery = responseDelivery;
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/volley/AsyncRequestQueue$CacheParseTask.class */
    public class CacheParseTask<T> extends RequestTask<T> {
        Cache.Entry entry;
        long startTimeMillis;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        CacheParseTask(Request<T> request, Cache.Entry entry, long j) {
            super(request);
            AsyncRequestQueue.this = r5;
            this.entry = entry;
            this.startTimeMillis = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mRequest.addMarker("cache-hit");
            Response<T> parseNetworkResponse = this.mRequest.parseNetworkResponse(new NetworkResponse(200, this.entry.data, false, 0L, this.entry.allResponseHeaders));
            this.mRequest.addMarker("cache-hit-parsed");
            if (!this.entry.refreshNeeded(this.startTimeMillis)) {
                AsyncRequestQueue.this.getResponseDelivery().postResponse(this.mRequest, parseNetworkResponse);
                return;
            }
            this.mRequest.addMarker("cache-hit-refresh-needed");
            this.mRequest.setCacheEntry(this.entry);
            parseNetworkResponse.intermediate = true;
            if (!AsyncRequestQueue.this.mWaitingRequestManager.maybeAddToWaitingRequests(this.mRequest)) {
                AsyncRequestQueue.this.getResponseDelivery().postResponse(this.mRequest, parseNetworkResponse, new Runnable() { // from class: com.android.volley.AsyncRequestQueue.CacheParseTask.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AsyncRequestQueue.this.sendRequestOverNetwork(CacheParseTask.this.mRequest);
                    }
                });
            } else {
                AsyncRequestQueue.this.getResponseDelivery().postResponse(this.mRequest, parseNetworkResponse);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/volley/AsyncRequestQueue$CachePutTask.class */
    public class CachePutTask<T> extends RequestTask<T> {
        Response<?> response;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        CachePutTask(Request<T> request, Response<?> response) {
            super(request);
            AsyncRequestQueue.this = r4;
            this.response = response;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AsyncRequestQueue.this.mAsyncCache != null) {
                AsyncRequestQueue.this.mAsyncCache.put(this.mRequest.getCacheKey(), this.response.cacheEntry, new AsyncCache.OnWriteCompleteCallback() { // from class: com.android.volley.AsyncRequestQueue.CachePutTask.1
                    @Override // com.android.volley.AsyncCache.OnWriteCompleteCallback
                    public void onWriteComplete() {
                        AsyncRequestQueue.this.finishRequest(CachePutTask.this.mRequest, CachePutTask.this.response, true);
                    }
                });
                return;
            }
            AsyncRequestQueue.this.getCache().put(this.mRequest.getCacheKey(), this.response.cacheEntry);
            AsyncRequestQueue.this.finishRequest(this.mRequest, this.response, true);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/volley/AsyncRequestQueue$CacheTask.class */
    public class CacheTask<T> extends RequestTask<T> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        CacheTask(Request<T> request) {
            super(request);
            AsyncRequestQueue.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mRequest.isCanceled()) {
                this.mRequest.finish("cache-discard-canceled");
                return;
            }
            this.mRequest.addMarker("cache-queue-take");
            if (AsyncRequestQueue.this.mAsyncCache != null) {
                AsyncRequestQueue.this.mAsyncCache.get(this.mRequest.getCacheKey(), new AsyncCache.OnGetCompleteCallback() { // from class: com.android.volley.AsyncRequestQueue.CacheTask.1
                    @Override // com.android.volley.AsyncCache.OnGetCompleteCallback
                    public void onGetComplete(Cache.Entry entry) {
                        AsyncRequestQueue.this.handleEntry(entry, CacheTask.this.mRequest);
                    }
                });
                return;
            }
            AsyncRequestQueue.this.handleEntry(AsyncRequestQueue.this.getCache().get(this.mRequest.getCacheKey()), this.mRequest);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/volley/AsyncRequestQueue$ExecutorFactory.class */
    public static abstract class ExecutorFactory {
        public abstract ExecutorService createBlockingExecutor(BlockingQueue<Runnable> blockingQueue);

        public abstract ExecutorService createNonBlockingExecutor(BlockingQueue<Runnable> blockingQueue);

        public abstract ScheduledExecutorService createNonBlockingScheduledExecutor();
    }

    /* loaded from: classes-dex2jar.jar:com/android/volley/AsyncRequestQueue$NetworkParseTask.class */
    private class NetworkParseTask<T> extends RequestTask<T> {
        NetworkResponse networkResponse;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        NetworkParseTask(Request<T> request, NetworkResponse networkResponse) {
            super(request);
            AsyncRequestQueue.this = r4;
            this.networkResponse = networkResponse;
        }

        @Override // java.lang.Runnable
        public void run() {
            Response<T> parseNetworkResponse = this.mRequest.parseNetworkResponse(this.networkResponse);
            this.mRequest.addMarker("network-parse-complete");
            if (!this.mRequest.shouldCache() || parseNetworkResponse.cacheEntry == null) {
                AsyncRequestQueue.this.finishRequest(this.mRequest, parseNetworkResponse, false);
            } else if (AsyncRequestQueue.this.mAsyncCache != null) {
                AsyncRequestQueue.this.mNonBlockingExecutor.execute(new CachePutTask(this.mRequest, parseNetworkResponse));
            } else {
                AsyncRequestQueue.this.mBlockingExecutor.execute(new CachePutTask(this.mRequest, parseNetworkResponse));
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/volley/AsyncRequestQueue$NetworkTask.class */
    public class NetworkTask<T> extends RequestTask<T> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        NetworkTask(Request<T> request) {
            super(request);
            AsyncRequestQueue.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mRequest.isCanceled()) {
                this.mRequest.finish("network-discard-cancelled");
                this.mRequest.notifyListenerResponseNotUsable();
                return;
            }
            final long elapsedRealtime = SystemClock.elapsedRealtime();
            this.mRequest.addMarker("network-queue-take");
            AsyncRequestQueue.this.mNetwork.performRequest(this.mRequest, new AsyncNetwork.OnRequestComplete() { // from class: com.android.volley.AsyncRequestQueue.NetworkTask.1
                @Override // com.android.volley.AsyncNetwork.OnRequestComplete
                public void onError(VolleyError volleyError) {
                    volleyError.setNetworkTimeMs(SystemClock.elapsedRealtime() - elapsedRealtime);
                    AsyncRequestQueue.this.mBlockingExecutor.execute(new ParseErrorTask(NetworkTask.this.mRequest, volleyError));
                }

                @Override // com.android.volley.AsyncNetwork.OnRequestComplete
                public void onSuccess(NetworkResponse networkResponse) {
                    NetworkTask.this.mRequest.addMarker("network-http-complete");
                    if (!networkResponse.notModified || !NetworkTask.this.mRequest.hasHadResponseDelivered()) {
                        AsyncRequestQueue.this.mBlockingExecutor.execute(new NetworkParseTask(NetworkTask.this.mRequest, networkResponse));
                        return;
                    }
                    NetworkTask.this.mRequest.finish("not-modified");
                    NetworkTask.this.mRequest.notifyListenerResponseNotUsable();
                }
            });
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/volley/AsyncRequestQueue$ParseErrorTask.class */
    private class ParseErrorTask<T> extends RequestTask<T> {
        VolleyError volleyError;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        ParseErrorTask(Request<T> request, VolleyError volleyError) {
            super(request);
            AsyncRequestQueue.this = r4;
            this.volleyError = volleyError;
        }

        @Override // java.lang.Runnable
        public void run() {
            AsyncRequestQueue.this.getResponseDelivery().postError(this.mRequest, this.mRequest.parseNetworkError(this.volleyError));
            this.mRequest.notifyListenerResponseNotUsable();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/volley/AsyncRequestQueue$ThrowingCache.class */
    private static class ThrowingCache implements Cache {
        private ThrowingCache() {
        }

        @Override // com.android.volley.Cache
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // com.android.volley.Cache
        public Cache.Entry get(String str) {
            throw new UnsupportedOperationException();
        }

        @Override // com.android.volley.Cache
        public void initialize() {
            throw new UnsupportedOperationException();
        }

        @Override // com.android.volley.Cache
        public void invalidate(String str, boolean z) {
            throw new UnsupportedOperationException();
        }

        @Override // com.android.volley.Cache
        public void put(String str, Cache.Entry entry) {
            throw new UnsupportedOperationException();
        }

        @Override // com.android.volley.Cache
        public void remove(String str) {
            throw new UnsupportedOperationException();
        }
    }

    private AsyncRequestQueue(Cache cache, AsyncNetwork asyncNetwork, AsyncCache asyncCache, ResponseDelivery responseDelivery, ExecutorFactory executorFactory) {
        super(cache, asyncNetwork, 0, responseDelivery);
        this.mWaitingRequestManager = new WaitingRequestManager(this);
        this.mRequestsAwaitingCacheInitialization = new ArrayList();
        this.mIsCacheInitialized = false;
        this.mCacheInitializationLock = new Object[0];
        this.mAsyncCache = asyncCache;
        this.mNetwork = asyncNetwork;
        this.mExecutorFactory = executorFactory;
    }

    public void finishRequest(Request<?> request, Response<?> response, boolean z) {
        if (z) {
            request.addMarker("network-cache-written");
        }
        request.markDelivered();
        getResponseDelivery().postResponse(request, response);
        request.notifyListenerResponseReceived(response);
    }

    private static PriorityBlockingQueue<Runnable> getBlockingQueue() {
        return new PriorityBlockingQueue<>(11, new Comparator<Runnable>() { // from class: com.android.volley.AsyncRequestQueue.3
            public int compare(Runnable runnable, Runnable runnable2) {
                if (!(runnable instanceof RequestTask)) {
                    return runnable2 instanceof RequestTask ? -1 : 0;
                } else if (!(runnable2 instanceof RequestTask)) {
                    return 1;
                } else {
                    return ((RequestTask) runnable).compareTo((RequestTask) runnable2);
                }
            }
        });
    }

    public void handleEntry(Cache.Entry entry, Request<?> request) {
        if (entry == null) {
            request.addMarker("cache-miss");
            if (this.mWaitingRequestManager.maybeAddToWaitingRequests(request)) {
                return;
            }
            sendRequestOverNetwork(request);
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (!entry.isExpired(currentTimeMillis)) {
            this.mBlockingExecutor.execute(new CacheParseTask(request, entry, currentTimeMillis));
            return;
        }
        request.addMarker("cache-hit-expired");
        request.setCacheEntry(entry);
        if (this.mWaitingRequestManager.maybeAddToWaitingRequests(request)) {
            return;
        }
        sendRequestOverNetwork(request);
    }

    public void onCacheInitializationComplete() {
        ArrayList<Request> arrayList;
        synchronized (this.mCacheInitializationLock) {
            arrayList = new ArrayList(this.mRequestsAwaitingCacheInitialization);
            this.mRequestsAwaitingCacheInitialization.clear();
            this.mIsCacheInitialized = true;
        }
        for (Request request : arrayList) {
            beginRequest(request);
        }
    }

    @Override // com.android.volley.RequestQueue
    <T> void beginRequest(Request<T> request) {
        if (!this.mIsCacheInitialized) {
            synchronized (this.mCacheInitializationLock) {
                if (!this.mIsCacheInitialized) {
                    this.mRequestsAwaitingCacheInitialization.add(request);
                    return;
                }
            }
        }
        if (!request.shouldCache()) {
            sendRequestOverNetwork(request);
        } else if (this.mAsyncCache != null) {
            this.mNonBlockingExecutor.execute(new CacheTask(request));
        } else {
            this.mBlockingExecutor.execute(new CacheTask(request));
        }
    }

    @Override // com.android.volley.RequestQueue
    public <T> void sendRequestOverNetwork(Request<T> request) {
        this.mNonBlockingExecutor.execute(new NetworkTask(request));
    }

    @Override // com.android.volley.RequestQueue
    public void start() {
        stop();
        this.mNonBlockingExecutor = this.mExecutorFactory.createNonBlockingExecutor(getBlockingQueue());
        this.mBlockingExecutor = this.mExecutorFactory.createBlockingExecutor(getBlockingQueue());
        this.mNonBlockingScheduledExecutor = this.mExecutorFactory.createNonBlockingScheduledExecutor();
        this.mNetwork.setBlockingExecutor(this.mBlockingExecutor);
        this.mNetwork.setNonBlockingExecutor(this.mNonBlockingExecutor);
        this.mNetwork.setNonBlockingScheduledExecutor(this.mNonBlockingScheduledExecutor);
        if (this.mAsyncCache != null) {
            this.mNonBlockingExecutor.execute(new Runnable() { // from class: com.android.volley.AsyncRequestQueue.1
                @Override // java.lang.Runnable
                public void run() {
                    AsyncRequestQueue.this.mAsyncCache.initialize(new AsyncCache.OnWriteCompleteCallback() { // from class: com.android.volley.AsyncRequestQueue.1.1
                        @Override // com.android.volley.AsyncCache.OnWriteCompleteCallback
                        public void onWriteComplete() {
                            AsyncRequestQueue.this.onCacheInitializationComplete();
                        }
                    });
                }
            });
        } else {
            this.mBlockingExecutor.execute(new Runnable() { // from class: com.android.volley.AsyncRequestQueue.2
                @Override // java.lang.Runnable
                public void run() {
                    AsyncRequestQueue.this.getCache().initialize();
                    AsyncRequestQueue.this.mNonBlockingExecutor.execute(new Runnable() { // from class: com.android.volley.AsyncRequestQueue.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AsyncRequestQueue.this.onCacheInitializationComplete();
                        }
                    });
                }
            });
        }
    }

    @Override // com.android.volley.RequestQueue
    public void stop() {
        ExecutorService executorService = this.mNonBlockingExecutor;
        if (executorService != null) {
            executorService.shutdownNow();
            this.mNonBlockingExecutor = null;
        }
        ExecutorService executorService2 = this.mBlockingExecutor;
        if (executorService2 != null) {
            executorService2.shutdownNow();
            this.mBlockingExecutor = null;
        }
        ScheduledExecutorService scheduledExecutorService = this.mNonBlockingScheduledExecutor;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
            this.mNonBlockingScheduledExecutor = null;
        }
    }
}
