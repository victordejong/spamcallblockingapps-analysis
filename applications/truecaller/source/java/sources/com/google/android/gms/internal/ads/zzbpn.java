package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbpn.class */
public final class zzbpn implements zzbpr<zzcml> {
    @Override // com.google.android.gms.internal.ads.zzbpr
    public final /* bridge */ /* synthetic */ void zza(zzcml zzcmlVar, Map map) {
        zzcml zzcmlVar2 = zzcmlVar;
        String str = (String) map.get("action");
        if ("pause".equals(str)) {
            zzcmlVar2.zzbm();
        } else if (!"resume".equals(str)) {
        } else {
            zzcmlVar2.zzbn();
        }
    }
}
