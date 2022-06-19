package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbkv.class */
public final class zzbkv extends zzblb<Boolean> {
    public zzbkv(int i, String str, Boolean bool) {
        super(i, str, bool, null);
    }

    @Override // com.google.android.gms.internal.ads.zzblb
    public final /* bridge */ /* synthetic */ Boolean zza(JSONObject jSONObject) {
        return Boolean.valueOf(jSONObject.optBoolean(zzm(), zzl().booleanValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzblb
    public final /* bridge */ /* synthetic */ Boolean zzb(Bundle bundle) {
        Boolean bool;
        String zzm = zzm();
        if (bundle.containsKey(zzm.length() != 0 ? "com.google.android.gms.ads.flag.".concat(zzm) : new String("com.google.android.gms.ads.flag."))) {
            String zzm2 = zzm();
            bool = Boolean.valueOf(bundle.getBoolean(zzm2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(zzm2) : new String("com.google.android.gms.ads.flag.")));
        } else {
            bool = zzl();
        }
        return bool;
    }

    @Override // com.google.android.gms.internal.ads.zzblb
    public final /* bridge */ /* synthetic */ Boolean zzc(SharedPreferences sharedPreferences) {
        return Boolean.valueOf(sharedPreferences.getBoolean(zzm(), zzl().booleanValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzblb
    public final /* bridge */ /* synthetic */ void zzd(SharedPreferences.Editor editor, Boolean bool) {
        editor.putBoolean(zzm(), bool.booleanValue());
    }
}
