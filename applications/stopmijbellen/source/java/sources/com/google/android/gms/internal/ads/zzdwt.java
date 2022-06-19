package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdwt.class */
public final class zzdwt {
    @GuardedBy("this")
    private final Map<String, zzdws> zza = new HashMap();

    @Nullable
    public final zzdws zza(String str) {
        zzdws zzdwsVar;
        synchronized (this) {
            zzdwsVar = this.zza.get(str);
        }
        return zzdwsVar;
    }

    @Nullable
    public final zzdws zzb(List<String> list) {
        for (String str : list) {
            zzdws zza = zza(str);
            if (zza != null) {
                return zza;
            }
        }
        return null;
    }

    public final void zzc(String str, zzfev zzfevVar) {
        synchronized (this) {
            if (this.zza.containsKey(str)) {
                return;
            }
            try {
                this.zza.put(str, new zzdws(str, zzfevVar.zze(), zzfevVar.zzf()));
            } catch (zzfek e) {
            }
        }
    }

    public final void zzd(String str, zzbzo zzbzoVar) {
        synchronized (this) {
            if (this.zza.containsKey(str)) {
                return;
            }
            try {
                this.zza.put(str, new zzdws(str, zzbzoVar.zzf(), zzbzoVar.zzg()));
            } catch (Throwable th) {
            }
        }
    }
}
