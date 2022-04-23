package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p170b.p224d.p252g.p253a.C3913pe;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC3950qe;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbwk.class */
public final class zzbwk extends zzbyr<zzbwo> {

    /* renamed from: b */
    public final ScheduledExecutorService f25579b;

    /* renamed from: c */
    public final Clock f25580c;

    /* renamed from: d */
    public long f25581d = -1;

    /* renamed from: e */
    public long f25582e = -1;

    /* renamed from: f */
    public boolean f25583f = false;

    /* renamed from: g */
    public ScheduledFuture<?> f25584g;

    public zzbwk(ScheduledExecutorService scheduledExecutorService, Clock clock) {
        super(Collections.emptySet());
        this.f25579b = scheduledExecutorService;
        this.f25580c = clock;
    }

    /* renamed from: a */
    public final void m14980a(long j) {
        synchronized (this) {
            if (this.f25584g != null && !this.f25584g.isDone()) {
                this.f25584g.cancel(true);
            }
            this.f25581d = this.f25580c.mo17092a() + j;
            this.f25584g = this.f25579b.schedule(new RunnableC3950qe(this, null), j, TimeUnit.MILLISECONDS);
        }
    }

    /* renamed from: b */
    public final void m14978b(int i) {
        synchronized (this) {
            if (i > 0) {
                long millis = TimeUnit.SECONDS.toMillis(i);
                if (this.f25583f) {
                    if (this.f25582e <= 0 || millis >= this.f25582e) {
                        millis = this.f25582e;
                    }
                    this.f25582e = millis;
                    return;
                }
                if (this.f25580c.mo17092a() > this.f25581d || this.f25581d - this.f25580c.mo17092a() > millis) {
                    m14980a(millis);
                }
            }
        }
    }

    public final void onPause() {
        synchronized (this) {
            if (!this.f25583f) {
                if (this.f25584g == null || this.f25584g.isCancelled()) {
                    this.f25582e = -1L;
                } else {
                    this.f25584g.cancel(true);
                    this.f25582e = this.f25581d - this.f25580c.mo17092a();
                }
                this.f25583f = true;
            }
        }
    }

    public final void onResume() {
        synchronized (this) {
            if (this.f25583f) {
                if (this.f25582e > 0 && this.f25584g.isCancelled()) {
                    m14980a(this.f25582e);
                }
                this.f25583f = false;
            }
        }
    }

    /* renamed from: q */
    public final void m14977q() {
        synchronized (this) {
            this.f25583f = false;
            m14980a(0L);
        }
    }

    /* renamed from: s */
    public final void m14976s() {
        m14941a(C3913pe.f14537a);
    }
}
