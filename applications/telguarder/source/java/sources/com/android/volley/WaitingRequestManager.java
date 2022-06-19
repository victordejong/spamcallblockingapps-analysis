package com.android.volley;

import com.android.volley.Request;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes-dex2jar.jar:com/android/volley/WaitingRequestManager.class */
public class WaitingRequestManager implements Request.NetworkRequestCompleteListener {
    private final CacheDispatcher mCacheDispatcher;
    private final BlockingQueue<Request<?>> mNetworkQueue;
    private final RequestQueue mRequestQueue;
    private final ResponseDelivery mResponseDelivery;
    private final Map<String, List<Request<?>>> mWaitingRequests;

    public WaitingRequestManager(CacheDispatcher cacheDispatcher, BlockingQueue<Request<?>> blockingQueue, ResponseDelivery responseDelivery) {
        this.mWaitingRequests = new HashMap();
        this.mRequestQueue = null;
        this.mResponseDelivery = responseDelivery;
        this.mCacheDispatcher = cacheDispatcher;
        this.mNetworkQueue = blockingQueue;
    }

    public WaitingRequestManager(RequestQueue requestQueue) {
        this.mWaitingRequests = new HashMap();
        this.mRequestQueue = requestQueue;
        this.mResponseDelivery = requestQueue.getResponseDelivery();
        this.mCacheDispatcher = null;
        this.mNetworkQueue = null;
    }

    public boolean maybeAddToWaitingRequests(Request<?> request) {
        synchronized (this) {
            String cacheKey = request.getCacheKey();
            if (!this.mWaitingRequests.containsKey(cacheKey)) {
                this.mWaitingRequests.put(cacheKey, null);
                request.setNetworkRequestCompleteListener(this);
                if (VolleyLog.DEBUG) {
                    VolleyLog.m1391d("new request, sending to network %s", cacheKey);
                }
                return false;
            }
            List<Request<?>> list = this.mWaitingRequests.get(cacheKey);
            List<Request<?>> list2 = list;
            if (list == null) {
                list2 = new ArrayList<>();
            }
            request.addMarker("waiting-for-response");
            list2.add(request);
            this.mWaitingRequests.put(cacheKey, list2);
            if (VolleyLog.DEBUG) {
                VolleyLog.m1391d("Request for cacheKey=%s is in flight, putting on hold.", cacheKey);
            }
            return true;
        }
    }

    @Override // com.android.volley.Request.NetworkRequestCompleteListener
    public void onNoUsableResponseReceived(Request<?> request) {
        BlockingQueue<Request<?>> blockingQueue;
        synchronized (this) {
            String cacheKey = request.getCacheKey();
            List<Request<?>> remove = this.mWaitingRequests.remove(cacheKey);
            if (remove != null && !remove.isEmpty()) {
                if (VolleyLog.DEBUG) {
                    VolleyLog.m1388v("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(remove.size()), cacheKey);
                }
                Request<?> remove2 = remove.remove(0);
                this.mWaitingRequests.put(cacheKey, remove);
                remove2.setNetworkRequestCompleteListener(this);
                RequestQueue requestQueue = this.mRequestQueue;
                if (requestQueue != null) {
                    requestQueue.sendRequestOverNetwork(remove2);
                } else if (this.mCacheDispatcher != null && (blockingQueue = this.mNetworkQueue) != null) {
                    try {
                        blockingQueue.put(remove2);
                    } catch (InterruptedException e) {
                        VolleyLog.m1390e("Couldn't add request to queue. %s", e.toString());
                        Thread.currentThread().interrupt();
                        this.mCacheDispatcher.quit();
                    }
                }
            }
        }
    }

    @Override // com.android.volley.Request.NetworkRequestCompleteListener
    public void onResponseReceived(Request<?> request, Response<?> response) {
        List<Request<?>> remove;
        if (response.cacheEntry == null || response.cacheEntry.isExpired()) {
            onNoUsableResponseReceived(request);
            return;
        }
        String cacheKey = request.getCacheKey();
        synchronized (this) {
            remove = this.mWaitingRequests.remove(cacheKey);
        }
        if (remove == null) {
            return;
        }
        if (VolleyLog.DEBUG) {
            VolleyLog.m1388v("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(remove.size()), cacheKey);
        }
        for (Request<?> request2 : remove) {
            this.mResponseDelivery.postResponse(request2, response);
        }
    }
}
