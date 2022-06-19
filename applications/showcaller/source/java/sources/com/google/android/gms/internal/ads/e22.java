package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/e22.class */
public final class e22<AdT> implements qw1<AdT> {

    /* renamed from: a */
    private final AbstractC6531gx f21982a;

    /* renamed from: b */
    private final s03 f21983b;

    /* renamed from: c */
    private final yn2 f21984c;

    /* renamed from: d */
    private final n22 f21985d;

    /* JADX WARN: Multi-variable type inference failed */
    public e22(yn2 yn2Var, yn2 yn2Var2, s03 s03Var, AbstractC6531gx abstractC6531gx, n22 n22Var) {
        this.f21984c = yn2Var;
        this.f21983b = yn2Var2;
        this.f21982a = s03Var;
        this.f21985d = abstractC6531gx;
    }

    @Override // com.google.android.gms.internal.ads.qw1
    /* renamed from: a */
    public final boolean mo8628a(rj2 rj2Var, ej2 ej2Var) {
        kj2 kj2Var;
        return (this.f21982a == null || (kj2Var = ej2Var.f22247s) == null || kj2Var.f25233a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.qw1
    /* renamed from: b */
    public final r03<AdT> mo8627b(rj2 rj2Var, ej2 ej2Var) {
        vi0 vi0Var = new vi0();
        j22 j22Var = new j22();
        j22Var.m14179a(new d22(this, vi0Var, rj2Var, ej2Var, j22Var));
        kj2 kj2Var = ej2Var.f22247s;
        BinderC6345bx binderC6345bx = new BinderC6345bx(j22Var, kj2Var.f25234b, kj2Var.f25233a);
        yn2 yn2Var = this.f21984c;
        return kn2.m13841d(new dn2(this, binderC6345bx) { // from class: com.google.android.gms.internal.ads.c22

            /* renamed from: a */
            private final e22 f21076a;

            /* renamed from: b */
            private final BinderC6345bx f21077b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f21076a = this;
                this.f21077b = binderC6345bx;
            }

            @Override // com.google.android.gms.internal.ads.dn2
            public final void zza() {
                this.f21076a.m15605c(this.f21077b);
            }
        }, this.f21983b, zzfem.CUSTOM_RENDER_SYN, yn2Var).m11832j(zzfem.CUSTOM_RENDER_ACK).m11837e(vi0Var).m11833i();
    }

    /* renamed from: c */
    public final /* synthetic */ void m15605c(BinderC6345bx binderC6345bx) {
        this.f21982a.mo14793C3(binderC6345bx);
    }
}
