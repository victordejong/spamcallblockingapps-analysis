package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
/* renamed from: com.google.android.gms.internal.ads.ar */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ar.class */
public final class C12189ar implements AbstractC12298da {

    /* renamed from: a */
    private final /* synthetic */ SharedPreferences$OnSharedPreferenceChangeListenerC12181am f43081a;

    public C12189ar(SharedPreferences$OnSharedPreferenceChangeListenerC12181am sharedPreferences$OnSharedPreferenceChangeListenerC12181am) {
        this.f43081a = sharedPreferences$OnSharedPreferenceChangeListenerC12181am;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12298da
    /* renamed from: a */
    public final Boolean mo16973a(String str, boolean z) {
        SharedPreferences sharedPreferences;
        sharedPreferences = this.f43081a.f42405e;
        return Boolean.valueOf(sharedPreferences.getBoolean(str, z));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12298da
    /* renamed from: a */
    public final Double mo16976a(String str, double d) {
        SharedPreferences sharedPreferences;
        sharedPreferences = this.f43081a.f42405e;
        return Double.valueOf(sharedPreferences.getFloat(str, (float) d));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12298da
    /* renamed from: a */
    public final Long mo16975a(String str, long j) {
        SharedPreferences sharedPreferences;
        SharedPreferences sharedPreferences2;
        try {
            sharedPreferences2 = this.f43081a.f42405e;
            return Long.valueOf(sharedPreferences2.getLong(str, j));
        } catch (ClassCastException e) {
            sharedPreferences = this.f43081a.f42405e;
            return Long.valueOf(sharedPreferences.getInt(str, (int) j));
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12298da
    /* renamed from: a */
    public final String mo16974a(String str, String str2) {
        SharedPreferences sharedPreferences;
        sharedPreferences = this.f43081a.f42405e;
        return sharedPreferences.getString(str, str2);
    }
}
