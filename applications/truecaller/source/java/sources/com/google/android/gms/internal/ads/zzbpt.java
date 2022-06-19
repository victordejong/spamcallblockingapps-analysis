package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbpt.class */
public final class zzbpt implements zzbpr<zzcml> {
    private final zzbpu zza;

    public zzbpt(zzbpu zzbpuVar, byte[] bArr) {
        this.zza = zzbpuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final /* bridge */ /* synthetic */ void zza(zzcml zzcmlVar, Map map) {
        zzcml zzcmlVar2 = zzcmlVar;
        boolean equals = "1".equals(map.get("transparentBackground"));
        boolean equals2 = "1".equals(map.get("blur"));
        float f = 0.0f;
        try {
            if (map.get("blurRadius") != null) {
                f = Float.parseFloat((String) map.get("blurRadius"));
            }
        } catch (NumberFormatException e) {
            zzcgt.zzg("Fail to parse float", e);
            f = 0.0f;
        }
        this.zza.zza(equals);
        this.zza.zzb(equals2, f);
        zzcmlVar2.zzaD(equals);
    }
}
