package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzelw.class */
public final class zzelw implements zzehv<zzfev, zzejq> {
    @GuardedBy("this")
    private final Map<String, zzehw<zzfev, zzejq>> zza = new HashMap();
    private final zzdww zzb;

    public zzelw(zzdww zzdwwVar) {
        this.zzb = zzdwwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzehv
    public final zzehw<zzfev, zzejq> zza(String str, JSONObject jSONObject) throws zzfek {
        zzehw<zzfev, zzejq> zzehwVar;
        synchronized (this) {
            zzehw<zzfev, zzejq> zzehwVar2 = this.zza.get(str);
            zzehwVar = zzehwVar2;
            if (zzehwVar2 == null) {
                zzehwVar = new zzehw<>(this.zzb.zzb(str, jSONObject), new zzejq(), str);
                this.zza.put(str, zzehwVar);
            }
        }
        return zzehwVar;
    }
}
