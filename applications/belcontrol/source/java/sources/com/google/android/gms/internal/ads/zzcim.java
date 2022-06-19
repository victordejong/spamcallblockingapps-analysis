package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcim.class */
public final class zzcim {
    @GuardedBy("this")
    private final Map<String, zzcij> zzgkj = new HashMap();

    @Nullable
    private final zzcij zzgd(String str) {
        zzcij zzcijVar;
        synchronized (this) {
            zzcijVar = this.zzgkj.get(str);
        }
        return zzcijVar;
    }

    public final void zza(String str, zzapk zzapkVar) {
        synchronized (this) {
            if (this.zzgkj.containsKey(str)) {
                return;
            }
            try {
                this.zzgkj.put(str, new zzcij(str, zzapkVar.zzvc(), zzapkVar.zzvd()));
            } catch (Throwable th) {
            }
        }
    }

    public final void zza(String str, zzdog zzdogVar) {
        synchronized (this) {
            if (this.zzgkj.containsKey(str)) {
                return;
            }
            try {
                this.zzgkj.put(str, new zzcij(str, zzdogVar.zzvc(), zzdogVar.zzvd()));
            } catch (zzdnt e) {
            }
        }
    }

    @Nullable
    public final zzcij zzi(List<String> list) {
        for (String str : list) {
            zzcij zzgd = zzgd(str);
            if (zzgd != null) {
                return zzgd;
            }
        }
        return null;
    }
}
