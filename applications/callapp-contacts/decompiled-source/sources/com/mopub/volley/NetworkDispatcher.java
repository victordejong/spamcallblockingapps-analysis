package com.mopub.volley;

import android.net.TrafficStats;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes4-dex2jar.jar:com/mopub/volley/NetworkDispatcher.class */
public class NetworkDispatcher extends Thread {

    /* renamed from: a  reason: collision with root package name */
    private final BlockingQueue<Request<?>> f34795a;

    /* renamed from: b  reason: collision with root package name */
    private final Network f34796b;

    /* renamed from: c  reason: collision with root package name */
    private final Cache f34797c;

    /* renamed from: d  reason: collision with root package name */
    private final ResponseDelivery f34798d;
    private volatile boolean e = false;

    public NetworkDispatcher(BlockingQueue<Request<?>> blockingQueue, Network network, Cache cache, ResponseDelivery responseDelivery) {
        this.f34795a = blockingQueue;
        this.f34796b = network;
        this.f34797c = cache;
        this.f34798d = responseDelivery;
    }

    public void quit() {
        this.e = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                Request<?> take = this.f34795a.take();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                take.sendEvent(3);
                try {
                    try {
                        take.addMarker("network-queue-take");
                        if (take.isCanceled()) {
                            take.finish("network-discard-cancelled");
                            take.notifyListenerResponseNotUsable();
                        } else {
                            if (Build.VERSION.SDK_INT >= 14) {
                                TrafficStats.setThreadStatsTag(take.getTrafficStatsTag());
                            }
                            NetworkResponse performRequest = this.f34796b.performRequest(take);
                            take.addMarker("network-http-complete");
                            if (!performRequest.notModified || !take.hasHadResponseDelivered()) {
                                Response<?> parseNetworkResponse = take.parseNetworkResponse(performRequest);
                                take.addMarker("network-parse-complete");
                                if (take.shouldCache() && parseNetworkResponse.cacheEntry != null) {
                                    this.f34797c.put(take.getCacheKey(), parseNetworkResponse.cacheEntry);
                                    take.addMarker("network-cache-written");
                                }
                                take.markDelivered();
                                this.f34798d.postResponse(take, parseNetworkResponse);
                                take.notifyListenerResponseReceived(parseNetworkResponse);
                            } else {
                                take.finish("not-modified");
                                take.notifyListenerResponseNotUsable();
                            }
                        }
                    } catch (Exception e) {
                        VolleyLog.e(e, "Unhandled exception %s", e.toString());
                        VolleyError volleyError = new VolleyError(e);
                        volleyError.f34808a = SystemClock.elapsedRealtime() - elapsedRealtime;
                        this.f34798d.postError(take, volleyError);
                        take.notifyListenerResponseNotUsable();
                    }
                } catch (VolleyError e2) {
                    e2.f34808a = SystemClock.elapsedRealtime() - elapsedRealtime;
                    this.f34798d.postError(take, take.parseNetworkError(e2));
                    take.notifyListenerResponseNotUsable();
                }
                take.sendEvent(4);
            } catch (InterruptedException e3) {
                if (this.e) {
                    Thread.currentThread().interrupt();
                    return;
                }
                VolleyLog.e("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
