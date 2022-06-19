package com.google.ads.mediation;

import com.google.android.gms.ads.AbstractC5621i;
import com.google.android.gms.ads.mediation.AbstractC5781n;
/* renamed from: com.google.ads.mediation.i */
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/i.class */
final class C4599i extends AbstractC5621i {

    /* renamed from: a */
    final AbstractAdViewAdapter f14000a;

    /* renamed from: b */
    final AbstractC5781n f14001b;

    public C4599i(AbstractAdViewAdapter abstractAdViewAdapter, AbstractC5781n abstractC5781n) {
        this.f14000a = abstractAdViewAdapter;
        this.f14001b = abstractC5781n;
    }

    @Override // com.google.android.gms.ads.AbstractC5621i
    /* renamed from: b */
    public final void mo18228b() {
        this.f14001b.mo10773p(this.f14000a);
    }

    @Override // com.google.android.gms.ads.AbstractC5621i
    /* renamed from: e */
    public final void mo18225e() {
        this.f14001b.mo10770s(this.f14000a);
    }
}
