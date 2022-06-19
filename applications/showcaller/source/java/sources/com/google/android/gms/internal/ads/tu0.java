package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/tu0.class */
public final class tu0 implements y21, n41, s31, AbstractC6673kq, o31 {

    /* renamed from: d */
    private final Context f30354d;

    /* renamed from: e */
    private final Executor f30355e;

    /* renamed from: f */
    private final Executor f30356f;

    /* renamed from: g */
    private final ScheduledExecutorService f30357g;

    /* renamed from: h */
    private final rj2 f30358h;

    /* renamed from: i */
    private final ej2 f30359i;

    /* renamed from: j */
    private final yo2 f30360j;

    /* renamed from: k */
    private final hk2 f30361k;

    /* renamed from: l */
    private final C7016u f30362l;

    /* renamed from: m */
    private final C6680kx f30363m;

    /* renamed from: n */
    private final WeakReference<View> f30364n;

    /* renamed from: o */
    private boolean f30365o;

    /* renamed from: p */
    private final AtomicBoolean f30366p = new AtomicBoolean();

    /* renamed from: q */
    private final C6754mx f30367q;

    public tu0(Context context, Executor executor, Executor executor2, ScheduledExecutorService scheduledExecutorService, rj2 rj2Var, ej2 ej2Var, yo2 yo2Var, hk2 hk2Var, View view, C7016u c7016u, C6680kx c6680kx, C6754mx c6754mx, byte[] bArr) {
        this.f30354d = context;
        this.f30355e = executor;
        this.f30356f = executor2;
        this.f30357g = scheduledExecutorService;
        this.f30358h = rj2Var;
        this.f30359i = ej2Var;
        this.f30360j = yo2Var;
        this.f30361k = hk2Var;
        this.f30362l = c7016u;
        this.f30364n = new WeakReference<>(view);
        this.f30363m = c6680kx;
        this.f30367q = c6754mx;
    }

