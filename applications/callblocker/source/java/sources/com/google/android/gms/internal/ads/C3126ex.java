package com.google.android.gms.internal.ads;

import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.ex */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ex.class */
final class C3126ex implements AbstractC3131fa<act> {
    @Override // com.google.android.gms.internal.ads.AbstractC3131fa
    /* renamed from: a */
    public final /* synthetic */ void mo7414a(act actVar, Map map) {
        act actVar2 = actVar;
        if (map.keySet().contains("start")) {
            actVar2.mo13445e(true);
        }
        if (map.keySet().contains("stop")) {
            actVar2.mo13445e(false);
        }
    }
}
