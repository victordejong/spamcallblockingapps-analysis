package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.BinderC6255b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/dp1.class */
public final class dp1 implements ro1 {

    /* renamed from: a */
    private final long f21737a;

    /* renamed from: b */
    private final i42 f21738b;

    public dp1(long j, Context context, wo1 wo1Var, sp0 sp0Var, String str) {
        this.f21737a = j;
        ih2 mo10946t = sp0Var.mo10946t();
        mo10946t.mo10182b(context);
        mo10946t.mo10183a(new zzbdl());
        mo10946t.mo10181y(str);
        i42 zza = mo10946t.zza().zza();
        this.f21738b = zza;
        zza.mo9644X5(new cp1(this, wo1Var));
    }

    @Override // com.google.android.gms.internal.ads.ro1
    /* renamed from: a */
    public final void mo11342a(zzbdg zzbdgVar) {
        this.f21738b.mo9634k5(zzbdgVar);
    }

    @Override // com.google.android.gms.internal.ads.ro1
    /* renamed from: b */
    public final void mo11341b() {
        this.f21738b.mo9645W3(BinderC6255b.m16744m2(null));
    }

    @Override // com.google.android.gms.internal.ads.ro1
    /* renamed from: c */
    public final void mo11340c() {
        this.f21738b.mo9638g();
    }
}
