package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbjf.class */
public final class zzbjf {
    public static final SharedPreferences zza(Context context) {
        return context.getSharedPreferences("google_ads_flags", 0);
    }
}
