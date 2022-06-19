package com.google.android.gms.internal.ads;

import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.ev */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ev.class */
final class C3124ev implements AbstractC3131fa<act> {
    @Override // com.google.android.gms.internal.ads.AbstractC3131fa
    /* renamed from: a */
    public final /* synthetic */ void mo7414a(act actVar, Map map) {
        act actVar2 = actVar;
        String str = (String) map.get("action");
        if ("pause".equals(str)) {
            actVar2.mo12026a();
        } else if (!"resume".equals(str)) {
        } else {
            actVar2.mo12025b();
        }
    }
}
