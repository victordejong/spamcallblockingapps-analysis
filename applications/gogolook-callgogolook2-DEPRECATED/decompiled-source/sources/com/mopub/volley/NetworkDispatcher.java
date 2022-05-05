package com.mopub.volley;

import android.annotation.TargetApi;
import android.net.TrafficStats;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import androidx.annotation.VisibleForTesting;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/NetworkDispatcher.class */
public class NetworkDispatcher extends Thread {

    /* renamed from: a */
    public final BlockingQueue<Request<?>> f9489a;

    /* renamed from: b */
    public final Network f9490b;

    /* renamed from: c */
    public final Cache f9491c;

    /* renamed from: d */
    public final ResponseDelivery f9492d;

    /* renamed from: e */
    public volatile boolean f9493e = false;

    public NetworkDispatcher(BlockingQueue<Request<?>> blockingQueue, Network network, Cache cache, ResponseDelivery responseDelivery) {
        this.f9489a = blockingQueue;
        this.f9490b = network;
        this.f9491c = cache;
        this.f9492d = responseDelivery;
    }

    /* renamed from: a */
    public final void m29963a() throws InterruptedException {
        m29960b(this.f9489a.take());
    }

    @TargetApi(14)
    /* renamed from: a */
    public final void m29962a(Request<?> request) {
        if (Build.VERSION.SDK_INT >= 14) {
            TrafficStats.setThreadStatsTag(request.getTrafficStatsTag());
        }
    }

    /* renamed from: a */
    public final void m29961a(Request<?> request, VolleyError volleyError) {
        this.f9492d.postError(request, request.m29952a(volleyError));
    }

    @VisibleForTesting
    /* renamed from: b */
    public void m29960b(Request<?> request) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        request.m29956a(3);
        try {
            try {
                request.addMarker("network-queue-take");
            } catch (VolleyError e) {
                e.m29942a(SystemClock.elapsedRealtime() - elapsedRealtime);
                m29961a(request, e);
                request.m29945e();
            } catch (Exception e2) {
                VolleyLog.m29938e(e2, "Unhandled exception %s", e2.toString());
                VolleyError volleyError = new VolleyError(e2);
                volleyError.m29942a(SystemClock.elapsedRealtime() - elapsedRealtime);
                this.f9492d.postError(request, volleyError);
                request.m29945e();
            }
            if (request.isCanceled()) {
                request.m29951a("network-discard-cancelled");
                request.m29945e();
                return;
            }
            m29962a(request);
            NetworkResponse performRequest = this.f9490b.performRequest(request);
            request.addMarker("network-http-complete");
            if (!performRequest.notModified || !request.hasHadResponseDelivered()) {
                Response<?> a = request.mo29871a(performRequest);
                request.addMarker("network-parse-complete");
                if (request.shouldCache() && a.cacheEntry != null) {
                    this.f9491c.put(request.getCacheKey(), a.cacheEntry);
                    request.addMarker("network-cache-written");
                }
                request.markDelivered();
                this.f9492d.postResponse(request, a);
                request.m29953a(a);
                return;
            }
            request.m29951a("not-modified");
            request.m29945e();
        } finally {
            request.m29956a(4);
        }
    }

    public void quit() {
        this.f9493e = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                m29963a();
            } catch (InterruptedException e) {
                if (this.f9493e) {
                    Thread.currentThread().interrupt();
                    return;
                }
                VolleyLog.m29939e("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
