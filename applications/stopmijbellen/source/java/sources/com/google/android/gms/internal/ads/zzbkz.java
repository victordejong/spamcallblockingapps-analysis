package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbkz.class */
public final class zzbkz extends zzblb<String> {
    public zzbkz(int i, String str, String str2) {
        super(1, str, str2, null);
    }

    @Override // com.google.android.gms.internal.ads.zzblb
    public final /* bridge */ /* synthetic */ String zza(JSONObject jSONObject) {
        return jSONObject.optString(zzm(), zzl());
    }

    @Override // com.google.android.gms.internal.ads.zzblb
    public final /* bridge */ /* synthetic */ String zzb(Bundle bundle) {
        String str;
        String zzm = zzm();
        if (bundle.containsKey(zzm.length() != 0 ? "com.google.android.gms.ads.flag.".concat(zzm) : new String("com.google.android.gms.ads.flag."))) {
            String zzm2 = zzm();
            str = bundle.getString(zzm2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(zzm2) : new String("com.google.android.gms.ads.flag."));
        } else {
            str = zzl();
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzblb
    public final /* bridge */ /* synthetic */ String zzc(SharedPreferences sharedPreferences) {
        return sharedPreferences.getString(zzm(), zzl());
    }

    @Override // com.google.android.gms.internal.ads.zzblb
    public final /* bridge */ /* synthetic */ void zzd(SharedPreferences.Editor editor, String str) {
        editor.putString(zzm(), str);
    }
}