    /* renamed from: H */
    private final void m10509H(int i, int i2) {
        View view;
        if (i <= 0 || !((view = this.f30364n.get()) == null || view.getHeight() == 0 || view.getWidth() == 0)) {
            m10498y();
        } else {
            this.f30357g.schedule(new Runnable(this, i, i2) { // from class: com.google.android.gms.internal.ads.ou0

                /* renamed from: d */
                private final tu0 f27729d;

                /* renamed from: e */
                private final int f27730e;

                /* renamed from: f */
                private final int f27731f;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f27729d = this;
                    this.f27730e = i;
                    this.f27731f = i2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f27729d.m10501r(this.f27730e, this.f27731f);
                }
            }, i2, TimeUnit.MILLISECONDS);
        }
    }

    /* renamed from: I */
    public final void m10498y() {
        String mo11749d = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25646a2)).booleanValue() ? this.f30362l.m10450b().mo11749d(this.f30354d, this.f30364n.get(), null) : null;
        if ((!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25711i0)).booleanValue() || !this.f30358h.f28999b.f28519b.f24902g) && C7161xx.f32338h.m12799e().booleanValue()) {
            k03.m13988p((a03) k03.m13996h(a03.m16718E(k03.m14003a(null)), ((Long) C7192yr.m8714c().m14263c(C6679kw.f25484G0)).longValue(), TimeUnit.MILLISECONDS, this.f30357g), new su0(this, mo11749d), this.f30355e);
            return;
        }
        hk2 hk2Var = this.f30361k;
        yo2 yo2Var = this.f30360j;
        rj2 rj2Var = this.f30358h;
        ej2 ej2Var = this.f30359i;
        hk2Var.m14600a(yo2Var.m8750b(rj2Var, ej2Var, false, mo11749d, null, ej2Var.f22225d));
    }

    @Override // com.google.android.gms.internal.ads.n41
    /* renamed from: d */
    public final void mo10505d() {
        synchronized (this) {
            if (this.f30365o) {
                ArrayList arrayList = new ArrayList(this.f30359i.f22225d);
                arrayList.addAll(this.f30359i.f22231g);
                this.f30361k.m14600a(this.f30360j.m8750b(this.f30358h, this.f30359i, true, null, null, arrayList));
            } else {
                hk2 hk2Var = this.f30361k;
                yo2 yo2Var = this.f30360j;
                rj2 rj2Var = this.f30358h;
                ej2 ej2Var = this.f30359i;
                hk2Var.m14600a(yo2Var.m8751a(rj2Var, ej2Var, ej2Var.f22242n));
                hk2 hk2Var2 = this.f30361k;
                yo2 yo2Var2 = this.f30360j;
                rj2 rj2Var2 = this.f30358h;
                ej2 ej2Var2 = this.f30359i;
                hk2Var2.m14600a(yo2Var2.m8751a(rj2Var2, ej2Var2, ej2Var2.f22231g));
            }
            this.f30365o = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.y21
    /* renamed from: f */
    public final void mo8978f() {
    }

    @Override // com.google.android.gms.internal.ads.y21
    /* renamed from: g */
    public final void mo8977g() {
    }

    @Override // com.google.android.gms.internal.ads.y21
    /* renamed from: i */
    public final void mo8976i() {
        hk2 hk2Var = this.f30361k;
        yo2 yo2Var = this.f30360j;
        rj2 rj2Var = this.f30358h;
        ej2 ej2Var = this.f30359i;
        hk2Var.m14600a(yo2Var.m8751a(rj2Var, ej2Var, ej2Var.f22233h));
    }

    @Override // com.google.android.gms.internal.ads.y21
    /* renamed from: j */
    public final void mo8975j() {
        hk2 hk2Var = this.f30361k;
        yo2 yo2Var = this.f30360j;
        rj2 rj2Var = this.f30358h;
        ej2 ej2Var = this.f30359i;
        hk2Var.m14600a(yo2Var.m8751a(rj2Var, ej2Var, ej2Var.f22237j));
    }

    @Override // com.google.android.gms.internal.ads.o31
    /* renamed from: l */
    public final void mo9239l(zzbcz zzbczVar) {
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25636Z0)).booleanValue()) {
            this.f30361k.m14600a(this.f30360j.m8751a(this.f30358h, this.f30359i, yo2.m8748d(2, zzbczVar.f33653d, this.f30359i.f22243o)));
        }
    }

    @Override // com.google.android.gms.internal.ads.y21
    /* renamed from: n */
    public final void mo8974n(nd0 nd0Var, String str, String str2) {
        hk2 hk2Var = this.f30361k;
        yo2 yo2Var = this.f30360j;
        ej2 ej2Var = this.f30359i;
        hk2Var.m14600a(yo2Var.m8749c(ej2Var, ej2Var.f22235i, nd0Var));
    }

    /* renamed from: r */
    public final /* synthetic */ void m10501r(int i, int i2) {
        this.f30355e.execute(new Runnable(this, i, i2) { // from class: com.google.android.gms.internal.ads.pu0

            /* renamed from: d */
            private final tu0 f28158d;

            /* renamed from: e */
            private final int f28159e;

            /* renamed from: f */
            private final int f28160f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28158d = this;
                this.f28159e = i;
                this.f28160f = i2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f28158d.m10500u(this.f28159e, this.f28160f);
            }
        });
    }

    /* renamed from: u */
    public final /* synthetic */ void m10500u(int i, int i2) {
        m10509H(i - 1, i2);
    }

    /* renamed from: v */
    public final /* synthetic */ void m10499v() {
        this.f30355e.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.qu0

            /* renamed from: d */
            private final tu0 f28631d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28631d = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f28631d.m10498y();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6673kq
    /* renamed from: z0 */
    public final void mo7877z0() {
        if ((!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25711i0)).booleanValue() || !this.f30358h.f28999b.f28519b.f24902g) && C7161xx.f32334d.m12799e().booleanValue()) {
            k03.m13988p(k03.m13998f(a03.m16718E(this.f30363m.m13761b()), Throwable.class, lu0.f26275a, qi0.f28500f), new ru0(this), this.f30355e);
            return;
        }
        hk2 hk2Var = this.f30361k;
        yo2 yo2Var = this.f30360j;
        rj2 rj2Var = this.f30358h;
        ej2 ej2Var = this.f30359i;
        List<String> m8751a = yo2Var.m8751a(rj2Var, ej2Var, ej2Var.f22223c);
        C5667s.m18160d();
        int i = 1;
        if (true == C5679c2.m18066i(this.f30354d)) {
            i = 2;
        }
        hk2Var.m14599b(m8751a, i);
    }

    @Override // com.google.android.gms.internal.ads.s31
    public final void zzg() {
        if (!this.f30366p.compareAndSet(false, true)) {
            return;
        }
        int intValue = ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25673d2)).intValue();
        if (intValue > 0) {
            m10509H(intValue, ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25681e2)).intValue());
            return;
        }
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25664c2)).booleanValue()) {
            this.f30356f.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.mu0

                /* renamed from: d */
                private final tu0 f26871d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f26871d = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f26871d.m10499v();
                }
            });
        } else {
            m10498y();
        }
    }

    @Override // com.google.android.gms.internal.ads.y21
    public final void zzi() {
    }
}
