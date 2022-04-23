package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cft.class */
public final class cft implements cgy<Bundle> {

    /* renamed from: a  reason: collision with root package name */
    private final Bundle f25750a;

    public cft(Bundle bundle) {
        this.f25750a = bundle;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    public final /* synthetic */ void a(Bundle bundle) {
        Bundle bundle2 = bundle;
        Bundle bundle3 = this.f25750a;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
    }
}
