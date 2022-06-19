package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbiy.class */
public final class zzbiy extends zzbjd<Integer> {
    public zzbiy(int i, String str, Integer num) {
        super(1, str, num, null);
    }

    @Override // com.google.android.gms.internal.ads.zzbjd
    public final /* bridge */ /* synthetic */ Integer zza(Bundle bundle) {
        Integer num;
        String zze = zze();
        if (bundle.containsKey(zze.length() != 0 ? "com.google.android.gms.ads.flag.".concat(zze) : new String("com.google.android.gms.ads.flag."))) {
            String zze2 = zze();
            num = Integer.valueOf(bundle.getInt(zze2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(zze2) : new String("com.google.android.gms.ads.flag.")));
        } else {
            num = zzf();
        }
        return num;
    }

    @Override // com.google.android.gms.internal.ads.zzbjd
    public final /* bridge */ /* synthetic */ void zzb(SharedPreferences.Editor editor, Integer num) {
        editor.putInt(zze(), num.intValue());
    }

    @Override // com.google.android.gms.internal.ads.zzbjd
    public final /* bridge */ /* synthetic */ Integer zzc(JSONObject jSONObject) {
        return Integer.valueOf(jSONObject.optInt(zze(), zzf().intValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzbjd
    public final /* bridge */ /* synthetic */ Integer zzd(SharedPreferences sharedPreferences) {
        return Integer.valueOf(sharedPreferences.getInt(zze(), zzf().intValue()));
    }
}
