package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xt0.class */
public final class xt0 implements pt0 {

    /* renamed from: a */
    private final lq1 f32288a;

    public xt0(lq1 lq1Var) {
        this.f32288a = lq1Var;
    }

    @Override // com.google.android.gms.internal.ads.pt0
    /* renamed from: a */
    public final void mo8187a(Map<String, String> map) {
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25482F6)).booleanValue()) {
            return;
        }
        String str = map.get("policy_violations");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f32288a.m13444l(str);
    }
}
