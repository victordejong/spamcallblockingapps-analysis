package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.C5748x0;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/nz1.class */
public final class nz1 implements xw1<me1, ok2, my1> {

    /* renamed from: a */
    private final Context f27371a;

    /* renamed from: b */
    private final fd1 f27372b;

    /* renamed from: c */
    private final Executor f27373c;

    public nz1(Context context, fd1 fd1Var, Executor executor) {
        this.f27371a = context;
        this.f27372b = fd1Var;
        this.f27373c = executor;
    }

    /* renamed from: c */
    private static final boolean m12776c(rj2 rj2Var, int i) {
        return rj2Var.f28998a.f27577a.f32080g.contains(Integer.toString(i));
    }

    @Override // com.google.android.gms.internal.ads.xw1
    /* renamed from: a */
    public final void mo8657a(rj2 rj2Var, ej2 ej2Var, tw1<ok2, my1> tw1Var) {
        ok2 ok2Var = tw1Var.f30386b;
        Context context = this.f27371a;
        zzbdg zzbdgVar = rj2Var.f28998a.f27577a.f32077d;
        String jSONObject = ej2Var.f22250v.toString();
        String m17913l = C5748x0.m17913l(ej2Var.f22247s);
        my1 my1Var = tw1Var.f30387c;
        xj2 xj2Var = rj2Var.f28998a.f27577a;
        ok2Var.m12616r(context, zzbdgVar, jSONObject, m17913l, my1Var, xj2Var.f32082i, xj2Var.f32080g);
    }

    @Override // com.google.android.gms.internal.ads.xw1
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ me1 mo8656b(rj2 rj2Var, ej2 ej2Var, tw1<ok2, my1> tw1Var) {
        re1 re1Var;
        d80 m12632b = tw1Var.f30386b.m12632b();
        e80 m12631c = tw1Var.f30386b.m12631c();
        h80 m12610x = tw1Var.f30386b.m12610x();
        if (m12610x != null && m12776c(rj2Var, 6)) {
            re1Var = re1.m11545B(m12610x);
        } else if (m12632b != null && m12776c(rj2Var, 6)) {
            re1Var = re1.m11542E(m12632b);
        } else if (m12632b != null && m12776c(rj2Var, 2)) {
            re1Var = re1.m11543D(m12632b);
        } else if (m12631c != null && m12776c(rj2Var, 6)) {
            re1Var = re1.m11541F(m12631c);
        } else if (m12631c == null || !m12776c(rj2Var, 1)) {
            throw new zzehs(1, "No native ad mappers");
        } else {
            re1Var = re1.m11544C(m12631c);
        }
        if (rj2Var.f28998a.f27577a.f32080g.contains(Integer.toString(re1Var.m11513d0()))) {
            te1 mo10225d = this.f27372b.mo10225d(new mz0(rj2Var, ej2Var, tw1Var.f30385a), new df1(re1Var), new sg1(m12631c, m12632b, m12610x, null));
            tw1Var.f30387c.m13060F6(mo10225d.mo8659f());
            mo10225d.mo8213a().m13341D0(new ju0(tw1Var.f30386b), this.f27373c);
            return mo10225d.mo10342h();
        }
        throw new zzehs(1, "No corresponding native ad listener");
    }
}
