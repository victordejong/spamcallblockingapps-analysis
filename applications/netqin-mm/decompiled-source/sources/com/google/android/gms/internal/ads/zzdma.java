package com.google.android.gms.internal.ads;

import android.content.Context;
import p131c.p161d.p170b.p224d.p252g.p253a.C3931pw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdma.class */
public final class zzdma implements zzeoy<zzdlv<zzcjj, zzcjg>> {

    /* renamed from: a */
    public final zzeph<Context> f27496a;

    /* renamed from: b */
    public final zzeph<zzdpw> f27497b;

    /* renamed from: c */
    public final zzeph<zzdqo> f27498c;

    public zzdma(zzeph<Context> zzephVar, zzeph<zzdpw> zzephVar2, zzeph<zzdqo> zzephVar3) {
        this.f27496a = zzephVar;
        this.f27497b = zzephVar2;
        this.f27498c = zzephVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzdlv zzdlvVar;
        Context context = this.f27496a.get();
        zzdpw zzdpwVar = this.f27497b.get();
        zzdqo zzdqoVar = this.f27498c.get();
        if (((Integer) zzwm.m11166e().m16921a(zzabb.f23872p3)).intValue() > 0) {
            zzdqn a = zzdqoVar.m13308a(zzdqf.Rewarded, context, zzdpwVar, new C3931pw(new zzdku()));
            zzdlvVar = new zzdkz(new zzdlm(new zzdln()), new zzdle(a.f27751a, zzbbz.f24764a), a.f27752b, zzbbz.f24764a);
        } else {
            zzdlvVar = new zzdln();
        }
        zzepe.m12187a(zzdlvVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzdlvVar;
    }
}
