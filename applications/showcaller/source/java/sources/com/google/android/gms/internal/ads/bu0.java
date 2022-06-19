package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bu0.class */
public final class bu0 implements pt0 {

    /* renamed from: a */
    private final dj2 f20964a;

    public bu0(dj2 dj2Var) {
        this.f20964a = dj2Var;
    }

    @Override // com.google.android.gms.internal.ads.pt0
    /* renamed from: a */
    public final void mo8187a(Map<String, String> map) {
        String str = map.get("render_in_browser");
        if (!TextUtils.isEmpty(str)) {
            try {
                this.f20964a.m15787a(Boolean.parseBoolean(str));
            } catch (Exception e) {
                throw new IllegalStateException("Invalid render_in_browser state");
            }
        }
    }
}
