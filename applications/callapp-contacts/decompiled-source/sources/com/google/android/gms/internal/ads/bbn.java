package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bbn.class */
final class bbn implements hi<Object> {

    /* renamed from: a  reason: collision with root package name */
    private WeakReference<bbm> f24125a;

    private bbn(bbm bbmVar) {
        this.f24125a = new WeakReference<>(bbmVar);
    }

    @Override // com.google.android.gms.internal.ads.hi
    public final void a(Object obj, Map<String, String> map) {
        bbm bbmVar = this.f24125a.get();
        if (bbmVar != null) {
            bbmVar.f24122b.onAdClicked();
        }
    }
}
