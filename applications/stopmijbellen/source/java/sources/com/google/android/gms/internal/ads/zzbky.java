package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbky.class */
public final class zzbky extends zzblb<Float> {
    public zzbky(int i, String str, Float f) {
        super(1, str, f, null);
    }

    @Override // com.google.android.gms.internal.ads.zzblb
    public final /* bridge */ /* synthetic */ Float zza(JSONObject jSONObject) {
        return Float.valueOf((float) jSONObject.optDouble(zzm(), zzl().floatValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzblb
    public final /* bridge */ /* synthetic */ Float zzb(Bundle bundle) {
        Float f;
        String zzm = zzm();
        if (bundle.containsKey(zzm.length() != 0 ? "com.google.android.gms.ads.flag.".concat(zzm) : new String("com.google.android.gms.ads.flag."))) {
            String zzm2 = zzm();
            f = Float.valueOf(bundle.getFloat(zzm2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(zzm2) : new String("com.google.android.gms.ads.flag.")));
        } else {
            f = zzl();
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.zzblb
    public final /* bridge */ /* synthetic */ Float zzc(SharedPreferences sharedPreferences) {
        return Float.valueOf(sharedPreferences.getFloat(zzm(), zzl().floatValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzblb
    public final /* bridge */ /* synthetic */ void zzd(SharedPreferences.Editor editor, Float f) {
        editor.putFloat(zzm(), f.floatValue());
    }
}
