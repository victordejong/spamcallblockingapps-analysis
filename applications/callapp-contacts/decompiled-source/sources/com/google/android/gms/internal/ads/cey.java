package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cey.class */
public final class cey implements cgy<Bundle> {

    /* renamed from: a  reason: collision with root package name */
    private final cot f25712a;

    public cey(cot cotVar) {
        this.f25712a = cotVar;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    public final /* synthetic */ void a(Bundle bundle) {
        Bundle bundle2 = bundle;
        cot cotVar = this.f25712a;
        if (cotVar != null) {
            bundle2.putBoolean("render_in_browser", cotVar.a());
            bundle2.putBoolean("disable_ml", this.f25712a.b());
        }
    }
}
