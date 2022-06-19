package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ea2.class */
public final class ea2 implements va2<Bundle> {

    /* renamed from: a */
    private final String f22053a;

    public ea2(String str) {
        this.f22053a = str;
    }

    @Override // com.google.android.gms.internal.ads.va2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8928a(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (TextUtils.isEmpty(this.f22053a)) {
            return;
        }
        bundle2.putString("query_info", this.f22053a);
    }
}
