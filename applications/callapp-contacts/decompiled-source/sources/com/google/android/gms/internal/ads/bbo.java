package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bbo.class */
final class bbo implements hi<Object> {

    /* renamed from: a  reason: collision with root package name */
    private WeakReference<bbm> f24126a;

    private bbo(bbm bbmVar) {
        this.f24126a = new WeakReference<>(bbmVar);
    }

    @Override // com.google.android.gms.internal.ads.hi
    public final void a(Object obj, Map<String, String> map) {
        bbm bbmVar = this.f24126a.get();
        if (bbmVar != null && "_ac".equals(map.get("eventName"))) {
            bbmVar.f24122b.onAdClicked();
        }
    }
}
