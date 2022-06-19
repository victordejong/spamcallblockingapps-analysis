package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/byc.class */
public final class byc implements cae<Bundle> {

    /* renamed from: a */
    private final cgp f12475a;

    public byc(cgp cgpVar) {
        this.f12475a = cgpVar;
    }

    @Override // com.google.android.gms.internal.ads.cae
    /* renamed from: a */
    public final /* synthetic */ void mo11481a(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (this.f12475a != null) {
            bundle2.putBoolean("render_in_browser", this.f12475a.m11371a());
            bundle2.putBoolean("disable_ml", this.f12475a.m11368b());
        }
    }
}
