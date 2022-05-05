package com.aotter.net.volley;

import android.annotation.TargetApi;
import android.net.TrafficStats;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes-dex2jar.jar:com/aotter/net/volley/NetworkDispatcher.class */
public class NetworkDispatcher extends Thread {
    public final Cache mCache;
    public final ResponseDelivery mDelivery;
    public final Network mNetwork;
    public final BlockingQueue<Request<?>> mQueue;
    public volatile boolean mQuit = false;

    public NetworkDispatcher(BlockingQueue<Request<?>> blockingQueue, Network network, Cache cache, ResponseDelivery responseDelivery) {
        this.mQueue = blockingQueue;
        this.mNetwork = network;
        this.mCache = cache;
        this.mDelivery = responseDelivery;
    }

    @TargetApi(14)
    private void addTrafficStatsTag(Request<?> request) {
        if (Build.VERSION.SDK_INT >= 14) {
            TrafficStats.setThreadStatsTag(request.getTrafficStatsTag());
        }
    }

    private void parseAndDeliverNetworkError(Request<?> request, VolleyError volleyError) {
        this.mDelivery.postError(request, request.parseNetworkError(volleyError));
    }

    public void quit() {
        this.mQuit = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Request<?> take;
        String str;
        Process.setThreadPriority(10);
        while (true) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            try {
                take = this.mQueue.take();
                try {
                    take.addMarker("network-queue-take");
                } catch (VolleyError e) {
                    e.setNetworkTimeMs(SystemClock.elapsedRealtime() - elapsedRealtime);
                    parseAndDeliverNetworkError(take, e);
                } catch (Exception e2) {
                    VolleyLog.m36307e(e2, "Unhandled exception %s", e2.toString());
                    VolleyError volleyError = new VolleyError(e2);
                    volleyError.setNetworkTimeMs(SystemClock.elapsedRealtime() - elapsedRealtime);
                    this.mDelivery.postError(take, volleyError);
                }
            } catch (InterruptedException e3) {
                if (this.mQuit) {
                    return;
                }
            }
            if (take.isCanceled()) {
                str = "network-discard-cancelled";
            } else {
                addTrafficStatsTag(take);
                NetworkResponse performRequest = this.mNetwork.performRequest(take);
                take.addMarker("network-http-complete");
                if (!performRequest.notModified || !take.hasHadResponseDelivered()) {
                    Response<?> parseNetworkResponse = take.parseNetworkResponse(performRequest);
                    take.addMarker("network-parse-complete");
                    if (take.shouldCache() && parseNetworkResponse.cacheEntry != null) {
                        this.mCache.put(take.getCacheKey(), parseNetworkResponse.cacheEntry);
                        take.addMarker("network-cache-written");
                    }
                    take.markDelivered();
                    this.mDelivery.postResponse(take, parseNetworkResponse);
                } else {
                    str = "not-modified";
                }
            }
            take.finish(str);
        }
    }
}
