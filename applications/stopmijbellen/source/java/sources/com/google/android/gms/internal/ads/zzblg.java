package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzblg.class */
public final class zzblg implements zzbnl {
    public final /* synthetic */ zzblh zza;

    public zzblg(zzblh zzblhVar) {
        this.zza = zzblhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final Boolean zza(String str, boolean z) {
        SharedPreferences sharedPreferences;
        sharedPreferences = this.zza.zze;
        return Boolean.valueOf(sharedPreferences.getBoolean(str, z));
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final Double zzb(String str, double d) {
        SharedPreferences sharedPreferences;
        sharedPreferences = this.zza.zze;
        return Double.valueOf(sharedPreferences.getFloat(str, (float) d));
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final Long zzc(String str, long j) {
        SharedPreferences sharedPreferences;
        SharedPreferences sharedPreferences2;
        try {
            sharedPreferences2 = this.zza.zze;
            return Long.valueOf(sharedPreferences2.getLong(str, j));
        } catch (ClassCastException e) {
            sharedPreferences = this.zza.zze;
            return Long.valueOf(sharedPreferences.getInt(str, (int) j));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final String zzd(String str, String str2) {
        SharedPreferences sharedPreferences;
        sharedPreferences = this.zza.zze;
        return sharedPreferences.getString(str, str2);
    }
}
