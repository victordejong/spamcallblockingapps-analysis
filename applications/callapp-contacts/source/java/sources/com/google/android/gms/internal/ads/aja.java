package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzf;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aja.class */
public final class aja implements aiy {

    /* renamed from: a */
    private zzf f42195a;

    public aja(zzf zzfVar) {
        this.f42195a = zzfVar;
    }

    @Override // com.google.android.gms.internal.ads.aiy
    /* renamed from: a */
    public final void mo18642a(Map<String, String> map) {
        this.f42195a.zzas(Boolean.parseBoolean(map.get("content_url_opted_out")));
    }
}
