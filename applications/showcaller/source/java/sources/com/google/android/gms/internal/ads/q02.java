package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.C5722o1;
import com.google.android.gms.dynamic.BinderC6255b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/q02.class */
public final class q02 implements xw1<fk1, r90, my1> {

    /* renamed from: a */
    private final Context f28274a;

    /* renamed from: b */
    private final kk1 f28275b;

    public q02(Context context, kk1 kk1Var) {
        this.f28274a = context;
        this.f28275b = kk1Var;
    }

    @Override // com.google.android.gms.internal.ads.xw1
    /* renamed from: a */
    public final void mo8657a(rj2 rj2Var, ej2 ej2Var, tw1<r90, my1> tw1Var) {
        try {
            tw1Var.f30386b.mo11650B0(ej2Var.f22214V);
            if (rj2Var.f28998a.f27577a.f32088o.f27162a == 3) {
                tw1Var.f30386b.mo11643f2(ej2Var.f22209Q, ej2Var.f22250v.toString(), rj2Var.f28998a.f27577a.f32077d, BinderC6255b.m16744m2(this.f28274a), new n02(this, tw1Var, null), tw1Var.f30387c);
            } else {
                tw1Var.f30386b.mo11641q5(ej2Var.f22209Q, ej2Var.f22250v.toString(), rj2Var.f28998a.f27577a.f32077d, BinderC6255b.m16744m2(this.f28274a), new n02(this, tw1Var, null), tw1Var.f30387c);
            }
        } catch (RemoteException e) {
            C5722o1.m17989l("Remote exception loading a rewarded RTB ad", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.xw1
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ fk1 mo8656b(rj2 rj2Var, ej2 ej2Var, tw1<r90, my1> tw1Var) {
        wy1 wy1Var = new wy1(ej2Var, tw1Var.f30386b, true);
        gk1 mo13871b = this.f28275b.mo13871b(new mz0(rj2Var, ej2Var, tw1Var.f30385a), new hk1(wy1Var));
        wy1Var.m9416b(mo13871b.mo8210d());
        tw1Var.f30387c.m13060F6(mo13871b.mo8203n());
        return mo13871b.mo8209h();
    }
}
