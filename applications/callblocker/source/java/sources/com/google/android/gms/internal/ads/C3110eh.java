package com.google.android.gms.internal.ads;

import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.eh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/eh.class */
public final class C3110eh implements AbstractC3131fa<Object> {

    /* renamed from: a */
    private final AbstractC3113ek f16618a;

    public C3110eh(AbstractC3113ek abstractC3113ek) {
        this.f16618a = abstractC3113ek;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3131fa
    /* renamed from: a */
    public final void mo7414a(Object obj, Map<String, String> map) {
        String str = map.get("name");
        if (str == null) {
            C3556uu.m6745e("App event with no name parameter.");
        } else {
            this.f16618a.mo7859a(str, map.get("info"));
        }
    }
}
