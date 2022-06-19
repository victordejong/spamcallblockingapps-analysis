package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ain.class */
public final class ain implements aii {

    /* renamed from: a */
    private final cgp f9744a;

    public ain(cgp cgpVar) {
        this.f9744a = cgpVar;
    }

    @Override // com.google.android.gms.internal.ads.aii
    /* renamed from: a */
    public final void mo13094a(Map<String, String> map) {
        String str = map.get("render_in_browser");
        if (!TextUtils.isEmpty(str)) {
            try {
                this.f9744a.m11369a(Boolean.parseBoolean(str));
            } catch (Exception e) {
                throw new IllegalStateException("Invalid render_in_browser state");
            }
        }
    }
}
