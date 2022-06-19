package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.overlay.AbstractC5659u;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.C5651m;
import com.google.android.gms.ads.internal.util.C5679c2;
import com.google.android.gms.ads.internal.zzj;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ty1.class */
public final class ty1 implements qc1 {

    /* renamed from: a */
    private final Context f30420a;

    /* renamed from: b */
    private final zzcgz f30421b;

    /* renamed from: c */
    private final r03<mb1> f30422c;

    /* renamed from: d */
    private final ej2 f30423d;

    /* renamed from: e */
    private final wn0 f30424e;

    /* renamed from: f */
    private final xj2 f30425f;

    /* renamed from: g */
    private final q20 f30426g;

    /* renamed from: h */
    private final boolean f30427h;

    public ty1(Context context, zzcgz zzcgzVar, r03<mb1> r03Var, ej2 ej2Var, wn0 wn0Var, xj2 xj2Var, boolean z, q20 q20Var) {
        this.f30420a = context;
        this.f30421b = zzcgzVar;
        this.f30422c = r03Var;
        this.f30423d = ej2Var;
        this.f30424e = wn0Var;
        this.f30425f = xj2Var;
        this.f30426g = q20Var;
        this.f30427h = z;
    }

    @Override // com.google.android.gms.internal.ads.qc1
    /* renamed from: a */
    public final void mo9015a(boolean z, Context context, l31 l31Var) {
        mb1 mb1Var = (mb1) k03.m13986r(this.f30422c);
        this.f30424e.mo7923Y0(true);
        boolean m12046c = this.f30427h ? this.f30426g.m12046c(false) : false;
        C5667s.m18160d();
        zzj zzjVar = new zzj(m12046c, C5679c2.m18063l(this.f30420a), this.f30427h ? this.f30426g.m12045d() : false, this.f30427h ? this.f30426g.m12044e() : 0.0f, -1, z, this.f30423d.f22203K, false);
        if (l31Var != null) {
            l31Var.m13735a();
        }
        C5667s.m18161c();
        gc1 mo11320j = mb1Var.mo11320j();
        wn0 wn0Var = this.f30424e;
        ej2 ej2Var = this.f30423d;
        int i = ej2Var.f22205M;
        zzcgz zzcgzVar = this.f30421b;
        String str = ej2Var.f22194B;
        kj2 kj2Var = ej2Var.f22247s;
        C5651m.m18186a(context, new AdOverlayInfoParcel((AbstractC6673kq) null, mo11320j, (AbstractC5659u) null, wn0Var, i, zzcgzVar, str, zzjVar, kj2Var.f25234b, kj2Var.f25233a, this.f30425f.f32079f, l31Var), true);
    }
}
