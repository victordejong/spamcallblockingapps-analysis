package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bbo.class */
final class bbo implements AbstractC12607hi<Object> {

    /* renamed from: a */
    private WeakReference<bbm> f43475a;

    /* JADX INFO: Access modifiers changed from: private */
    public bbo(bbm bbmVar) {
        this.f43475a = new WeakReference<>(bbmVar);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12607hi
    /* renamed from: a */
    public final void mo14250a(Object obj, Map<String, String> map) {
        bbm bbmVar = this.f43475a.get();
        if (bbmVar != null && "_ac".equals(map.get("eventName"))) {
            bbmVar.f43450b.onAdClicked();
        }
    }
}
