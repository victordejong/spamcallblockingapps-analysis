package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AbstractC5653o;
import com.google.android.gms.ads.internal.util.C5722o1;
import com.google.android.gms.common.util.AbstractC6227e;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ev0.class */
public final class ev0 implements AbstractC6888qj, t31, AbstractC5653o, s31 {

    /* renamed from: d */
    private final zu0 f22550d;

    /* renamed from: e */
    private final av0 f22551e;

    /* renamed from: g */
    private final d70<JSONObject, JSONObject> f22553g;

    /* renamed from: h */
    private final Executor f22554h;

    /* renamed from: i */
    private final AbstractC6227e f22555i;

    /* renamed from: f */
    private final Set<wn0> f22552f = new HashSet();

    /* renamed from: j */
    private final AtomicBoolean f22556j = new AtomicBoolean(false);

    /* renamed from: k */
    private final dv0 f22557k = new dv0();

    /* renamed from: l */
    private boolean f22558l = false;

    /* renamed from: m */
    private WeakReference<?> f22559m = new WeakReference<>(this);

    public ev0(a70 a70Var, av0 av0Var, Executor executor, zu0 zu0Var, AbstractC6227e abstractC6227e) {
        this.f22550d = zu0Var;
        l60<JSONObject> l60Var = o60.f27442b;
        this.f22553g = a70Var.m16679a("google.afma.activeView.handleUpdate", l60Var, l60Var);
        this.f22551e = av0Var;
        this.f22554h = executor;
        this.f22555i = abstractC6227e;
    }

    /* renamed from: j */
    private final void m15369j() {
        for (wn0 wn0Var : this.f22552f) {
            this.f22550d.m8176e(wn0Var);
        }
        this.f22550d.m8175f();
    }

    @Override // com.google.android.gms.internal.ads.t31
    /* renamed from: U */
    public final void mo10844U(Context context) {
        synchronized (this) {
            this.f22557k.f21877b = true;
            m15373b();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6888qj
    /* renamed from: Y */
    public final void mo7924Y(C6851pj c6851pj) {
        synchronized (this) {
            dv0 dv0Var = this.f22557k;
            dv0Var.f21876a = c6851pj.f28023j;
            dv0Var.f21881f = c6851pj;
            m15373b();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: a */
    public final void mo9244a() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: a3 */
    public final void mo9243a3() {
        synchronized (this) {
            this.f22557k.f21877b = false;
            m15373b();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: a6 */
    public final void mo9242a6(int i) {
    }

    /* renamed from: b */
    public final void m15373b() {
        synchronized (this) {
            if (this.f22559m.get() == null) {
                m15372c();
            } else if (!this.f22558l && this.f22556j.get()) {
                try {
                    this.f22557k.f21879d = this.f22555i.mo16806b();
                    JSONObject mo8186b = this.f22551e.mo8186b(this.f22557k);
                    for (wn0 wn0Var : this.f22552f) {
                        this.f22554h.execute(new Runnable(wn0Var, mo8186b) { // from class: com.google.android.gms.internal.ads.cv0

                            /* renamed from: d */
                            private final wn0 f21383d;

                            /* renamed from: e */
                            private final JSONObject f21384e;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f21383d = wn0Var;
                                this.f21384e = mo8186b;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f21383d.mo7957E0("AFMA_updateActiveView", this.f21384e);
                            }
                        });
                    }
                    ti0.m10654b(this.f22553g.m15883b(mo8186b), "ActiveViewListener.callActiveViewJs");
                } catch (Exception e) {
                    C5722o1.m17989l("Failed to call ActiveViewJS", e);
                }
            }
        }
    }

    /* renamed from: c */
    public final void m15372c() {
        synchronized (this) {
            m15369j();
            this.f22558l = true;
        }
    }

    /* renamed from: d */
    public final void m15371d(wn0 wn0Var) {
        synchronized (this) {
            this.f22552f.add(wn0Var);
            this.f22550d.m8177d(wn0Var);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: e */
    public final void mo9240e() {
    }

    /* renamed from: i */
    public final void m15370i(Object obj) {
        this.f22559m = new WeakReference<>(obj);
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: m2 */
    public final void mo9237m2() {
        synchronized (this) {
            this.f22557k.f21877b = true;
            m15373b();
        }
    }

    @Override // com.google.android.gms.internal.ads.t31
    /* renamed from: p */
    public final void mo10843p(Context context) {
        synchronized (this) {
            this.f22557k.f21877b = false;
            m15373b();
        }
    }

    @Override // com.google.android.gms.internal.ads.t31
    /* renamed from: r */
    public final void mo10842r(Context context) {
        synchronized (this) {
            this.f22557k.f21880e = "u";
            m15373b();
            m15369j();
            this.f22558l = true;
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: y4 */
    public final void mo9229y4() {
    }

    @Override // com.google.android.gms.internal.ads.s31
    public final void zzg() {
        synchronized (this) {
            if (this.f22556j.compareAndSet(false, true)) {
                this.f22550d.m8178c(this);
                m15373b();
            }
        }
    }
}
