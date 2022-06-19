package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/a70.class */
public final class a70 {

    /* renamed from: a */
    private final d60 f19846a;

    /* renamed from: b */
    private r03<e60> f19847b;

    public a70(d60 d60Var) {
        this.f19846a = d60Var;
    }

    /* renamed from: d */
    private final void m16676d() {
        if (this.f19847b == null) {
            vi0 vi0Var = new vi0();
            this.f19847b = vi0Var;
            this.f19846a.m15939g(null).m16034b(new zi0(vi0Var) { // from class: com.google.android.gms.internal.ads.w60

                /* renamed from: a */
                private final vi0 f31461a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f31461a = vi0Var;
                }

                @Override // com.google.android.gms.internal.ads.zi0
                /* renamed from: a */
                public final void mo8354a(Object obj) {
                    this.f31461a.m10016c((e60) obj);
                }
            }, new xi0(vi0Var) { // from class: com.google.android.gms.internal.ads.x60

                /* renamed from: a */
                private final vi0 f31919a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f31919a = vi0Var;
                }

                @Override // com.google.android.gms.internal.ads.xi0
                public final void zza() {
                    this.f31919a.m10014f(new zzbtv("Cannot get Javascript Engine"));
                }
            });
        }
    }

    /* renamed from: a */
    public final <I, O> d70<I, O> m16679a(String str, j60<I> j60Var, i60<O> i60Var) {
        m16676d();
        return new d70<>(this.f19847b, "google.afma.activeView.handleUpdate", j60Var, i60Var);
    }

    /* renamed from: b */
    public final void m16678b(String str, n20<? super e60> n20Var) {
        m16676d();
        this.f19847b = k03.m13995i(this.f19847b, new uz2(str, n20Var) { // from class: com.google.android.gms.internal.ads.y60

            /* renamed from: a */
            private final String f32431a;

            /* renamed from: b */
            private final n20 f32432b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32431a = str;
                this.f32432b = n20Var;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                e60 e60Var = (e60) obj;
                e60Var.mo15303i0(this.f32431a, this.f32432b);
                return k03.m14003a(e60Var);
            }
        }, qi0.f28500f);
    }

    /* renamed from: c */
    public final void m16677c(String str, n20<? super e60> n20Var) {
        this.f19847b = k03.m13994j(this.f19847b, new nu2(str, n20Var) { // from class: com.google.android.gms.internal.ads.z60

            /* renamed from: a */
            private final String f32829a;

            /* renamed from: b */
            private final n20 f32830b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32829a = str;
                this.f32830b = n20Var;
            }

            @Override // com.google.android.gms.internal.ads.nu2
            /* renamed from: a */
            public final Object mo8501a(Object obj) {
                e60 e60Var = (e60) obj;
                e60Var.mo15305U(this.f32829a, this.f32830b);
                return e60Var;
            }
        }, qi0.f28500f);
    }
}
