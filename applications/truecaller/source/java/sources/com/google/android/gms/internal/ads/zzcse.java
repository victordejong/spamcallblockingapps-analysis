package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzg;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcse.class */
public final class zzcse implements zzcsc {
    private final zzg zza;

    public zzcse(zzg zzgVar) {
        this.zza = zzgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcsc
    public final void zza(Map<String, String> map) {
        this.zza.zzc(Boolean.parseBoolean(map.get("content_url_opted_out")));
    }
}
