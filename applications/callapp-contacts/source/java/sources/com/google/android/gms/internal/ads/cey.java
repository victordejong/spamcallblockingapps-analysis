package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cey.class */
public final class cey implements cgy<Bundle> {

    /* renamed from: a */
    private final cot f45647a;

    public cey(cot cotVar) {
        this.f45647a = cotVar;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    /* renamed from: a */
    public final /* synthetic */ void mo17450a(Bundle bundle) {
        Bundle bundle2 = bundle;
        cot cotVar = this.f45647a;
        if (cotVar != null) {
            bundle2.putBoolean("render_in_browser", cotVar.m17371a());
            bundle2.putBoolean("disable_ml", this.f45647a.m17369b());
        }
    }
}
