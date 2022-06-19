package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbrv.class */
public final class zzbrv implements zzbrt<zzcop> {
    private final zzbrw zza;

    public zzbrv(zzbrw zzbrwVar, byte[] bArr) {
        this.zza = zzbrwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbrt
    public final /* bridge */ /* synthetic */ void zza(zzcop zzcopVar, Map map) {
        zzcop zzcopVar2 = zzcopVar;
        boolean equals = "1".equals(map.get("transparentBackground"));
        boolean equals2 = "1".equals(map.get("blur"));
        float f = 0.0f;
        try {
            if (map.get("blurRadius") != null) {
                f = Float.parseFloat((String) map.get("blurRadius"));
            }
        } catch (NumberFormatException e) {
            zzciz.zzh("Fail to parse float", e);
            f = 0.0f;
        }
        this.zza.zzc(equals);
        this.zza.zzb(equals2, f);
        zzcopVar2.zzav(equals);
    }
}
