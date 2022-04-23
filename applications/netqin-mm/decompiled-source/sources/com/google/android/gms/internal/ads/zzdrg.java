package com.google.android.gms.internal.ads;

import p131c.p161d.p170b.p224d.p252g.p253a.C3452cz;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdrg.class */
public final class zzdrg implements zzeoy<zzdzb> {
    /* renamed from: a */
    public static zzdrg m13284a() {
        zzdrg zzdrgVar;
        zzdrgVar = C3452cz.f12589a;
        return zzdrgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzdzb zzdzbVar;
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23706L2)).booleanValue()) {
            zzdzbVar = zzbbz.f24766c;
        } else {
            zzdzbVar = ((Boolean) zzwm.m11166e().m16921a(zzabb.f23701K2)).booleanValue() ? zzbbz.f24764a : zzbbz.f24768e;
        }
        zzepe.m12187a(zzdzbVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzdzbVar;
    }
}
