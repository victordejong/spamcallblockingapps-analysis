package com.android.volley;

import android.net.TrafficStats;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes-dex2jar.jar:com/android/volley/NetworkDispatcher.class */
public class NetworkDispatcher extends Thread {
    private final Cache mCache;
    private final ResponseDelivery mDelivery;
    private final Network mNetwork;
    private final BlockingQueue<Request<?>> mQueue;
    private volatile boolean mQuit = false;

    public NetworkDispatcher(BlockingQueue<Request<?>> blockingQueue, Network network, Cache cache, ResponseDelivery responseDelivery) {
        this.mQueue = blockingQueue;
        this.mNetwork = network;
        this.mCache = cache;
        this.mDelivery = responseDelivery;
    }

    private void addTrafficStatsTag(Request<?> request) {
        if (Build.VERSION.SDK_INT >= 14) {
            TrafficStats.setThreadStatsTag(request.getTrafficStatsTag());
        }
    }

    private void parseAndDeliverNetworkError(Request<?> request, VolleyError volleyError) {
        this.mDelivery.postError(request, request.parseNetworkError(volleyError));
    }

    private void processRequest() throws InterruptedException {
        processRequest(this.mQueue.take());
    }

    void processRequest(Request<?> request) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        request.sendEvent(3);
        try {
            try {
                request.addMarker("network-queue-take");
            } catch (VolleyError e) {
                e.setNetworkTimeMs(SystemClock.elapsedRealtime() - elapsedRealtime);
                parseAndDeliverNetworkError(request, e);
                request.notifyListenerResponseNotUsable();
            } catch (Exception e2) {
                VolleyLog.m1389e(e2, "Unhandled exception %s", e2.toString());
                VolleyError volleyError = new VolleyError(e2);
                volleyError.setNetworkTimeMs(SystemClock.elapsedRealtime() - elapsedRealtime);
                this.mDelivery.postError(request, volleyError);
                request.notifyListenerResponseNotUsable();
            }
            if (request.isCanceled()) {
                request.finish("network-discard-cancelled");
                request.notifyListenerResponseNotUsable();
                return;
            }
            addTrafficStatsTag(request);
            NetworkResponse performRequest = this.mNetwork.performRequest(request);
            request.addMarker("network-http-complete");
            if (performRequest.notModified && request.hasHadResponseDelivered()) {
                request.finish("not-modified");
                request.notifyListenerResponseNotUsable();
                return;
            }
            Response<?> parseNetworkResponse = request.parseNetworkResponse(performRequest);
            request.addMarker("network-parse-complete");
            if (request.shouldCache() && parseNetworkResponse.cacheEntry != null) {
                this.mCache.put(request.getCacheKey(), parseNetworkResponse.cacheEntry);
                request.addMarker("network-cache-written");
            }
            request.markDelivered();
            this.mDelivery.postResponse(request, parseNetworkResponse);
            request.notifyListenerResponseReceived(parseNetworkResponse);
        } finally {
            request.sendEvent(4);
        }
    }

    public void quit() {
        this.mQuit = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                processRequest();
            } catch (InterruptedException e) {
                if (this.mQuit) {
                    Thread.currentThread().interrupt();
                    return;
                }
                VolleyLog.m1390e("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
