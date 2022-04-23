package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bbq.class */
final class bbq implements hi<Object> {

    /* renamed from: a  reason: collision with root package name */
    private WeakReference<bbm> f24131a;

    private bbq(bbm bbmVar) {
        this.f24131a = new WeakReference<>(bbmVar);
    }

    @Override // com.google.android.gms.internal.ads.hi
    public final void a(Object obj, Map<String, String> map) {
        bbm bbmVar = this.f24131a.get();
        if (bbmVar != null) {
            bbmVar.f24121a.a();
        }
    }
}
