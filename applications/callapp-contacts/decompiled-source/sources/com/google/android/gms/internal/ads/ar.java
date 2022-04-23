package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ar.class */
public final class ar implements da {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ am f23807a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ar(am amVar) {
        this.f23807a = amVar;
    }

    @Override // com.google.android.gms.internal.ads.da
    public final Boolean a(String str, boolean z) {
        SharedPreferences sharedPreferences;
        sharedPreferences = this.f23807a.e;
        return Boolean.valueOf(sharedPreferences.getBoolean(str, z));
    }

    @Override // com.google.android.gms.internal.ads.da
    public final Double a(String str, double d2) {
        SharedPreferences sharedPreferences;
        sharedPreferences = this.f23807a.e;
        return Double.valueOf(sharedPreferences.getFloat(str, (float) d2));
    }

    @Override // com.google.android.gms.internal.ads.da
    public final Long a(String str, long j) {
        SharedPreferences sharedPreferences;
        SharedPreferences sharedPreferences2;
        try {
            sharedPreferences2 = this.f23807a.e;
            return Long.valueOf(sharedPreferences2.getLong(str, j));
        } catch (ClassCastException e) {
            sharedPreferences = this.f23807a.e;
            return Long.valueOf(sharedPreferences.getInt(str, (int) j));
        }
    }

    @Override // com.google.android.gms.internal.ads.da
    public final String a(String str, String str2) {
        SharedPreferences sharedPreferences;
        sharedPreferences = this.f23807a.e;
        return sharedPreferences.getString(str, str2);
    }
}
