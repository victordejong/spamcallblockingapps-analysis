package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bvo.class */
public final class bvo implements cae<Bundle> {

    /* renamed from: a */
    private final Bundle f12352a;

    /* JADX INFO: Access modifiers changed from: private */
    public bvo(Bundle bundle) {
        this.f12352a = bundle;
    }

    @Override // com.google.android.gms.internal.ads.cae
    /* renamed from: a */
    public final /* synthetic */ void mo11481a(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (!this.f12352a.isEmpty()) {
            bundle2.putBundle("installed_adapter_data", this.f12352a);
        }
    }
}
