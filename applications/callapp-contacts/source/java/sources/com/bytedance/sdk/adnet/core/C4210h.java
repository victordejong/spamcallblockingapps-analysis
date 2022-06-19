package com.bytedance.sdk.adnet.core;

import android.net.TrafficStats;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import com.bytedance.sdk.adnet.err.VAdError;
import com.bytedance.sdk.adnet.face.AbstractC4246a;
import com.bytedance.sdk.adnet.face.AbstractC4248b;
import com.bytedance.sdk.adnet.face.AbstractC4249c;
import java.util.concurrent.BlockingQueue;
/* renamed from: com.bytedance.sdk.adnet.core.h */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/h.class */
public class C4210h extends Thread {

    /* renamed from: a */
    private final BlockingQueue<Request<?>> f15444a;

    /* renamed from: b */
    private final AbstractC4248b f15445b;

    /* renamed from: c */
    private final AbstractC4246a f15446c;

    /* renamed from: d */
    private final AbstractC4249c f15447d;

    /* renamed from: e */
    private volatile boolean f15448e = false;

    public C4210h(BlockingQueue<Request<?>> blockingQueue, AbstractC4248b abstractC4248b, AbstractC4246a abstractC4246a, AbstractC4249c abstractC4249c) {
        this.f15444a = blockingQueue;
        this.f15445b = abstractC4248b;
        this.f15446c = abstractC4246a;
        this.f15447d = abstractC4249c;
    }

    /* renamed from: a */
    private void m36142a(Request<?> request, VAdError vAdError) {
        this.f15447d.mo36060a(request, request.m36200a(vAdError));
    }

    /* renamed from: b */
    private void m36141b() throws InterruptedException {
        m36143a(this.f15444a.take());
    }

    /* renamed from: b */
    private void m36140b(Request<?> request) {
        if (Build.VERSION.SDK_INT >= 14) {
            TrafficStats.setThreadStatsTag(request.getTrafficStatsTag());
        }
    }

    /* renamed from: a */
    public void m36144a() {
        this.f15448e = true;
        interrupt();
    }

    /* renamed from: a */
    void m36143a(Request<?> request) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        request.m36204a(3);
        try {
            try {
                request.addMarker("network-queue-take");
                if (request.isCanceled()) {
                    request.m36199a("network-discard-cancelled");
                    request.m36192e();
                    request.m36204a(4);
                    return;
                }
                m36140b(request);
                C4211i mo36063a = this.f15445b.mo36063a(request);
                request.setNetDuration(mo36063a.f15454f);
                request.addMarker("network-http-complete");
                if (mo36063a.f15453e && request.hasHadResponseDelivered()) {
                    request.m36199a("not-modified");
                    request.m36192e();
                    request.m36204a(4);
                    return;
                }
                C4218m<?> mo33324a = request.mo33324a(mo36063a);
                request.setNetDuration(mo36063a.f15454f);
                request.addMarker("network-parse-complete");
                if (request.shouldCache() && mo33324a.f15469b != null) {
                    this.f15446c.mo36066a(request.getCacheKey(), mo33324a.f15469b);
                    request.addMarker("network-cache-written");
                }
                request.markDelivered();
                this.f15447d.mo36062a(request, mo33324a);
                request.m36196b(mo33324a);
                request.m36204a(4);
            } catch (VAdError e) {
                e.setNetworkTimeMs(SystemClock.elapsedRealtime() - elapsedRealtime);
                m36142a(request, e);
                request.m36192e();
                request.m36204a(4);
            } catch (Exception e2) {
                C4221o.m36107a(e2, "Unhandled exception %s", e2.toString());
                VAdError vAdError = new VAdError(e2, 608);
                vAdError.setNetworkTimeMs(SystemClock.elapsedRealtime() - elapsedRealtime);
                this.f15447d.mo36060a(request, vAdError);
                request.m36192e();
                request.m36204a(4);
            }
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                m36141b();
            } catch (InterruptedException e) {
                if (this.f15448e) {
                    Thread.currentThread().interrupt();
                    return;
                }
                C4221o.m36105c("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
