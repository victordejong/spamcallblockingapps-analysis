package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzg;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcvt.class */
public final class zzcvt implements zzcvr {
    private final zzg zza;

    public zzcvt(zzg zzgVar) {
        this.zza = zzgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcvr
    public final void zza(Map<String, String> map) {
        this.zza.zzv(Boolean.parseBoolean(map.get("content_url_opted_out")));
    }
}
