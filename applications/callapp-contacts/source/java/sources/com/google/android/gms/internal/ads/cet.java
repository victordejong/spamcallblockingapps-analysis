package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cet.class */
public final class cet implements cgy<Bundle> {

    /* renamed from: a */
    private final Bundle f45639a;

    public cet(Bundle bundle) {
        this.f45639a = bundle;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    /* renamed from: a */
    public final /* synthetic */ void mo17450a(Bundle bundle) {
        Bundle bundle2 = bundle;
        Bundle m17352a = cpw.m17352a(bundle2, "device");
        m17352a.putBundle("android_mem_info", this.f45639a);
        bundle2.putBundle("device", m17352a);
    }
}
