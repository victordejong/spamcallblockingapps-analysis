package com.google.android.gms.internal.ads;

import android.content.Context;
import p131c.p161d.p170b.p224d.p252g.p253a.C3931pw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdlz.class */
public final class zzdlz {
    /* renamed from: a */
    public static zzdlv<zzbnq, zzbnv> m13515a(Context context, zzdpw zzdpwVar, zzdqo zzdqoVar) {
        return m13513c(context, zzdpwVar, zzdqoVar);
    }

    /* renamed from: b */
    public static zzdlv<zzbob, zzboh> m13514b(Context context, zzdpw zzdpwVar, zzdqo zzdqoVar) {
        return m13513c(context, zzdpwVar, zzdqoVar);
    }

    /* renamed from: c */
    public static <AppOpenAdRequestComponent extends zzbtn<AppOpenAd>, AppOpenAd extends zzbqo> zzdlv<AppOpenAdRequestComponent, AppOpenAd> m13513c(Context context, zzdpw zzdpwVar, zzdqo zzdqoVar) {
        if (((Integer) zzwm.m11166e().m16921a(zzabb.f23667D3)).intValue() <= 0) {
            return new zzdln();
        }
        zzdqn a = zzdqoVar.m13308a(zzdqf.AppOpen, context, zzdpwVar, new C3931pw(new zzdku()));
        return new zzdkz(new zzdlm(new zzdln()), new zzdle(a.f27751a, zzbbz.f24764a), a.f27752b, zzbbz.f24764a);
    }
}
