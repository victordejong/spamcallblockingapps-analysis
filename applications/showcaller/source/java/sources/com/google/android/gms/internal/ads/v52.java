package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/v52.class */
public final class v52 implements va2<Bundle> {

    /* renamed from: a */
    private final Bundle f31080a;

    @Override // com.google.android.gms.internal.ads.va2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8928a(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (!this.f31080a.isEmpty()) {
            bundle2.putBundle("installed_adapter_data", this.f31080a);
        }
    }
}
