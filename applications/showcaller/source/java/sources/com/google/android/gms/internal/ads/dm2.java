package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.internal.ads.g21;
import com.google.android.gms.internal.ads.xy0;
import java.util.ArrayDeque;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/dm2.class */
public final class dm2<R extends g21<AdT>, AdT extends xy0> {

    /* renamed from: a */
    private final jl2 f21688a;

    /* renamed from: b */
    private final bm2<R, AdT> f21689b;

    /* renamed from: c */
    private final el2 f21690c;

    /* renamed from: e */
    private km2<R, AdT> f21692e;

    /* renamed from: f */
    private int f21693f = 1;

    /* renamed from: d */
    private final ArrayDeque<cm2<R, AdT>> f21691d = new ArrayDeque<>();

    public dm2(jl2 jl2Var, el2 el2Var, bm2<R, AdT> bm2Var) {
        this.f21688a = jl2Var;
        this.f21690c = el2Var;
        this.f21689b = bm2Var;
        el2Var.m15436a(new dl2(this) { // from class: com.google.android.gms.internal.ads.yl2

            /* renamed from: a */
            private final dm2 f32542a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32542a = this;
            }

            @Override // com.google.android.gms.internal.ads.dl2
            public final void zza() {
                this.f32542a.m15763f();
            }
        });
    }

    /* renamed from: h */
    public final void m15761h() {
        synchronized (this) {
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25464D4)).booleanValue() && !C5667s.m18156h().m12230p().mo17954m().m14118i()) {
                this.f21691d.clear();
                return;
            }
            if (m15760i()) {
                while (!this.f21691d.isEmpty()) {
                    cm2<R, AdT> pollFirst = this.f21691d.pollFirst();
                    if (pollFirst == null || (pollFirst.mo9594b() != null && this.f21688a.mo13865e(pollFirst.mo9594b()))) {
                        km2<R, AdT> km2Var = new km2<>(this.f21688a, this.f21689b, pollFirst);
                        this.f21692e = km2Var;
                        km2Var.m13850a(new zl2(this, pollFirst));
                        return;
                    }
                }
            }
        }
    }

    /* renamed from: i */
    private final boolean m15760i() {
        boolean z;
        synchronized (this) {
            z = this.f21692e == null;
        }
        return z;
    }

    /* renamed from: c */
    public final void m15766c(cm2<R, AdT> cm2Var) {
        synchronized (this) {
            this.f21691d.add(cm2Var);
        }
    }

    /* renamed from: d */
    public final r03<am2<R, AdT>> m15765d(cm2<R, AdT> cm2Var) {
        synchronized (this) {
            this.f21693f = 2;
            if (m15760i()) {
                return null;
            }
            return this.f21692e.m13849b(cm2Var);
        }
    }

    /* renamed from: f */
    public final /* synthetic */ void m15763f() {
        synchronized (this) {
            this.f21693f = 1;
            m15761h();
        }
    }
}
