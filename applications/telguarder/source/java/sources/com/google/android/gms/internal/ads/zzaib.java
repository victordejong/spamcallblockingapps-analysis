package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaib.class */
final class zzaib implements zzaif<zzbeb> {
    @Override // com.google.android.gms.internal.ads.zzaif
    public final /* synthetic */ void zza(zzbeb zzbebVar, Map map) {
        zzbeb zzbebVar2 = zzbebVar;
        String str = (String) map.get("action");
        if ("pause".equals(str)) {
            zzbebVar2.zzkn();
        } else if (!"resume".equals(str)) {
        } else {
            zzbebVar2.zzko();
        }
    }
}
