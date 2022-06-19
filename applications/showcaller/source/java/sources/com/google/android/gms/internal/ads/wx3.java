package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wx3.class */
public final class wx3 {

    /* renamed from: a */
    private final List<C7021u4> f31830a;

    /* renamed from: b */
    private final yr3[] f31831b;

    public wx3(List<C7021u4> list) {
        this.f31830a = list;
        this.f31831b = new yr3[list.size()];
    }

    /* renamed from: a */
    public final void m9426a(xq3 xq3Var, tx3 tx3Var) {
        for (int i = 0; i < this.f31831b.length; i++) {
            tx3Var.m10475a();
            yr3 mo8690o = xq3Var.mo8690o(tx3Var.m10474b(), 3);
            C7021u4 c7021u4 = this.f31830a.get(i);
            String str = c7021u4.f30511n;
            boolean z = true;
            if (!"application/cea-608".equals(str)) {
                z = "application/cea-708".equals(str);
            }
            String valueOf = String.valueOf(str);
            C7173y8.m8897b(z, valueOf.length() != 0 ? "Invalid closed caption mime type provided: ".concat(valueOf) : new String("Invalid closed caption mime type provided: "));
            C6947s4 c6947s4 = new C6947s4();
            c6947s4.m11144d(tx3Var.m10473c());
            c6947s4.m11129n(str);
            c6947s4.m11136h(c7021u4.f30503f);
            c6947s4.m11138g(c7021u4.f30502e);
            c6947s4.m11170G(c7021u4.f30497F);
            c6947s4.m11127p(c7021u4.f30513p);
            mo8690o.mo8704d(c6947s4.m11168I());
            this.f31831b[i] = mo8690o;
        }
    }

    /* renamed from: b */
    public final void m9425b(long j, C6694la c6694la) {
        if (c6694la.m13639l() < 9) {
            return;
        }
        int m13655D = c6694la.m13655D();
        int m13655D2 = c6694la.m13655D();
        int m13629v = c6694la.m13629v();
        if (m13655D != 434 || m13655D2 != 1195456820 || m13629v != 3) {
            return;
        }
        mq3.m13104b(j, c6694la, this.f31831b);
    }
}
