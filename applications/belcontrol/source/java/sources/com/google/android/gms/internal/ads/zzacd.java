package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzacd.class */
public final class zzacd {
    private final Map<String, zzaca> zzdbh = new HashMap();
    private final zzacc zzdbi;

    public zzacd(zzacc zzaccVar) {
        this.zzdbi = zzaccVar;
    }

    public final void zza(String str, zzaca zzacaVar) {
        this.zzdbh.put(str, zzacaVar);
    }

    public final void zzb(String str, String str2, long j) {
        zzacc zzaccVar = this.zzdbi;
        zzaca zzacaVar = this.zzdbh.get(str2);
        if (zzaccVar != null && zzacaVar != null) {
            zzaccVar.zza(zzacaVar, j, str);
        }
        Map<String, zzaca> map = this.zzdbh;
        zzacc zzaccVar2 = this.zzdbi;
        map.put(str, zzaccVar2 == null ? null : zzaccVar2.zzex(j));
    }

    public final zzacc zzsp() {
        return this.zzdbi;
    }
}
