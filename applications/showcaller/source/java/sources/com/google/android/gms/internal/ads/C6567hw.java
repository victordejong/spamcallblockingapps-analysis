package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
/* renamed from: com.google.android.gms.internal.ads.hw */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hw.class */
public final class C6567hw implements AbstractC6792ny {

    /* renamed from: a */
    final /* synthetic */ SharedPreferences$OnSharedPreferenceChangeListenerC6605iw f24055a;

    public C6567hw(SharedPreferences$OnSharedPreferenceChangeListenerC6605iw sharedPreferences$OnSharedPreferenceChangeListenerC6605iw) {
        this.f24055a = sharedPreferences$OnSharedPreferenceChangeListenerC6605iw;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6792ny
    /* renamed from: a */
    public final String mo12792a(String str, String str2) {
        SharedPreferences sharedPreferences;
        sharedPreferences = this.f24055a.f24500e;
        return sharedPreferences.getString(str, str2);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6792ny
    /* renamed from: b */
    public final Long mo12791b(String str, long j) {
        SharedPreferences sharedPreferences;
        SharedPreferences sharedPreferences2;
        try {
            sharedPreferences2 = this.f24055a.f24500e;
            return Long.valueOf(sharedPreferences2.getLong(str, j));
        } catch (ClassCastException e) {
            sharedPreferences = this.f24055a.f24500e;
            return Long.valueOf(sharedPreferences.getInt(str, (int) j));
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6792ny
    /* renamed from: c */
    public final Double mo12790c(String str, double d) {
        SharedPreferences sharedPreferences;
        sharedPreferences = this.f24055a.f24500e;
        return Double.valueOf(sharedPreferences.getFloat(str, (float) d));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6792ny
    /* renamed from: d */
    public final Boolean mo12789d(String str, boolean z) {
        SharedPreferences sharedPreferences;
        sharedPreferences = this.f24055a.f24500e;
        return Boolean.valueOf(sharedPreferences.getBoolean(str, z));
    }
}
