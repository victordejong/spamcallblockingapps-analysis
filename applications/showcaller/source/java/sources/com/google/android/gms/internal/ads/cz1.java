package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC6255b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/cz1.class */
public final class cz1 implements xw1<lb1, r90, my1> {

    /* renamed from: a */
    private final Context f21423a;

    /* renamed from: b */
    private final jc1 f21424b;

    public cz1(Context context, jc1 jc1Var) {
        this.f21423a = context;
        this.f21424b = jc1Var;
    }

    @Override // com.google.android.gms.internal.ads.xw1
    /* renamed from: a */
    public final void mo8657a(rj2 rj2Var, ej2 ej2Var, tw1<r90, my1> tw1Var) {
        try {
            tw1Var.f30386b.mo11650B0(ej2Var.f22214V);
            tw1Var.f30386b.mo11649F5(ej2Var.f22209Q, ej2Var.f22250v.toString(), rj2Var.f28998a.f27577a.f32077d, BinderC6255b.m16744m2(this.f21423a), new az1(this, tw1Var, null), tw1Var.f30387c);
        } catch (RemoteException e) {
            throw new zzfaw(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.xw1
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ lb1 mo8656b(rj2 rj2Var, ej2 ej2Var, tw1<r90, my1> tw1Var) {
        wy1 wy1Var = new wy1(ej2Var, tw1Var.f30386b, false);
        mb1 mo10542c = this.f21424b.mo10542c(new mz0(rj2Var, ej2Var, tw1Var.f30385a), new pb1(wy1Var, null));
        wy1Var.m9416b(mo10542c.mo8210d());
        tw1Var.f30387c.m13060F6(mo10542c.mo8658g());
        return mo10542c.mo11322h();
    }
}
