package com.mopub.volley;

import android.net.TrafficStats;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes4-dex2jar.jar:com/mopub/volley/NetworkDispatcher.class */
public class NetworkDispatcher extends Thread {

    /* renamed from: a */
    private final BlockingQueue<Request<?>> f60368a;

    /* renamed from: b */
    private final Network f60369b;

    /* renamed from: c */
    private final Cache f60370c;

    /* renamed from: d */
    private final ResponseDelivery f60371d;

    /* renamed from: e */
    private volatile boolean f60372e = false;

    public NetworkDispatcher(BlockingQueue<Request<?>> blockingQueue, Network network, Cache cache, ResponseDelivery responseDelivery) {
        this.f60368a = blockingQueue;
        this.f60369b = network;
        this.f60370c = cache;
        this.f60371d = responseDelivery;
    }

    public void quit() {
        this.f60372e = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                Request<?> take = this.f60368a.take();
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
                            NetworkResponse performRequest = this.f60369b.performRequest(take);
                            take.addMarker("network-http-complete");
                            if (!performRequest.notModified || !take.hasHadResponseDelivered()) {
                                Response<?> parseNetworkResponse = take.parseNetworkResponse(performRequest);
                                take.addMarker("network-parse-complete");
                                if (take.shouldCache() && parseNetworkResponse.cacheEntry != null) {
                                    this.f60370c.put(take.getCacheKey(), parseNetworkResponse.cacheEntry);
                                    take.addMarker("network-cache-written");
                                }
                                take.markDelivered();
                                this.f60371d.postResponse(take, parseNetworkResponse);
                                take.notifyListenerResponseReceived(parseNetworkResponse);
                            } else {
                                take.finish("not-modified");
                                take.notifyListenerResponseNotUsable();
                            }
                        }
                    } catch (Exception e) {
                        VolleyLog.m6027e(e, "Unhandled exception %s", e.toString());
                        VolleyError volleyError = new VolleyError(e);
                        volleyError.f60389a = SystemClock.elapsedRealtime() - elapsedRealtime;
                        this.f60371d.postError(take, volleyError);
                        take.notifyListenerResponseNotUsable();
                    }
                } catch (VolleyError e2) {
                    e2.f60389a = SystemClock.elapsedRealtime() - elapsedRealtime;
                    this.f60371d.postError(take, take.parseNetworkError(e2));
                    take.notifyListenerResponseNotUsable();
                }
                take.sendEvent(4);
            } catch (InterruptedException e3) {
                if (this.f60372e) {
                    Thread.currentThread().interrupt();
                    return;
                }
                VolleyLog.m6028e("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
