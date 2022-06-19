package com.google.android.gms.internal.ads;

import android.util.Log;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepq.class */
public final class zzepq extends zzept {
    private String name;

    public zzepq(String str) {
        this.name = str;
    }

    @Override // com.google.android.gms.internal.ads.zzept
    public final void zzio(String str) {
        String str2 = this.name;
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 1 + String.valueOf(str).length());
        sb.append(str2);
        sb.append(":");
        sb.append(str);
        Log.d("isoparser", sb.toString());
    }
}
