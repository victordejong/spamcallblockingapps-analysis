package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AbstractC2328o;
import com.google.android.gms.common.util.AbstractC2708e;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ajb.class */
public final class ajb implements AbstractC2328o, aqi, aql, dtr {

    /* renamed from: a */
    private final ais f9784a;

    /* renamed from: b */
    private final aiz f9785b;

    /* renamed from: d */
    private final C3266ka<JSONObject, JSONObject> f9787d;

    /* renamed from: e */
    private final Executor f9788e;

    /* renamed from: f */
    private final AbstractC2708e f9789f;

    /* renamed from: c */
    private final Set<act> f9786c = new HashSet();

    /* renamed from: g */
    private final AtomicBoolean f9790g = new AtomicBoolean(false);
    @GuardedBy("this")

    /* renamed from: h */
    private final ajd f9791h = new ajd();

    /* renamed from: i */
    private boolean f9792i = false;

    /* renamed from: j */
    private WeakReference<?> f9793j = new WeakReference<>(this);

    public ajb(C3257js c3257js, aiz aizVar, Executor executor, ais aisVar, AbstractC2708e abstractC2708e) {
        this.f9784a = aisVar;
        this.f9787d = c3257js.m7718a("google.afma.activeView.handleUpdate", C3247ji.f16804a, C3247ji.f16804a);
        this.f9785b = aizVar;
        this.f9788e = executor;
        this.f9789f = abstractC2708e;
    }

    /* renamed from: g */
    private final void m13078g() {
        for (act actVar : this.f9786c) {
            this.f9784a.m13087b(actVar);
        }
        this.f9784a.m13093a();
    }

    @Override // com.google.android.gms.internal.ads.aql
    /* renamed from: a */
    public final void mo11891a(Context context) {
        synchronized (this) {
            this.f9791h.f9800b = true;
            m13080e();
        }
    }

    /* renamed from: a */
    public final void m13082a(act actVar) {
        synchronized (this) {
            this.f9786c.add(actVar);
            this.f9784a.m13092a(actVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.dtr
    /* renamed from: a */
    public final void mo7170a(dtt dttVar) {
        synchronized (this) {
            this.f9791h.f9799a = dttVar.f15739j;
            this.f9791h.f9803e = dttVar;
            m13080e();
        }
    }

    /* renamed from: a */
    public final void m13081a(Object obj) {
        this.f9793j = new WeakReference<>(obj);
    }

    @Override // com.google.android.gms.internal.ads.aqi
    /* renamed from: b */
    public final void mo11652b() {
        synchronized (this) {
            if (this.f9790g.compareAndSet(false, true)) {
                this.f9784a.m13089a(this);
                m13080e();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aql
    /* renamed from: b */
    public final void mo11889b(Context context) {
        synchronized (this) {
            this.f9791h.f9800b = false;
            m13080e();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC2328o
    /* renamed from: c */
    public final void mo7433c() {
        synchronized (this) {
            this.f9791h.f9800b = false;
            m13080e();
        }
    }

    @Override // com.google.android.gms.internal.ads.aql
    /* renamed from: c */
    public final void mo11888c(Context context) {
        synchronized (this) {
            this.f9791h.f9802d = "u";
            m13080e();
            m13078g();
            this.f9792i = true;
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC2328o
    /* renamed from: d */
    public final void mo7432d() {
    }

    /* renamed from: e */
    public final void m13080e() {
        synchronized (this) {
            if (!(this.f9793j.get() != null)) {
                m13079f();
            } else if (!this.f9792i && this.f9790g.get()) {
                try {
                    this.f9791h.f9801c = this.f9789f.mo13861b();
                    JSONObject mo7728a = this.f9785b.mo7728a(this.f9791h);
                    for (act actVar : this.f9786c) {
                        this.f9788e.execute(new Runnable(actVar, mo7728a) { // from class: com.google.android.gms.internal.ads.aja

                            /* renamed from: a */
                            private final act f9782a;

                            /* renamed from: b */
                            private final JSONObject f9783b;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f9782a = actVar;
                                this.f9783b = mo7728a;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f9782a.mo7736a("AFMA_updateActiveView", this.f9783b);
                            }
                        });
                    }
                    C3654yk.m6735b(this.f9787d.mo7012a((C3266ka<JSONObject, JSONObject>) mo7728a), "ActiveViewListener.callActiveViewJs");
                } catch (Exception e) {
                    C3556uu.m7051a("Failed to call ActiveViewJS", e);
                }
            }
        }
    }

    /* renamed from: f */
    public final void m13079f() {
        synchronized (this) {
            m13078g();
            this.f9792i = true;
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC2328o
    /* renamed from: f_ */
    public final void mo7431f_() {
        synchronized (this) {
            this.f9791h.f9800b = true;
            m13080e();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC2328o
    /* renamed from: h_ */
    public final void mo7430h_() {
    }
}
