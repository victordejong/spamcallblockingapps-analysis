package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aqm.class */
public final class aqm implements aro, asd, avw, axx {

    /* renamed from: a */
    dcc<Boolean> f43032a = dcc.m16880h();

    /* renamed from: b */
    private final asc f43033b;

    /* renamed from: c */
    private final cov f43034c;

    /* renamed from: d */
    private final ScheduledExecutorService f43035d;

    /* renamed from: e */
    private final Executor f43036e;

    /* renamed from: f */
    private ScheduledFuture<?> f43037f;

    public aqm(asc ascVar, cov covVar, ScheduledExecutorService scheduledExecutorService, Executor executor) {
        this.f43033b = ascVar;
        this.f43034c = covVar;
        this.f43035d = scheduledExecutorService;
        this.f43036e = executor;
    }

    @Override // com.google.android.gms.internal.ads.avw
    /* renamed from: H_ */
    public final void mo17686H_() {
        synchronized (this) {
            if (this.f43032a.isDone()) {
                return;
            }
            ScheduledFuture<?> scheduledFuture = this.f43037f;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(true);
            }
            this.f43032a.mo16881b((dcc<Boolean>) Boolean.TRUE);
        }
    }

    @Override // com.google.android.gms.internal.ads.axx
    /* renamed from: a */
    public final void mo18265a() {
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42718bb)).booleanValue() || this.f43034c.f46239S != 2) {
            return;
        }
        if (this.f43034c.f46269p == 0) {
            this.f43033b.m18434a();
            return;
        }
        dbh.m16901a(this.f43032a, new aqo(this), this.f43036e);
        this.f43037f = this.f43035d.schedule(new Runnable(this) { // from class: com.google.android.gms.internal.ads.aql

            /* renamed from: a */
            private final aqm f43031a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f43031a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                aqm aqmVar = this.f43031a;
                synchronized (aqmVar) {
                    if (aqmVar.f43032a.isDone()) {
                        return;
                    }
                    aqmVar.f43032a.mo16881b((dcc<Boolean>) Boolean.TRUE);
                }
            }
        }, this.f43034c.f46269p, TimeUnit.MILLISECONDS);
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: a */
    public final void mo17405a(AbstractC12939tp abstractC12939tp, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.asd
    /* renamed from: a_ */
    public final void mo17402a_(zzvh zzvhVar) {
        synchronized (this) {
            if (this.f43032a.isDone()) {
                return;
            }
            ScheduledFuture<?> scheduledFuture = this.f43037f;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(true);
            }
            this.f43032a.mo16882a((Throwable) new Exception());
        }
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: c */
    public final void mo17401c() {
        if (this.f43034c.f46239S == 0 || this.f43034c.f46239S == 1) {
            this.f43033b.m18434a();
        }
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: d */
    public final void mo17400d() {
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: e */
    public final void mo17399e() {
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: f */
    public final void mo17398f() {
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: g */
    public final void mo17397g() {
    }

    @Override // com.google.android.gms.internal.ads.axx
    /* renamed from: h */
    public final void mo18264h() {
    }

    @Override // com.google.android.gms.internal.ads.avw
    /* renamed from: i */
    public final void mo17678i() {
    }
}
