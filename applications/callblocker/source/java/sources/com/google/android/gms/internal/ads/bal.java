package com.google.android.gms.internal.ads;

import androidx.p013b.C0373a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bal.class */
public final class bal implements aqi {

    /* renamed from: a */
    private final ayx f10786a;

    /* renamed from: b */
    private final azd f10787b;

    public bal(ayx ayxVar, azd azdVar) {
        this.f10786a = ayxVar;
        this.f10787b = azdVar;
    }

    @Override // com.google.android.gms.internal.ads.aqi
    /* renamed from: b */
    public final void mo11652b() {
        if (this.f10786a.m12233x() == null) {
            return;
        }
        act m12234w = this.f10786a.m12234w();
        act m12235v = this.f10786a.m12235v();
        if (m12234w != null) {
            m12235v = m12234w;
        } else if (m12235v == null) {
            m12235v = null;
        }
        if (!this.f10787b.mo12220d() || m12235v == null) {
            return;
        }
        m12235v.mo7737a("onSdkImpression", new C0373a());
    }
}
