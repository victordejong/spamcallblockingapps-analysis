package com.google.android.gms.internal.ads;

import android.os.Process;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aza.class */
public final class aza extends Thread {

    /* renamed from: a */
    private static final boolean f10672a = C3128ez.f16642a;

    /* renamed from: b */
    private final BlockingQueue<dts<?>> f10673b;

    /* renamed from: c */
    private final BlockingQueue<dts<?>> f10674c;

    /* renamed from: d */
    private final AbstractC2759a f10675d;

    /* renamed from: e */
    private final AbstractC2823b f10676e;

    /* renamed from: f */
    private volatile boolean f10677f = false;

    /* renamed from: g */
    private final daq f10678g = new daq(this);

    public aza(BlockingQueue<dts<?>> blockingQueue, BlockingQueue<dts<?>> blockingQueue2, AbstractC2759a abstractC2759a, AbstractC2823b abstractC2823b) {
        this.f10673b = blockingQueue;
        this.f10674c = blockingQueue2;
        this.f10675d = abstractC2759a;
        this.f10676e = abstractC2823b;
    }

    /* renamed from: b */
    private final void m12225b() {
        boolean m10257b;
        boolean m10257b2;
        boolean m10257b3;
        boolean z = true;
        dts<?> take = this.f10673b.take();
        take.m8600b("cache-queue-take");
        take.m8608a(1);
        try {
            take.m8593h();
            bzv mo7708a = this.f10675d.mo7708a(take.m8595f());
            if (mo7708a == null) {
                take.m8600b("cache-miss");
                m10257b3 = this.f10678g.m10257b(take);
                if (!m10257b3) {
                    this.f10674c.put(take);
                }
            } else if (mo7708a.m11531a()) {
                take.m8600b("cache-hit-expired");
                take.m8607a(mo7708a);
                m10257b2 = this.f10678g.m10257b(take);
                if (!m10257b2) {
                    this.f10674c.put(take);
                }
            } else {
                take.m8600b("cache-hit");
                ecj<?> mo6863a = take.mo6863a(new drt(mo7708a.f12578a, mo7708a.f12584g));
                take.m8600b("cache-hit-parsed");
                if (mo7708a.f12583f >= System.currentTimeMillis()) {
                    z = false;
                }
                if (!z) {
                    this.f10676e.mo9085a(take, mo6863a);
                } else {
                    take.m8600b("cache-hit-refresh-needed");
                    take.m8607a(mo7708a);
                    mo6863a.f16286d = true;
                    m10257b = this.f10678g.m10257b(take);
                    if (!m10257b) {
                        this.f10676e.mo9084a(take, mo6863a, new diz(this, take));
                    } else {
                        this.f10676e.mo9085a(take, mo6863a);
                    }
                }
            }
        } finally {
            take.m8608a(2);
        }
    }

    /* renamed from: a */
    public final void m12227a() {
        this.f10677f = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        if (f10672a) {
            C3128ez.m7853a("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.f10675d.mo7716a();
        while (true) {
            try {
                m12225b();
            } catch (InterruptedException e) {
                if (this.f10677f) {
                    Thread.currentThread().interrupt();
                    return;
                }
                C3128ez.m7850c("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
