package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzg;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcvv.class */
public final class zzcvv implements zzcvr {
    private final zzg zza;

    public zzcvv(zzg zzgVar) {
        this.zza = zzgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcvr
    public final void zza(Map<String, String> map) {
        this.zza.zzx(Boolean.parseBoolean(map.get("content_vertical_opted_out")));
    }
}
