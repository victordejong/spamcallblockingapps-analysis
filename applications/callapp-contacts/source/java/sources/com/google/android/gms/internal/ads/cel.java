package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cel.class */
public final class cel implements cgy<Bundle> {

    /* renamed from: a */
    private final String f45626a;

    /* renamed from: b */
    private final boolean f45627b;

    public cel(String str, boolean z) {
        this.f45626a = str;
        this.f45627b = z;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    /* renamed from: a */
    public final /* synthetic */ void mo17450a(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putString("gct", this.f45626a);
        if (this.f45627b) {
            bundle2.putString("de", "1");
        }
    }
}
