package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bbn.class */
final class bbn implements AbstractC12607hi<Object> {

    /* renamed from: a */
    private WeakReference<bbm> f43474a;

    /* JADX INFO: Access modifiers changed from: private */
    public bbn(bbm bbmVar) {
        this.f43474a = new WeakReference<>(bbmVar);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12607hi
    /* renamed from: a */
    public final void mo14250a(Object obj, Map<String, String> map) {
        bbm bbmVar = this.f43474a.get();
        if (bbmVar == null) {
            return;
        }
        bbmVar.f43450b.onAdClicked();
    }
}
