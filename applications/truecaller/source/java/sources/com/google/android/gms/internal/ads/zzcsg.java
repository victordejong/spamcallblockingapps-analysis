package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzg;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcsg.class */
public final class zzcsg implements zzcsc {
    private final zzg zza;

    public zzcsg(zzg zzgVar) {
        this.zza = zzgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcsc
    public final void zza(Map<String, String> map) {
        this.zza.zzg(Boolean.parseBoolean(map.get("content_vertical_opted_out")));
    }
}
