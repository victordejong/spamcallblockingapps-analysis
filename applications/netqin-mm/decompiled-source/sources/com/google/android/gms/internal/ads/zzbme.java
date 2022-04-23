package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbme.class */
public final class zzbme implements zzbma {

    /* renamed from: a */
    public final zzdnt f25152a;

    public zzbme(zzdnt zzdntVar) {
        this.f25152a = zzdntVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbma
    /* renamed from: a */
    public final void mo15325a(Map<String, String> map) {
        String str = map.get("render_in_browser");
        if (!TextUtils.isEmpty(str)) {
            try {
                this.f25152a.m13455a(Boolean.parseBoolean(str));
            } catch (Exception e) {
                throw new IllegalStateException("Invalid render_in_browser state");
            }
        }
    }
}
