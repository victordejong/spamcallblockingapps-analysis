package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/i82.class */
public final class i82 implements va2<Bundle> {

    /* renamed from: a */
    private final String f24173a;

    /* renamed from: b */
    private final boolean f24174b;

    /* renamed from: c */
    private final boolean f24175c;

    public i82(String str, boolean z, boolean z2) {
        this.f24173a = str;
        this.f24174b = z;
        this.f24175c = z2;
    }

    @Override // com.google.android.gms.internal.ads.va2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8928a(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (!this.f24173a.isEmpty()) {
            bundle2.putString("inspector_extras", this.f24173a);
        }
        bundle2.putInt("test_mode", this.f24174b ? 1 : 0);
        bundle2.putInt("linked_device", this.f24175c ? 1 : 0);
    }
}
