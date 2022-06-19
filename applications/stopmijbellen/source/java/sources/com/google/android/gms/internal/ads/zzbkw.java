package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbkw.class */
public final class zzbkw extends zzblb<Integer> {
    public zzbkw(int i, String str, Integer num) {
        super(1, str, num, null);
    }

    @Override // com.google.android.gms.internal.ads.zzblb
    public final /* bridge */ /* synthetic */ Integer zza(JSONObject jSONObject) {
        return Integer.valueOf(jSONObject.optInt(zzm(), zzl().intValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzblb
    public final /* bridge */ /* synthetic */ Integer zzb(Bundle bundle) {
        Integer num;
        String zzm = zzm();
        if (bundle.containsKey(zzm.length() != 0 ? "com.google.android.gms.ads.flag.".concat(zzm) : new String("com.google.android.gms.ads.flag."))) {
            String zzm2 = zzm();
            num = Integer.valueOf(bundle.getInt(zzm2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(zzm2) : new String("com.google.android.gms.ads.flag.")));
        } else {
            num = zzl();
        }
        return num;
    }

    @Override // com.google.android.gms.internal.ads.zzblb
    public final /* bridge */ /* synthetic */ Integer zzc(SharedPreferences sharedPreferences) {
        return Integer.valueOf(sharedPreferences.getInt(zzm(), zzl().intValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzblb
    public final /* bridge */ /* synthetic */ void zzd(SharedPreferences.Editor editor, Integer num) {
        editor.putInt(zzm(), num.intValue());
    }
}
