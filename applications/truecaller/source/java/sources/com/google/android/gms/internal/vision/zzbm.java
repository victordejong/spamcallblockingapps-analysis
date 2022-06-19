package com.google.android.gms.internal.vision;

import android.content.SharedPreferences;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzbm.class */
public final /* synthetic */ class zzbm implements SharedPreferences.OnSharedPreferenceChangeListener {
    private final zzbj zzha;

    public zzbm(zzbj zzbjVar) {
        this.zzha = zzbjVar;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        this.zzha.zza(sharedPreferences, str);
    }
}
