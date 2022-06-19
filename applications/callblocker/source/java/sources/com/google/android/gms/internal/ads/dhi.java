package com.google.android.gms.internal.ads;

import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dhi.class */
public final class dhi extends dhl {

    /* renamed from: a */
    private String f14359a;

    public dhi(String str) {
        this.f14359a = str;
    }

    @Override // com.google.android.gms.internal.ads.dhl
    /* renamed from: a */
    public final void mo9455a(String str) {
        String str2 = this.f14359a;
        Log.d("isoparser", new StringBuilder(String.valueOf(str2).length() + 1 + String.valueOf(str).length()).append(str2).append(":").append(str).toString());
    }
}
