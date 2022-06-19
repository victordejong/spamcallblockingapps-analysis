package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bwf.class */
public final class bwf implements cae<Bundle> {

    /* renamed from: a */
    private final boolean f12382a = false;

    /* renamed from: b */
    private final boolean f12383b = false;

    /* renamed from: c */
    private final boolean f12384c;

    public bwf(boolean z, boolean z2, boolean z3) {
        this.f12384c = z3;
    }

    @Override // com.google.android.gms.internal.ads.cae
    /* renamed from: a */
    public final /* synthetic */ void mo11481a(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putBoolean("c_pcbg", this.f12382a);
        bundle2.putBoolean("c_phbg", this.f12383b);
        bundle2.putBoolean("ar_lr", this.f12384c);
    }
}
