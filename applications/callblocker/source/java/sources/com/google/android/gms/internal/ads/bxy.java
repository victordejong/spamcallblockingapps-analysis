package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bxy.class */
public final class bxy implements cae<Bundle> {

    /* renamed from: a */
    private final Bundle f12470a;

    public bxy(Bundle bundle) {
        this.f12470a = bundle;
    }

    @Override // com.google.android.gms.internal.ads.cae
    /* renamed from: a */
    public final /* synthetic */ void mo11481a(Bundle bundle) {
        Bundle bundle2 = bundle;
        Bundle m11308a = chm.m11308a(bundle2, "device");
        m11308a.putBundle("android_mem_info", this.f12470a);
        bundle2.putBundle("device", m11308a);
    }
}
