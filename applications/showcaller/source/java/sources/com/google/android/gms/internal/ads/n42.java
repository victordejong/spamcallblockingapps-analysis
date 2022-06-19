package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/n42.class */
public final class n42 {

    /* renamed from: a */
    private final cf1 f26966a;

    /* renamed from: b */
    private final a42 f26967b;

    /* renamed from: c */
    private final b31 f26968c;

    public n42(cf1 cf1Var, jo2 jo2Var) {
        this.f26966a = cf1Var;
        a42 a42Var = new a42(jo2Var);
        this.f26967b = a42Var;
        this.f26968c = new b31(a42Var, cf1Var.m16065e()) { // from class: com.google.android.gms.internal.ads.m42

            /* renamed from: d */
            private final a42 f26422d;

            /* renamed from: e */
            private final q40 f26423e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f26422d = a42Var;
                this.f26423e = m16065e;
            }

            @Override // com.google.android.gms.internal.ads.b31
            /* renamed from: O */
            public final void mo9146O(zzbcz zzbczVar) {
                a42 a42Var2 = this.f26422d;
                q40 q40Var = this.f26423e;
                a42Var2.mo9146O(zzbczVar);
                if (q40Var != null) {
                    try {
                        q40Var.mo12032x(zzbczVar);
                    } catch (RemoteException e) {
                        ei0.m15461i("#007 Could not call remote method.", e);
                    }
                }
                if (q40Var != null) {
                    try {
                        q40Var.mo12034A(zzbczVar.f33653d);
                    } catch (RemoteException e2) {
                        ei0.m15461i("#007 Could not call remote method.", e2);
                    }
                }
            }
        };
    }

    /* renamed from: a */
    public final void m13010a(AbstractC6526gs abstractC6526gs) {
        this.f26967b.m16697r(abstractC6526gs);
    }

    /* renamed from: b */
    public final zc1 m13009b() {
        return new zc1(this.f26966a, this.f26967b.m16699a());
    }

    /* renamed from: c */
    public final a42 m13008c() {
        return this.f26967b;
    }

    /* renamed from: d */
    public final n41 m13007d() {
        return this.f26967b;
    }

    /* renamed from: e */
    public final b31 m13006e() {
        return this.f26968c;
    }
}
