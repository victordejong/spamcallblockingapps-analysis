package com.mopub.volley;

import android.annotation.TargetApi;
import android.net.TrafficStats;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/NetworkDispatcher.class */
public class NetworkDispatcher extends Thread {

    /* renamed from: a */
    public final BlockingQueue<Request<?>> f5463a;

    /* renamed from: b */
    public final Network f5464b;

    /* renamed from: c */
    public final Cache f5465c;

    /* renamed from: d */
    public final ResponseDelivery f5466d;

    /* renamed from: f */
    public volatile boolean f5467f = false;

    public NetworkDispatcher(BlockingQueue<Request<?>> blockingQueue, Network network, Cache cache, ResponseDelivery responseDelivery) {
        this.f5463a = blockingQueue;
        this.f5464b = network;
        this.f5465c = cache;
        this.f5466d = responseDelivery;
    }

    @TargetApi(14)
    /* renamed from: a */
    public final void m3179a(Request<?> request) {
        if (Build.VERSION.SDK_INT >= 14) {
            TrafficStats.setThreadStatsTag(request.getTrafficStatsTag());
        }
    }

    /* renamed from: b */
    public final void m3178b(Request<?> request, VolleyError volleyError) {
        request.m3163k(volleyError);
        this.f5466d.postError(request, volleyError);
    }

    /* renamed from: c */
    public final void m3177c() {
        m3176d(this.f5463a.take());
    }

    /* renamed from: d */
    public void m3176d(Request<?> request) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        request.m3162m(3);
        try {
            try {
                request.addMarker("network-queue-take");
            } catch (VolleyError e) {
                e.m3158a(SystemClock.elapsedRealtime() - elapsedRealtime);
                m3178b(request, e);
                request.m3165i();
            } catch (Exception e2) {
                VolleyLog.m3154e(e2, "Unhandled exception %s", e2.toString());
                VolleyError volleyError = new VolleyError(e2);
                volleyError.m3158a(SystemClock.elapsedRealtime() - elapsedRealtime);
                this.f5466d.postError(request, volleyError);
                request.m3165i();
            }
            if (request.isCanceled()) {
                request.m3170d("network-discard-cancelled");
                request.m3165i();
                return;
            }
            m3179a(request);
            NetworkResponse performRequest = this.f5464b.performRequest(request);
            request.addMarker("network-http-complete");
            if (performRequest.notModified && request.hasHadResponseDelivered()) {
                request.m3170d("not-modified");
                request.m3165i();
                return;
            }
            Response<?> mo3087l = request.mo3087l(performRequest);
            request.addMarker("network-parse-complete");
            if (request.shouldCache() && mo3087l.cacheEntry != null) {
                this.f5465c.put(request.getCacheKey(), mo3087l.cacheEntry);
                request.addMarker("network-cache-written");
            }
            request.markDelivered();
            this.f5466d.postResponse(request, mo3087l);
            request.m3164j(mo3087l);
        } finally {
            request.m3162m(4);
        }
    }

    public void quit() {
        this.f5467f = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                m3177c();
            } catch (InterruptedException e) {
                if (this.f5467f) {
                    Thread.currentThread().interrupt();
                    return;
                }
                VolleyLog.m3155e("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
