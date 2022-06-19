package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcvl.class */
public final class zzcvl implements zzcro<zzdog, zzctg> {
    private final zzcin zzgmw;
    private final Map<String, zzcrl<zzdog, zzctg>> zzgvp = new HashMap();

    public zzcvl(zzcin zzcinVar) {
        this.zzgmw = zzcinVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcro
    public final zzcrl<zzdog, zzctg> zzf(String str, JSONObject jSONObject) throws zzdnt {
        synchronized (this) {
            zzcrl<zzdog, zzctg> zzcrlVar = this.zzgvp.get(str);
            zzcrl<zzdog, zzctg> zzcrlVar2 = zzcrlVar;
            if (zzcrlVar == null) {
                zzdog zzd = this.zzgmw.zzd(str, jSONObject);
                if (zzd == null) {
                    return null;
                }
                zzcrlVar2 = new zzcrl<>(zzd, new zzctg(), str);
                this.zzgvp.put(str, zzcrlVar2);
            }
            return zzcrlVar2;
        }
    }
}
