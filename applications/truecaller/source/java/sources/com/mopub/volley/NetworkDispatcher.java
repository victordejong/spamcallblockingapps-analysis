package com.mopub.volley;

import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/NetworkDispatcher.class */
public class NetworkDispatcher extends Thread {

    /* renamed from: a */
    public final BlockingQueue<Request<?>> f9269a;

    /* renamed from: b */
    public final Network f9270b;

    /* renamed from: c */
    public final Cache f9271c;

    /* renamed from: d */
    public final ResponseDelivery f9272d;

    /* renamed from: e */
    public volatile boolean f9273e = false;

    public NetworkDispatcher(BlockingQueue<Request<?>> blockingQueue, Network network, Cache cache, ResponseDelivery responseDelivery) {
        this.f9269a = blockingQueue;
        this.f9270b = network;
        this.f9271c = cache;
        this.f9272d = responseDelivery;
    }

    /* renamed from: a */
    public final void m36169a() throws InterruptedException {
        Request<?> take = this.f9269a.take();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        take.m36162h(3);
        try {
            try {
                take.addMarker("network-queue-take");
                if (take.isCanceled()) {
                    take.m36167c("network-discard-cancelled");
                    take.m36165e();
                } else {
                    TrafficStats.setThreadStatsTag(take.getTrafficStatsTag());
                    NetworkResponse performRequest = this.f9270b.performRequest(take);
                    take.addMarker("network-http-complete");
                    if (!performRequest.notModified || !take.hasHadResponseDelivered()) {
                        Response<?> m36163g = take.m36163g(performRequest);
                        take.addMarker("network-parse-complete");
                        if (take.shouldCache() && m36163g.cacheEntry != null) {
                            this.f9271c.put(take.getCacheKey(), m36163g.cacheEntry);
                            take.addMarker("network-cache-written");
                        }
                        take.markDelivered();
                        this.f9272d.postResponse(take, m36163g);
                        take.m36164f(m36163g);
                    } else {
                        take.m36167c("not-modified");
                        take.m36165e();
                    }
                }
            } catch (VolleyError e) {
                e.f9305a = SystemClock.elapsedRealtime() - elapsedRealtime;
                this.f9272d.postError(take, e);
                take.m36165e();
            } catch (Exception e2) {
                VolleyLog.m36157e(e2, "Unhandled exception %s", e2.toString());
                VolleyError volleyError = new VolleyError(e2);
                volleyError.f9305a = SystemClock.elapsedRealtime() - elapsedRealtime;
                this.f9272d.postError(take, volleyError);
                take.m36165e();
            }
        } finally {
            take.m36162h(4);
        }
    }

    public void quit() {
        this.f9273e = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                m36169a();
            } catch (InterruptedException e) {
                if (this.f9273e) {
                    Thread.currentThread().interrupt();
                    return;
                }
                VolleyLog.m36158e("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
