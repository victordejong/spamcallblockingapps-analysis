package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzf;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbjk.class */
public final class zzbjk implements zzbjf {
    private zzf zzedg;

    public zzbjk(zzf zzfVar) {
        this.zzedg = zzfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjf
    public final void zzm(Map<String, String> map) {
        this.zzedg.zzaq(Boolean.parseBoolean(map.get("content_vertical_opted_out")));
    }
}
