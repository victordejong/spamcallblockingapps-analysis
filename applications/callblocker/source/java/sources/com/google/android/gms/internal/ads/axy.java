package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/axy.class */
public final class axy implements AbstractC3131fa<Object> {

    /* renamed from: a */
    private WeakReference<axw> f10562a;

    /* JADX INFO: Access modifiers changed from: private */
    public axy(axw axwVar) {
        this.f10562a = new WeakReference<>(axwVar);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3131fa
    /* renamed from: a */
    public final void mo7414a(Object obj, Map<String, String> map) {
        apo apoVar;
        axw axwVar = this.f10562a.get();
        if (axwVar != null && "_ac".equals(map.get("eventName"))) {
            apoVar = axwVar.f10543h;
            apoVar.mo8200e();
        }
    }
}
