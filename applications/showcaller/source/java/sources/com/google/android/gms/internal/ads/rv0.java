package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.common.util.AbstractC6227e;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rv0.class */
public final class rv0 implements AbstractC6630jk {

    /* renamed from: a */
    private final ScheduledExecutorService f29247a;

    /* renamed from: b */
    private final AbstractC6227e f29248b;

    /* renamed from: c */
    private ScheduledFuture<?> f29249c;

    /* renamed from: d */
    private long f29250d = -1;

    /* renamed from: e */
    private long f29251e = -1;

    /* renamed from: f */
    private Runnable f29252f = null;

    /* renamed from: g */
    private boolean f29253g = false;

    public rv0(ScheduledExecutorService scheduledExecutorService, AbstractC6227e abstractC6227e) {
        this.f29247a = scheduledExecutorService;
        this.f29248b = abstractC6227e;
        C5667s.m18157g().m13876b(this);
    }

    /* renamed from: a */
    public final void m11267a(int i, Runnable runnable) {
        synchronized (this) {
            this.f29252f = runnable;
            long j = i;
            this.f29250d = this.f29248b.mo16806b() + j;
            this.f29249c = this.f29247a.schedule(runnable, j, TimeUnit.MILLISECONDS);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6630jk
    /* renamed from: b */
    public final void mo9939b(boolean z) {
        if (z) {
            m11265d();
        } else {
            m11266c();
        }
    }

    /* renamed from: c */
    final void m11266c() {
        synchronized (this) {
            if (!this.f29253g) {
                ScheduledFuture<?> scheduledFuture = this.f29249c;
                if (scheduledFuture == null || scheduledFuture.isDone()) {
                    this.f29251e = -1L;
                } else {
                    this.f29249c.cancel(true);
                    this.f29251e = this.f29250d - this.f29248b.mo16806b();
                }
                this.f29253g = true;
            }
        }
    }

    /* renamed from: d */
    final void m11265d() {
        ScheduledFuture<?> scheduledFuture;
        synchronized (this) {
            if (this.f29253g) {
                if (this.f29251e > 0 && (scheduledFuture = this.f29249c) != null && scheduledFuture.isCancelled()) {
                    this.f29249c = this.f29247a.schedule(this.f29252f, this.f29251e, TimeUnit.MILLISECONDS);
                }
                this.f29253g = false;
            }
        }
    }
}
