package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/w72.class */
public final class w72 implements va2<Bundle> {

    /* renamed from: a */
    public final String f31465a;

    /* renamed from: b */
    public final boolean f31466b;

    public w72(String str, boolean z) {
        this.f31465a = str;
        this.f31466b = z;
    }

    @Override // com.google.android.gms.internal.ads.va2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8928a(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putString("gct", this.f31465a);
        if (this.f31466b) {
            bundle2.putString("de", "1");
        }
    }
}
