package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cet.class */
public final class cet implements cgy<Bundle> {

    /* renamed from: a  reason: collision with root package name */
    private final Bundle f25704a;

    public cet(Bundle bundle) {
        this.f25704a = bundle;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    public final /* synthetic */ void a(Bundle bundle) {
        Bundle bundle2 = bundle;
        Bundle a2 = cpw.a(bundle2, "device");
        a2.putBundle("android_mem_info", this.f25704a);
        bundle2.putBundle("device", a2);
    }
}
