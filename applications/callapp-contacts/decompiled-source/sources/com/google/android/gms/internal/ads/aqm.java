package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aqm.class */
public final class aqm implements aro, asd, avw, axx {

    /* renamed from: a  reason: collision with root package name */
    dcc<Boolean> f23773a = dcc.h();

    /* renamed from: b  reason: collision with root package name */
    private final asc f23774b;

    /* renamed from: c  reason: collision with root package name */
    private final cov f23775c;

    /* renamed from: d  reason: collision with root package name */
    private final ScheduledExecutorService f23776d;
    private final Executor e;
    private ScheduledFuture<?> f;

    public aqm(asc ascVar, cov covVar, ScheduledExecutorService scheduledExecutorService, Executor executor) {
        this.f23774b = ascVar;
        this.f23775c = covVar;
        this.f23776d = scheduledExecutorService;
        this.e = executor;
    }

    @Override // com.google.android.gms.internal.ads.avw
    public final void H_() {
        synchronized (this) {
            if (!this.f23773a.isDone()) {
                ScheduledFuture<?> scheduledFuture = this.f;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(true);
                }
                this.f23773a.b((dcc<Boolean>) Boolean.TRUE);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.axx
    public final void a() {
        if (((Boolean) ekb.e().a(aq.bb)).booleanValue() && this.f23775c.S == 2) {
            if (this.f23775c.p == 0) {
                this.f23774b.a();
                return;
            }
            dbh.a(this.f23773a, new aqo(this), this.e);
            this.f = this.f23776d.schedule(new Runnable(this) { // from class: com.google.android.gms.internal.ads.aql

                /* renamed from: a  reason: collision with root package name */
                private final aqm f23772a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f23772a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    aqm aqmVar = this.f23772a;
                    synchronized (aqmVar) {
                        if (!aqmVar.f23773a.isDone()) {
                            aqmVar.f23773a.b((dcc<Boolean>) Boolean.TRUE);
                        }
                    }
                }
            }, this.f23775c.p, TimeUnit.MILLISECONDS);
        }
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void a(tp tpVar, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.asd
    public final void a_(zzvh zzvhVar) {
        synchronized (this) {
            if (!this.f23773a.isDone()) {
                ScheduledFuture<?> scheduledFuture = this.f;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(true);
                }
                this.f23773a.a((Throwable) new Exception());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void c() {
        if (this.f23775c.S == 0 || this.f23775c.S == 1) {
            this.f23774b.a();
        }
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void d() {
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void e() {
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void f() {
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void g() {
    }

    @Override // com.google.android.gms.internal.ads.axx
    public final void h() {
    }

    @Override // com.google.android.gms.internal.ads.avw
    public final void i() {
    }
}
