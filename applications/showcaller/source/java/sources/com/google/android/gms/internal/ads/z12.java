package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/z12.class */
public final class z12 implements qw1<xw0> {

    /* renamed from: a */
    private final Context f32763a;

    /* renamed from: b */
    private final vx0 f32764b;

    /* renamed from: c */
    private final AbstractC6531gx f32765c;

    /* renamed from: d */
    private final s03 f32766d;

    /* renamed from: e */
    private final yn2 f32767e;

    public z12(Context context, vx0 vx0Var, yn2 yn2Var, s03 s03Var, AbstractC6531gx abstractC6531gx) {
        this.f32763a = context;
        this.f32764b = vx0Var;
        this.f32767e = yn2Var;
        this.f32766d = s03Var;
        this.f32765c = abstractC6531gx;
    }

    @Override // com.google.android.gms.internal.ads.qw1
    /* renamed from: a */
    public final boolean mo8628a(rj2 rj2Var, ej2 ej2Var) {
        kj2 kj2Var;
        return (this.f32765c == null || (kj2Var = ej2Var.f22247s) == null || kj2Var.f25233a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.qw1
    /* renamed from: b */
    public final r03<xw0> mo8627b(rj2 rj2Var, ej2 ej2Var) {
        yw0 mo9840d = this.f32764b.mo9840d(new mz0(rj2Var, ej2Var, null), new x12(this, new View(this.f32763a), null, v12.f31043a, ej2Var.f22249u.get(0)));
        y12 mo8672k = mo9840d.mo8672k();
        kj2 kj2Var = ej2Var.f22247s;
        BinderC6345bx binderC6345bx = new BinderC6345bx(mo8672k, kj2Var.f25234b, kj2Var.f25233a);
        yn2 yn2Var = this.f32767e;
        return kn2.m13841d(new dn2(this, binderC6345bx) { // from class: com.google.android.gms.internal.ads.w12

            /* renamed from: a */
            private final z12 f31429a;

            /* renamed from: b */
            private final BinderC6345bx f31430b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f31429a = this;
                this.f31430b = binderC6345bx;
            }

            @Override // com.google.android.gms.internal.ads.dn2
            public final void zza() {
                this.f31429a.m8626c(this.f31430b);
            }
        }, this.f32766d, zzfem.CUSTOM_RENDER_SYN, yn2Var).m11832j(zzfem.CUSTOM_RENDER_ACK).m11837e(k03.m14003a(mo9840d.mo8675h())).m11833i();
    }

    /* renamed from: c */
    public final /* synthetic */ void m8626c(BinderC6345bx binderC6345bx) {
        this.f32765c.mo14793C3(binderC6345bx);
    }
}
