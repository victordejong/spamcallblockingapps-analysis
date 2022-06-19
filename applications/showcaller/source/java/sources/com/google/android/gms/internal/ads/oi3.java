package com.google.android.gms.internal.ads;

import android.util.Log;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/oi3.class */
public final class oi3 extends ti3 {

    /* renamed from: a */
    final String f27564a;

    public oi3(String str) {
        this.f27564a = str;
    }

    @Override // com.google.android.gms.internal.ads.ti3
    /* renamed from: a */
    public final void mo10652a(String str) {
        String str2 = this.f27564a;
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 1 + String.valueOf(str).length());
        sb.append(str2);
        sb.append(":");
        sb.append(str);
        Log.d("isoparser", sb.toString());
    }
}
