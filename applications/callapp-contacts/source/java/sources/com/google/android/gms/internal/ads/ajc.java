package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzf;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ajc.class */
public final class ajc implements aiy {

    /* renamed from: a */
    private zzf f42198a;

    public ajc(zzf zzfVar) {
        this.f42198a = zzfVar;
    }

    @Override // com.google.android.gms.internal.ads.aiy
    /* renamed from: a */
    public final void mo18642a(Map<String, String> map) {
        this.f42198a.zzat(Boolean.parseBoolean(map.get("content_vertical_opted_out")));
    }
}
