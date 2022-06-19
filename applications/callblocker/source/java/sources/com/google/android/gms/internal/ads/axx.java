package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/axx.class */
public final class axx implements AbstractC3131fa<Object> {

    /* renamed from: a */
    private WeakReference<axw> f10561a;

    /* JADX INFO: Access modifiers changed from: private */
    public axx(axw axwVar) {
        this.f10561a = new WeakReference<>(axwVar);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3131fa
    /* renamed from: a */
    public final void mo7414a(Object obj, Map<String, String> map) {
        aqh aqhVar;
        axw axwVar = this.f10561a.get();
        if (axwVar == null) {
            return;
        }
        aqhVar = axwVar.f10542g;
        aqhVar.m12811a();
    }
}
