package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbpk.class */
public final class zzbpk implements zzbpr<Object> {
    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zza(Object obj, Map<String, String> map) {
        String valueOf = String.valueOf(map.get("string"));
        zzcgt.zzh(valueOf.length() != 0 ? "Received log message: ".concat(valueOf) : new String("Received log message: "));
    }
}
