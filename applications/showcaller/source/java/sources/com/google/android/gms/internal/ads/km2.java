package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.g21;
import com.google.android.gms.internal.ads.xy0;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/km2.class */
public final class km2<R extends g21<AdT>, AdT extends xy0> {

    /* renamed from: a */
    private final cm2<R, AdT> f25260a;

    /* renamed from: b */
    private final r03<am2<R, AdT>> f25261b;

    /* renamed from: c */
    private boolean f25262c = false;

    /* renamed from: d */
    private boolean f25263d = false;

    public km2(jl2 jl2Var, bm2<R, AdT> bm2Var, cm2<R, AdT> cm2Var) {
        this.f25260a = cm2Var;
        this.f25261b = k03.m13997g(k03.m13995i(bm2Var.mo10031b(cm2Var), new uz2(this, bm2Var, jl2Var, cm2Var) { // from class: com.google.android.gms.internal.ads.hm2

            /* renamed from: a */
            private final km2 f23976a;

            /* renamed from: b */
            private final bm2 f23977b;

            /* renamed from: c */
            private final jl2 f23978c;

            /* renamed from: d */
            private final cm2 f23979d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23976a = this;
                this.f23977b = bm2Var;
                this.f23978c = jl2Var;
                this.f23979d = cm2Var;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                return this.f23976a.m13847d(this.f23977b, this.f23978c, this.f23979d, (ql2) obj);
            }
        }, cm2Var.zza()), Exception.class, new uz2(this, bm2Var) { // from class: com.google.android.gms.internal.ads.im2

            /* renamed from: a */
            private final km2 f24357a;

            /* renamed from: b */
            private final bm2 f24358b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24357a = this;
                this.f24358b = bm2Var;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                return this.f24357a.m13848c(this.f24358b, (Exception) obj);
            }
        }, cm2Var.zza());
    }

    /* renamed from: a */
    public final void m13850a(f03<Void> f03Var) {
        synchronized (this) {
            k03.m13988p(k03.m13995i(this.f25261b, jm2.f24928a, this.f25260a.zza()), f03Var, this.f25260a.zza());
        }
    }

    /* renamed from: b */
    public final r03<am2<R, AdT>> m13849b(cm2<R, AdT> cm2Var) {
        synchronized (this) {
            if (!this.f25263d && !this.f25262c) {
                if (this.f25260a.mo9594b() != null && cm2Var.mo9594b() != null && this.f25260a.mo9594b().equals(cm2Var.mo9594b())) {
                    this.f25262c = true;
                    return this.f25261b;
                }
                return null;
            }
            return null;
        }
    }

    /* renamed from: c */
    public final /* synthetic */ r03 m13848c(bm2 bm2Var, Exception exc) {
        synchronized (this) {
            this.f25263d = true;
            throw exc;
        }
    }

    /* renamed from: d */
    public final /* synthetic */ r03 m13847d(bm2 bm2Var, jl2 jl2Var, cm2 cm2Var, ql2 ql2Var) {
        synchronized (this) {
            this.f25263d = true;
            bm2Var.mo10032a(ql2Var);
            if (this.f25262c) {
                return k03.m14003a(new am2(ql2Var, cm2Var));
            }
            jl2Var.mo13866d(cm2Var.mo9594b(), ql2Var);
            return k03.m14003a(null);
        }
    }
}
