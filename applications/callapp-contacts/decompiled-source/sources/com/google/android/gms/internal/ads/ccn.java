package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ccn.class */
public final class ccn implements cgy<Bundle> {

    /* renamed from: a  reason: collision with root package name */
    private final Bundle f25594a;

    private ccn(Bundle bundle) {
        this.f25594a = bundle;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    public final /* synthetic */ void a(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (!this.f25594a.isEmpty()) {
            bundle2.putBundle("installed_adapter_data", this.f25594a);
        }
    }
}
