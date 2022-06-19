package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzf;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbji.class */
public final class zzbji implements zzbjf {
    private zzf zzedg;

    public zzbji(zzf zzfVar) {
        this.zzedg = zzfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjf
    public final void zzm(Map<String, String> map) {
        this.zzedg.zzap(Boolean.parseBoolean(map.get("content_url_opted_out")));
    }
}
