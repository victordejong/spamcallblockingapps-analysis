package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzf;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aja.class */
public final class aja implements aiy {

    /* renamed from: a  reason: collision with root package name */
    private zzf f23409a;

    public aja(zzf zzfVar) {
        this.f23409a = zzfVar;
    }

    @Override // com.google.android.gms.internal.ads.aiy
    public final void a(Map<String, String> map) {
        this.f23409a.zzas(Boolean.parseBoolean(map.get("content_url_opted_out")));
    }
}
