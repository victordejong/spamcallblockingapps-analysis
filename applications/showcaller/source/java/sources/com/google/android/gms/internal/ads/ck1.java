package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ck1.class */
public final class ck1 implements d30 {

    /* renamed from: d */
    private final g41 f21270d;

    /* renamed from: e */
    private final zzccl f21271e;

    /* renamed from: f */
    private final String f21272f;

    /* renamed from: g */
    private final String f21273g;

    public ck1(g41 g41Var, ej2 ej2Var) {
        this.f21270d = g41Var;
        this.f21271e = ej2Var.f22241m;
        this.f21272f = ej2Var.f22239k;
        this.f21273g = ej2Var.f22240l;
    }

    @Override // com.google.android.gms.internal.ads.d30
    /* renamed from: c */
    public final void mo8473c() {
        this.f21270d.m14984d();
    }

    @Override // com.google.android.gms.internal.ads.d30
    /* renamed from: v */
    public final void mo8472v(zzccl zzcclVar) {
        int i;
        String str;
        zzccl zzcclVar2 = this.f21271e;
        if (zzcclVar2 != null) {
            zzcclVar = zzcclVar2;
        }
        if (zzcclVar != null) {
            String str2 = zzcclVar.f33838d;
            i = zzcclVar.f33839e;
            str = str2;
        } else {
            i = 1;
            str = "";
        }
        this.f21270d.m14987S0(new kd0(str, i), this.f21272f, this.f21273g);
    }

    @Override // com.google.android.gms.internal.ads.d30
    public final void zza() {
        this.f21270d.m14983e();
    }
}
