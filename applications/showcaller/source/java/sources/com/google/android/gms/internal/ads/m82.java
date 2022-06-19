package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/m82.class */
public final class m82 implements va2<Bundle> {

    /* renamed from: a */
    public final Bundle f26483a;

    public m82(Bundle bundle) {
        this.f26483a = bundle;
    }

    @Override // com.google.android.gms.internal.ads.va2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8928a(Bundle bundle) {
        Bundle bundle2 = bundle;
        Bundle m14101a = jk2.m14101a(bundle2, "device");
        m14101a.putBundle("android_mem_info", this.f26483a);
        bundle2.putBundle("device", m14101a);
    }
}
