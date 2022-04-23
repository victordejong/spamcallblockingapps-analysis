package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzf;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ajc.class */
public final class ajc implements aiy {

    /* renamed from: a  reason: collision with root package name */
    private zzf f23412a;

    public ajc(zzf zzfVar) {
        this.f23412a = zzfVar;
    }

    @Override // com.google.android.gms.internal.ads.aiy
    public final void a(Map<String, String> map) {
        this.f23412a.zzat(Boolean.parseBoolean(map.get("content_vertical_opted_out")));
    }
}
