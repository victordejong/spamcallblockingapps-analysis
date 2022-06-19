package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/edf.class */
public final class edf implements AbstractC2825bb {

    /* renamed from: a */
    private final /* synthetic */ ede f16312a;

    public edf(ede edeVar) {
        this.f16312a = edeVar;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2825bb
    /* renamed from: a */
    public final Boolean mo7869a(String str, boolean z) {
        SharedPreferences sharedPreferences;
        sharedPreferences = this.f16312a.f16308e;
        return Boolean.valueOf(sharedPreferences.getBoolean(str, z));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2825bb
    /* renamed from: a */
    public final Double mo7872a(String str, double d) {
        SharedPreferences sharedPreferences;
        sharedPreferences = this.f16312a.f16308e;
        return Double.valueOf(sharedPreferences.getFloat(str, (float) d));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2825bb
    /* renamed from: a */
    public final Long mo7871a(String str, long j) {
        SharedPreferences sharedPreferences;
        Long valueOf;
        SharedPreferences sharedPreferences2;
        try {
            sharedPreferences2 = this.f16312a.f16308e;
            valueOf = Long.valueOf(sharedPreferences2.getLong(str, j));
        } catch (ClassCastException e) {
            sharedPreferences = this.f16312a.f16308e;
            valueOf = Long.valueOf(sharedPreferences.getInt(str, (int) j));
        }
        return valueOf;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2825bb
    /* renamed from: a */
    public final String mo7870a(String str, String str2) {
        SharedPreferences sharedPreferences;
        sharedPreferences = this.f16312a.f16308e;
        return sharedPreferences.getString(str, str2);
    }
}
