package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcvz.class */
public final class zzcvz implements zzcvr {
    private final zzebt zza;

    public zzcvz(zzebt zzebtVar) {
        this.zza = zzebtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcvr
    public final void zza(Map<String, String> map) {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzgQ)).booleanValue()) {
            return;
        }
        String str = map.get("policy_violations");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.zza.zzk(str);
    }
}
