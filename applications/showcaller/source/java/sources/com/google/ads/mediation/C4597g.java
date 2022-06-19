package com.google.ads.mediation;

import com.google.android.gms.ads.AbstractC5596b;
import com.google.android.gms.ads.C5756j;
import com.google.android.gms.ads.admanager.AbstractC5595b;
import com.google.android.gms.ads.mediation.AbstractC5776i;
import com.google.android.gms.internal.ads.AbstractC6673kq;
/* renamed from: com.google.ads.mediation.g */
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/g.class */
final class C4597g extends AbstractC5596b implements AbstractC5595b, AbstractC6673kq {

    /* renamed from: d */
    final AbstractAdViewAdapter f13996d;

    /* renamed from: e */
    final AbstractC5776i f13997e;

    public C4597g(AbstractAdViewAdapter abstractAdViewAdapter, AbstractC5776i abstractC5776i) {
        this.f13996d = abstractAdViewAdapter;
        this.f13997e = abstractC5776i;
    }

    @Override // com.google.android.gms.ads.admanager.AbstractC5595b
    /* renamed from: d */
    public final void mo18298d(String str, String str2) {
        this.f13997e.mo10779j(this.f13996d, str, str2);
    }

    @Override // com.google.android.gms.ads.AbstractC5596b
    /* renamed from: m */
    public final void mo9080m() {
        this.f13997e.mo10788a(this.f13996d);
    }

    @Override // com.google.android.gms.ads.AbstractC5596b
    /* renamed from: n */
    public final void mo9079n(C5756j c5756j) {
        this.f13997e.mo10784e(this.f13996d, c5756j);
    }

    @Override // com.google.android.gms.ads.AbstractC5596b
    /* renamed from: q */
    public final void mo9077q() {
        this.f13997e.mo10781h(this.f13996d);
    }

    @Override // com.google.android.gms.ads.AbstractC5596b
    /* renamed from: r */
    public final void mo9076r() {
        this.f13997e.mo10774o(this.f13996d);
    }

    @Override // com.google.android.gms.ads.AbstractC5596b, com.google.android.gms.internal.ads.AbstractC6673kq
    /* renamed from: z0 */
    public final void mo7877z0() {
        this.f13997e.mo10783f(this.f13996d);
    }
}
