package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/a82.class */
public final class a82 implements va2<Bundle> {

    /* renamed from: a */
    private final boolean f19851a;

    public a82(boolean z) {
        this.f19851a = z;
    }

    @Override // com.google.android.gms.internal.ads.va2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8928a(Bundle bundle) {
        bundle.putBoolean("is_gbid", this.f19851a);
    }
}
