package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdcg.class */
public final class zzdcg implements zzdgu<Bundle> {

    /* renamed from: a */
    public final Bundle f27114a;

    public zzdcg(Bundle bundle) {
        this.f27114a = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzdgu
    /* renamed from: a */
    public final /* synthetic */ void mo13578a(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (!this.f27114a.isEmpty()) {
            bundle2.putBundle("installed_adapter_data", this.f27114a);
        }
    }
}
