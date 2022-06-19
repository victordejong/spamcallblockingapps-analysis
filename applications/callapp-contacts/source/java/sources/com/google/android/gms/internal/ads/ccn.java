package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ccn.class */
public final class ccn implements cgy<Bundle> {

    /* renamed from: a */
    private final Bundle f45521a;

    /* JADX INFO: Access modifiers changed from: private */
    public ccn(Bundle bundle) {
        this.f45521a = bundle;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    /* renamed from: a */
    public final /* synthetic */ void mo17450a(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (!this.f45521a.isEmpty()) {
            bundle2.putBundle("installed_adapter_data", this.f45521a);
        }
    }
}
