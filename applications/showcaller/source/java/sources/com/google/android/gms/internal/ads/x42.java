package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/x42.class */
public final class x42 implements f03<xy0> {

    /* renamed from: a */
    final /* synthetic */ p42 f31904a;

    /* renamed from: b */
    final /* synthetic */ fd1 f31905b;

    /* renamed from: c */
    final /* synthetic */ y42 f31906c;

    public x42(y42 y42Var, p42 p42Var, fd1 fd1Var) {
        this.f31906c = y42Var;
        this.f31904a = p42Var;
        this.f31905b = fd1Var;
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: a */
    public final void mo8126a(Throwable th) {
        sp0 sp0Var;
        zzbcz m16455h = this.f31905b.mo10228a().m16455h(th);
        this.f31905b.mo10227b().mo9146O(m16455h);
        sp0Var = this.f31906c.f32414b;
        sp0Var.mo10958h().execute(new Runnable(this, m16455h) { // from class: com.google.android.gms.internal.ads.w42

            /* renamed from: d */
            private final x42 f31450d;

            /* renamed from: e */
            private final zzbcz f31451e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f31450d = this;
                this.f31451e = m16455h;
            }

            @Override // java.lang.Runnable
            public final void run() {
                n42 n42Var;
                x42 x42Var = this.f31450d;
                zzbcz zzbczVar = this.f31451e;
                n42Var = x42Var.f31906c.f32416d;
                n42Var.m13006e().mo9146O(zzbczVar);
            }
        });
        nk2.m12892a(m16455h.f33653d, th, "NativeAdLoader.onFailure");
        this.f31904a.zza();
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8125b(xy0 xy0Var) {
        n42 n42Var;
        sp0 sp0Var;
        xy0 xy0Var2 = xy0Var;
        synchronized (this.f31906c) {
            i71 m9016f = xy0Var2.m9016f();
            n42Var = this.f31906c.f32416d;
            m9016f.m14474a(n42Var.m13008c());
            this.f31904a.mo8353b(xy0Var2);
            sp0Var = this.f31906c.f32414b;
            sp0Var.mo10958h().execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.v42

                /* renamed from: d */
                private final x42 f31069d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f31069d = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    n42 n42Var2;
                    n42Var2 = this.f31069d.f31906c.f32416d;
                    n42Var2.m13007d().mo10505d();
                }
            });
        }
    }
}
