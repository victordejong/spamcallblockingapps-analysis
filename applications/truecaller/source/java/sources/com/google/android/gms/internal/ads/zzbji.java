package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbji.class */
public final class zzbji implements zzblm {
    public final /* synthetic */ zzbjj zza;

    public zzbji(zzbjj zzbjjVar) {
        this.zza = zzbjjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzblm
    public final Boolean zza(String str, boolean z) {
        SharedPreferences sharedPreferences;
        sharedPreferences = this.zza.zze;
        return Boolean.valueOf(sharedPreferences.getBoolean(str, z));
    }

    @Override // com.google.android.gms.internal.ads.zzblm
    public final Long zzb(String str, long j) {
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

    @Override // com.google.android.gms.internal.ads.zzblm
    public final Double zzc(String str, double d) {
        SharedPreferences sharedPreferences;
        sharedPreferences = this.zza.zze;
        return Double.valueOf(sharedPreferences.getFloat(str, (float) d));
    }

    @Override // com.google.android.gms.internal.ads.zzblm
    public final String zzd(String str, String str2) {
        SharedPreferences sharedPreferences;
        sharedPreferences = this.zza.zze;
        return sharedPreferences.getString(str, str2);
    }
}
