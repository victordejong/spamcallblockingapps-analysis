package com.google.android.gms.internal.ads;

import androidx.p023b.C0428a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bem.class */
public final class bem implements ash {

    /* renamed from: a */
    private final bcr f43726a;

    /* renamed from: b */
    private final bcv f43727b;

    public bem(bcr bcrVar, bcv bcvVar) {
        this.f43726a = bcrVar;
        this.f43727b = bcvVar;
    }

    @Override // com.google.android.gms.internal.ads.ash
    /* renamed from: b */
    public final void mo17547b() {
        if (this.f43726a.m18148x() == null) {
            return;
        }
        adt m18149w = this.f43726a.m18149w();
        adt m18150v = this.f43726a.m18150v();
        if (m18149w != null) {
            m18150v = m18149w;
        } else if (m18150v == null) {
            m18150v = null;
        }
        if (!this.f43727b.mo18139d() || m18150v == null) {
            return;
        }
        m18150v.mo13770a("onSdkImpression", new C0428a());
    }
}
