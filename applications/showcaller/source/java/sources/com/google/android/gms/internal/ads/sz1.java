package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC6255b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sz1.class */
public final class sz1 implements xw1<me1, r90, my1> {

    /* renamed from: a */
    private final Context f29746a;

    /* renamed from: b */
    private final fd1 f29747b;

    /* renamed from: c */
    private h80 f29748c;

    /* renamed from: d */
    private final zzcgz f29749d;

    public sz1(Context context, fd1 fd1Var, zzcgz zzcgzVar) {
        this.f29746a = context;
        this.f29747b = fd1Var;
        this.f29749d = zzcgzVar;
    }

    @Override // com.google.android.gms.internal.ads.xw1
    /* renamed from: a */
    public final void mo8657a(rj2 rj2Var, ej2 ej2Var, tw1<r90, my1> tw1Var) {
        try {
            tw1Var.f30386b.mo11650B0(ej2Var.f22214V);
            if (this.f29749d.f33856f < ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25672d1)).intValue()) {
                tw1Var.f30386b.mo11642j3(ej2Var.f22209Q, ej2Var.f22250v.toString(), rj2Var.f28998a.f27577a.f32077d, BinderC6255b.m16744m2(this.f29746a), new qz1(this, tw1Var, null), tw1Var.f30387c);
            } else {
                tw1Var.f30386b.mo11647Y4(ej2Var.f22209Q, ej2Var.f22250v.toString(), rj2Var.f28998a.f27577a.f32077d, BinderC6255b.m16744m2(this.f29746a), new qz1(this, tw1Var, null), tw1Var.f30387c, rj2Var.f28998a.f27577a.f32082i);
            }
        } catch (RemoteException e) {
            throw new zzfaw(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.xw1
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ me1 mo8656b(rj2 rj2Var, ej2 ej2Var, tw1<r90, my1> tw1Var) {
        if (rj2Var.f28998a.f27577a.f32080g.contains(Integer.toString(6))) {
            re1 m11545B = re1.m11545B(this.f29748c);
            if (!rj2Var.f28998a.f27577a.f32080g.contains(Integer.toString(m11545B.m11513d0()))) {
                throw new zzehs(1, "No corresponding native ad listener");
            }
            te1 mo10225d = this.f29747b.mo10225d(new mz0(rj2Var, ej2Var, tw1Var.f30385a), new df1(m11545B), new sg1(null, null, this.f29748c, null));
            tw1Var.f30387c.m13060F6(mo10225d.mo8658g());
            return mo10225d.mo10342h();
        }
        throw new zzehs(2, "Unified must be used for RTB.");
    }
}
