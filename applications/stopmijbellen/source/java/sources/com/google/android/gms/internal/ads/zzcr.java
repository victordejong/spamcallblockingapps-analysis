package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcr.class */
public final class zzcr {
    public static final zzcr zza = new zzcr(zzfss.zzo());
    public static final zzj<zzcr> zzb = zzco.zza;
    private final zzfss<zzcq> zzc;

    public zzcr(List<zzcq> list) {
        this.zzc = zzfss.zzm(list);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzcr.class == obj.getClass()) {
            return this.zzc.equals(((zzcr) obj).zzc);
        }
        return false;
    }

    public final int hashCode() {
        return this.zzc.hashCode();
    }
}
