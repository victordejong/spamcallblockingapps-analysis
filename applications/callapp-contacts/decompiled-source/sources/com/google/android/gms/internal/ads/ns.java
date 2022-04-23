package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.mediation.MediationInterscrollerAd;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ns.class */
public final class ns extends mw {

    /* renamed from: a  reason: collision with root package name */
    private final MediationInterscrollerAd f28234a;

    public ns(MediationInterscrollerAd mediationInterscrollerAd) {
        this.f28234a = mediationInterscrollerAd;
    }

    @Override // com.google.android.gms.internal.ads.mt
    public final b a() {
        return d.a(this.f28234a.getView());
    }

    @Override // com.google.android.gms.internal.ads.mt
    public final boolean b() {
        return this.f28234a.shouldDelegateInterscrollerEffect();
    }
}
