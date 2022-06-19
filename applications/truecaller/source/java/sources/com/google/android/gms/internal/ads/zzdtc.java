package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdtc.class */
public final class zzdtc {
    private final Map<String, zzdtb> zza = new HashMap();

    public final void zza(String str, zzfbi zzfbiVar) {
        synchronized (this) {
            if (this.zza.containsKey(str)) {
                return;
            }
            try {
                this.zza.put(str, new zzdtb(str, zzfbiVar.zzz(), zzfbiVar.zzA()));
            } catch (zzfaw e) {
            }
        }
    }

    public final void zzb(String str, zzbxn zzbxnVar) {
        synchronized (this) {
            if (this.zza.containsKey(str)) {
                return;
            }
            try {
                this.zza.put(str, new zzdtb(str, zzbxnVar.zzf(), zzbxnVar.zzg()));
            } catch (Throwable th) {
            }
        }
    }

    public final zzdtb zzc(String str) {
        zzdtb zzdtbVar;
        synchronized (this) {
            zzdtbVar = this.zza.get(str);
        }
        return zzdtbVar;
    }

    public final zzdtb zzd(List<String> list) {
        for (String str : list) {
            zzdtb zzc = zzc(str);
            if (zzc != null) {
                return zzc;
            }
        }
        return null;
    }
}
