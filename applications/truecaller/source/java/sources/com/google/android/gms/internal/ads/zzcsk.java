package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcsk.class */
public final class zzcsk implements zzcsc {
    private final zzdyc zza;

    public zzcsk(zzdyc zzdycVar) {
        this.zza = zzdycVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcsc
    public final void zza(Map<String, String> map) {
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzgF)).booleanValue()) {
            return;
        }
        String str = map.get("policy_violations");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.zza.zzl(str);
    }
}
