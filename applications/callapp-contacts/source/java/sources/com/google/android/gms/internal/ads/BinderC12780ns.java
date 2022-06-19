package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.mediation.MediationInterscrollerAd;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
/* renamed from: com.google.android.gms.internal.ads.ns */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ns.class */
public final class BinderC12780ns extends AbstractBinderC12756mw {

    /* renamed from: a */
    private final MediationInterscrollerAd f49598a;

    public BinderC12780ns(MediationInterscrollerAd mediationInterscrollerAd) {
        this.f49598a = mediationInterscrollerAd;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12753mt
    /* renamed from: a */
    public final AbstractC12126b mo14438a() {
        return BinderC12129d.m18979a(this.f49598a.getView());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12753mt
    /* renamed from: b */
    public final boolean mo14437b() {
        return this.f49598a.shouldDelegateInterscrollerEffect();
    }
}
