package com.google.android.gms.internal.ads;

import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.ey */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ey.class */
final class C3127ey implements AbstractC3131fa<act> {
    @Override // com.google.android.gms.internal.ads.AbstractC3131fa
    /* renamed from: a */
    public final /* synthetic */ void mo7414a(act actVar, Map map) {
        act actVar2 = actVar;
        if (map.keySet().contains("start")) {
            actVar2.mo13426v().mo13507h();
        } else if (map.keySet().contains("stop")) {
            actVar2.mo13426v().mo13506i();
        } else if (!map.keySet().contains("cancel")) {
        } else {
            actVar2.mo13426v().mo13505j();
        }
    }
}
