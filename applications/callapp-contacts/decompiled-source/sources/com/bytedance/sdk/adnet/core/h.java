package com.bytedance.sdk.adnet.core;

import android.net.TrafficStats;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import com.bytedance.sdk.adnet.err.VAdError;
import com.bytedance.sdk.adnet.face.a;
import com.bytedance.sdk.adnet.face.b;
import com.bytedance.sdk.adnet.face.c;
import java.util.concurrent.BlockingQueue;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/h.class */
public class h extends Thread {

    /* renamed from: a  reason: collision with root package name */
    private final BlockingQueue<Request<?>> f8318a;

    /* renamed from: b  reason: collision with root package name */
    private final b f8319b;

    /* renamed from: c  reason: collision with root package name */
    private final a f8320c;

    /* renamed from: d  reason: collision with root package name */
    private final c f8321d;
    private volatile boolean e = false;

    public h(BlockingQueue<Request<?>> blockingQueue, b bVar, a aVar, c cVar) {
        this.f8318a = blockingQueue;
        this.f8319b = bVar;
        this.f8320c = aVar;
        this.f8321d = cVar;
    }

    private void a(Request<?> request, VAdError vAdError) {
        this.f8321d.a(request, request.a(vAdError));
    }

    private void b() throws InterruptedException {
        a(this.f8318a.take());
    }

    private void b(Request<?> request) {
        if (Build.VERSION.SDK_INT >= 14) {
            TrafficStats.setThreadStatsTag(request.getTrafficStatsTag());
        }
    }

    public void a() {
        this.e = true;
        interrupt();
    }

    void a(Request<?> request) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        request.a(3);
        try {
            try {
                request.addMarker("network-queue-take");
                if (request.isCanceled()) {
                    request.a("network-discard-cancelled");
                    request.e();
                    request.a(4);
                    return;
                }
                b(request);
                i a2 = this.f8319b.a(request);
                request.setNetDuration(a2.f);
                request.addMarker("network-http-complete");
                if (!a2.e || !request.hasHadResponseDelivered()) {
                    m<?> a3 = request.a(a2);
                    request.setNetDuration(a2.f);
                    request.addMarker("network-parse-complete");
                    if (request.shouldCache() && a3.f8333b != null) {
                        this.f8320c.a(request.getCacheKey(), a3.f8333b);
                        request.addMarker("network-cache-written");
                    }
                    request.markDelivered();
                    this.f8321d.a(request, a3);
                    request.b(a3);
                    request.a(4);
                    return;
                }
                request.a("not-modified");
                request.e();
                request.a(4);
            } catch (VAdError e) {
                e.setNetworkTimeMs(SystemClock.elapsedRealtime() - elapsedRealtime);
                a(request, e);
                request.e();
                request.a(4);
            } catch (Exception e2) {
                o.a(e2, "Unhandled exception %s", e2.toString());
                VAdError vAdError = new VAdError(e2, 608);
                vAdError.setNetworkTimeMs(SystemClock.elapsedRealtime() - elapsedRealtime);
                this.f8321d.a(request, vAdError);
                request.e();
                request.a(4);
            }
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                b();
            } catch (InterruptedException e) {
                if (this.e) {
                    Thread.currentThread().interrupt();
                    return;
                }
                o.c("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
