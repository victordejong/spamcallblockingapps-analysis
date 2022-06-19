package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbja.class */
public final class zzbja extends zzbjd<Float> {
    public zzbja(int i, String str, Float f) {
        super(1, str, f, null);
    }

    @Override // com.google.android.gms.internal.ads.zzbjd
    public final /* bridge */ /* synthetic */ Float zza(Bundle bundle) {
        Float f;
        String zze = zze();
        if (bundle.containsKey(zze.length() != 0 ? "com.google.android.gms.ads.flag.".concat(zze) : new String("com.google.android.gms.ads.flag."))) {
            String zze2 = zze();
            f = Float.valueOf(bundle.getFloat(zze2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(zze2) : new String("com.google.android.gms.ads.flag.")));
        } else {
            f = zzf();
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.zzbjd
    public final /* bridge */ /* synthetic */ void zzb(SharedPreferences.Editor editor, Float f) {
        editor.putFloat(zze(), f.floatValue());
    }

    @Override // com.google.android.gms.internal.ads.zzbjd
    public final /* bridge */ /* synthetic */ Float zzc(JSONObject jSONObject) {
        return Float.valueOf((float) jSONObject.optDouble(zze(), zzf().floatValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzbjd
    public final /* bridge */ /* synthetic */ Float zzd(SharedPreferences sharedPreferences) {
        return Float.valueOf(sharedPreferences.getFloat(zze(), zzf().floatValue()));
    }
}
