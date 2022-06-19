package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.overlay.AbstractC5659u;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.C5651m;
import com.google.android.gms.ads.internal.zzj;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ex1.class */
public final class ex1 implements qc1 {

    /* renamed from: a */
    private final zzcgz f22589a;

    /* renamed from: b */
    private final r03<hw0> f22590b;

    /* renamed from: c */
    private final ej2 f22591c;

    /* renamed from: d */
    private final wn0 f22592d;

    /* renamed from: e */
    private final xj2 f22593e;

    /* renamed from: f */
    private final q20 f22594f;

    /* renamed from: g */
    private final boolean f22595g;

    public ex1(zzcgz zzcgzVar, r03<hw0> r03Var, ej2 ej2Var, wn0 wn0Var, xj2 xj2Var, boolean z, q20 q20Var) {
        this.f22589a = zzcgzVar;
        this.f22590b = r03Var;
        this.f22591c = ej2Var;
        this.f22592d = wn0Var;
        this.f22593e = xj2Var;
        this.f22595g = z;
        this.f22594f = q20Var;
    }

    @Override // com.google.android.gms.internal.ads.qc1
    /* renamed from: a */
    public final void mo9015a(boolean z, Context context, l31 l31Var) {
        hw0 hw0Var = (hw0) k03.m13986r(this.f22590b);
        this.f22592d.mo7923Y0(true);
        zzj zzjVar = new zzj(this.f22595g ? this.f22594f.m12046c(true) : true, true, this.f22595g ? this.f22594f.m12045d() : false, this.f22595g ? this.f22594f.m12044e() : 0.0f, -1, z, this.f22591c.f22203K, false);
        if (l31Var != null) {
            l31Var.m13735a();
        }
        C5667s.m18161c();
        gc1 mo9082j = hw0Var.mo9082j();
        wn0 wn0Var = this.f22592d;
        int i = this.f22591c.f22205M;
        if (i == -1) {
            zzbdr zzbdrVar = this.f22593e.f32083j;
            if (zzbdrVar != null) {
                int i2 = zzbdrVar.f33705d;
                if (i2 == 1) {
                    i = 7;
                } else if (i2 == 2) {
                    i = 6;
                }
            }
            ei0.m15469a("Error setting app open orientation; no targeting orientation available.");
            i = this.f22591c.f22205M;
        }
        zzcgz zzcgzVar = this.f22589a;
        ej2 ej2Var = this.f22591c;
        String str = ej2Var.f22194B;
        kj2 kj2Var = ej2Var.f22247s;
        C5651m.m18186a(context, new AdOverlayInfoParcel((AbstractC6673kq) null, mo9082j, (AbstractC5659u) null, wn0Var, i, zzcgzVar, str, zzjVar, kj2Var.f25234b, kj2Var.f25233a, this.f22593e.f32079f, l31Var), true);
    }
}
