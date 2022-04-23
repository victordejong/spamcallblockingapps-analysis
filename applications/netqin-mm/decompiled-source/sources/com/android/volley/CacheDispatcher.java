package com.android.volley;

import android.os.Process;
import com.android.volley.Cache;
import com.android.volley.Request;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes-dex2jar.jar:com/android/volley/CacheDispatcher.class */
public class CacheDispatcher extends Thread {
    public static final boolean DEBUG = VolleyLog.DEBUG;
    public final Cache mCache;
    public final BlockingQueue<Request<?>> mCacheQueue;
    public final ResponseDelivery mDelivery;
    public final BlockingQueue<Request<?>> mNetworkQueue;
    public volatile boolean mQuit = false;
    public final WaitingRequestManager mWaitingRequestManager = new WaitingRequestManager(this);

    /* loaded from: classes-dex2jar.jar:com/android/volley/CacheDispatcher$WaitingRequestManager.class */
    public static class WaitingRequestManager implements Request.NetworkRequestCompleteListener {
        public final CacheDispatcher mCacheDispatcher;
        public final Map<String, List<Request<?>>> mWaitingRequests = new HashMap();

        public WaitingRequestManager(CacheDispatcher cacheDispatcher) {
            this.mCacheDispatcher = cacheDispatcher;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean maybeAddToWaitingRequests(Request<?> request) {
            synchronized (this) {
                String cacheKey = request.getCacheKey();
                if (this.mWaitingRequests.containsKey(cacheKey)) {
                    List<Request<?>> list = this.mWaitingRequests.get(cacheKey);
                    List<Request<?>> list2 = list;
                    if (list == null) {
                        list2 = new ArrayList<>();
                    }
                    request.addMarker("waiting-for-response");
                    list2.add(request);
                    this.mWaitingRequests.put(cacheKey, list2);
                    if (VolleyLog.DEBUG) {
                        VolleyLog.m19482d("Request for cacheKey=%s is in flight, putting on hold.", cacheKey);
                    }
                    return true;
                }
                this.mWaitingRequests.put(cacheKey, null);
                request.setNetworkRequestCompleteListener(this);
                if (VolleyLog.DEBUG) {
                    VolleyLog.m19482d("new request, sending to network %s", cacheKey);
                }
                return false;
            }
        }

        @Override // com.android.volley.Request.NetworkRequestCompleteListener
        public void onNoUsableResponseReceived(Request<?> request) {
            synchronized (this) {
                String cacheKey = request.getCacheKey();
                List<Request<?>> remove = this.mWaitingRequests.remove(cacheKey);
                if (remove != null && !remove.isEmpty()) {
                    if (VolleyLog.DEBUG) {
                        VolleyLog.m19479v("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(remove.size()), cacheKey);
                    }
                    Request<?> remove2 = remove.remove(0);
                    this.mWaitingRequests.put(cacheKey, remove);
                    remove2.setNetworkRequestCompleteListener(this);
                    try {
                        this.mCacheDispatcher.mNetworkQueue.put(remove2);
                    } catch (InterruptedException e) {
                        VolleyLog.m19481e("Couldn't add request to queue. %s", e.toString());
                        Thread.currentThread().interrupt();
                        this.mCacheDispatcher.quit();
                    }
                }
            }
        }

        @Override // com.android.volley.Request.NetworkRequestCompleteListener
        public void onResponseReceived(Request<?> request, Response<?> response) {
            List<Request<?>> remove;
            Cache.Entry entry = response.cacheEntry;
            if (entry == null || entry.isExpired()) {
                onNoUsableResponseReceived(request);
                return;
            }
            String cacheKey = request.getCacheKey();
            synchronized (this) {
                remove = this.mWaitingRequests.remove(cacheKey);
            }
            if (remove != null) {
                if (VolleyLog.DEBUG) {
                    VolleyLog.m19479v("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(remove.size()), cacheKey);
                }
                for (Request<?> request2 : remove) {
                    this.mCacheDispatcher.mDelivery.postResponse(request2, response);
                }
            }
        }
    }

    public CacheDispatcher(BlockingQueue<Request<?>> blockingQueue, BlockingQueue<Request<?>> blockingQueue2, Cache cache, ResponseDelivery responseDelivery) {
        this.mCacheQueue = blockingQueue;
        this.mNetworkQueue = blockingQueue2;
        this.mCache = cache;
        this.mDelivery = responseDelivery;
    }

    private void processRequest() throws InterruptedException {
        processRequest(this.mCacheQueue.take());
    }

    public void processRequest(final Request<?> request) throws InterruptedException {
        request.addMarker("cache-queue-take");
        if (request.isCanceled()) {
            request.finish("cache-discard-canceled");
            return;
        }
        Cache.Entry entry = this.mCache.get(request.getCacheKey());
        if (entry == null) {
            request.addMarker("cache-miss");
            if (!this.mWaitingRequestManager.maybeAddToWaitingRequests(request)) {
                this.mNetworkQueue.put(request);
            }
        } else if (entry.isExpired()) {
            request.addMarker("cache-hit-expired");
            request.setCacheEntry(entry);
            if (!this.mWaitingRequestManager.maybeAddToWaitingRequests(request)) {
                this.mNetworkQueue.put(request);
            }
        } else {
            request.addMarker("cache-hit");
            Response<?> parseNetworkResponse = request.parseNetworkResponse(new NetworkResponse(entry.data, entry.responseHeaders));
            request.addMarker("cache-hit-parsed");
            if (!entry.refreshNeeded()) {
                this.mDelivery.postResponse(request, parseNetworkResponse);
                return;
            }
            request.addMarker("cache-hit-refresh-needed");
            request.setCacheEntry(entry);
            parseNetworkResponse.intermediate = true;
            if (!this.mWaitingRequestManager.maybeAddToWaitingRequests(request)) {
                this.mDelivery.postResponse(request, parseNetworkResponse, new Runnable() { // from class: com.android.volley.CacheDispatcher.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            CacheDispatcher.this.mNetworkQueue.put(request);
                        } catch (InterruptedException e) {
                            Thread.currentThread().interrupt();
                        }
                    }
                });
            } else {
                this.mDelivery.postResponse(request, parseNetworkResponse);
            }
        }
    }

    public void quit() {
        this.mQuit = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        if (DEBUG) {
            VolleyLog.m19479v("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.mCache.initialize();
        while (true) {
            try {
                processRequest();
            } catch (InterruptedException e) {
                if (this.mQuit) {
                    Thread.currentThread().interrupt();
                    return;
                }
                VolleyLog.m19481e("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
