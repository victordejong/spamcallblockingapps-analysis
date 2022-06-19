package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzabm.class */
public final class zzabm implements zzadx {
    private final /* synthetic */ zzabl zzcmh;

    public zzabm(zzabl zzablVar) {
        this.zzcmh = zzablVar;
    }

    @Override // com.google.android.gms.internal.ads.zzadx
    public final String get(String str, String str2) {
        SharedPreferences sharedPreferences;
        sharedPreferences = this.zzcmh.zzcme;
        return sharedPreferences.getString(str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzadx
    public final Long getLong(String str, long j) {
        SharedPreferences sharedPreferences;
        SharedPreferences sharedPreferences2;
        try {
            sharedPreferences2 = this.zzcmh.zzcme;
            return Long.valueOf(sharedPreferences2.getLong(str, j));
        } catch (ClassCastException e) {
            sharedPreferences = this.zzcmh.zzcme;
            return Long.valueOf(sharedPreferences.getInt(str, (int) j));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadx
    public final Double zza(String str, double d) {
        SharedPreferences sharedPreferences;
        sharedPreferences = this.zzcmh.zzcme;
        return Double.valueOf(sharedPreferences.getFloat(str, (float) d));
    }

    @Override // com.google.android.gms.internal.ads.zzadx
    public final Boolean zzf(String str, boolean z) {
        SharedPreferences sharedPreferences;
        sharedPreferences = this.zzcmh.zzcme;
        return Boolean.valueOf(sharedPreferences.getBoolean(str, z));
    }
}
