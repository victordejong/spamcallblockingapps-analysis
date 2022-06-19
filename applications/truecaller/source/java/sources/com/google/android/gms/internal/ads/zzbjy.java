package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbjy.class */
public final class zzbjy {
    private final Map<String, zzbjx> zza = new HashMap();
    private final zzbka zzb;

    public zzbjy(zzbka zzbkaVar) {
        this.zzb = zzbkaVar;
    }

    public final void zza(String str, zzbjx zzbjxVar) {
        this.zza.put(str, zzbjxVar);
    }

    public final void zzb(String str, String str2, long j) {
        zzbka zzbkaVar = this.zzb;
        zzbjx zzbjxVar = this.zza.get(str2);
        if (zzbjxVar != null) {
            zzbkaVar.zzb(zzbjxVar, j, str);
        }
        this.zza.put(str, new zzbjx(j, null, null));
    }

    public final zzbka zzc() {
        return this.zzb;
    }
}
