package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbrp.class */
final class zzbrp implements zzbrt<zzcop> {
    @Override // com.google.android.gms.internal.ads.zzbrt
    public final /* bridge */ /* synthetic */ void zza(zzcop zzcopVar, Map map) {
        zzcop zzcopVar2 = zzcopVar;
        String str = (String) map.get("action");
        if ("pause".equals(str)) {
            zzcopVar2.zzbv();
        } else if (!"resume".equals(str)) {
        } else {
            zzcopVar2.zzbw();
        }
    }
}
