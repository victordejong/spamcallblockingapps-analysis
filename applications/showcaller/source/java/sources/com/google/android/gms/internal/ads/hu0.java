package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hu0.class */
public final class hu0 implements pt0 {

    /* renamed from: a */
    private final lq1 f24042a;

    public hu0(lq1 lq1Var) {
        this.f24042a = lq1Var;
    }

    @Override // com.google.android.gms.internal.ads.pt0
    /* renamed from: a */
    public final void mo8187a(Map<String, String> map) {
        String str = map.get("test_mode_enabled");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f24042a.m13453c(str.equals("true"));
    }
}
