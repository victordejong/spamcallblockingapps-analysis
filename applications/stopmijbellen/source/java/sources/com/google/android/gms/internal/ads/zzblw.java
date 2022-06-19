package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzblw.class */
public final class zzblw {
    private final Map<String, zzblv> zza = new HashMap();
    private final zzbly zzb;

    public zzblw(zzbly zzblyVar) {
        this.zzb = zzblyVar;
    }

    public final zzbly zza() {
        return this.zzb;
    }

    public final void zzb(String str, zzblv zzblvVar) {
        this.zza.put(str, zzblvVar);
    }

    public final void zzc(String str, String str2, long j) {
        zzbly zzblyVar = this.zzb;
        zzblv zzblvVar = this.zza.get(str2);
        if (zzblvVar != null) {
            zzblyVar.zze(zzblvVar, j, str);
        }
        this.zza.put(str, new zzblv(j, null, null));
    }
}
