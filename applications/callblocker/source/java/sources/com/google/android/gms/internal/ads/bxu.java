package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bxu.class */
public final class bxu implements cae<Bundle> {

    /* renamed from: a */
    private final String f12465a;

    /* renamed from: b */
    private final boolean f12466b;

    public bxu(String str, boolean z) {
        this.f12465a = str;
        this.f12466b = z;
    }

    @Override // com.google.android.gms.internal.ads.cae
    /* renamed from: a */
    public final /* synthetic */ void mo11481a(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putString("gct", this.f12465a);
        if (this.f12466b) {
            bundle2.putString("de", "1");
        }
    }
}
