package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbkx.class */
public final class zzbkx extends zzblb<Long> {
    public zzbkx(int i, String str, Long l) {
        super(1, str, l, null);
    }

    @Override // com.google.android.gms.internal.ads.zzblb
    public final /* bridge */ /* synthetic */ Long zza(JSONObject jSONObject) {
        return Long.valueOf(jSONObject.optLong(zzm(), zzl().longValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzblb
    public final /* bridge */ /* synthetic */ Long zzb(Bundle bundle) {
        Long l;
        String zzm = zzm();
        if (bundle.containsKey(zzm.length() != 0 ? "com.google.android.gms.ads.flag.".concat(zzm) : new String("com.google.android.gms.ads.flag."))) {
            String zzm2 = zzm();
            l = Long.valueOf(bundle.getLong(zzm2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(zzm2) : new String("com.google.android.gms.ads.flag.")));
        } else {
            l = zzl();
        }
        return l;
    }

    @Override // com.google.android.gms.internal.ads.zzblb
    public final /* bridge */ /* synthetic */ Long zzc(SharedPreferences sharedPreferences) {
        return Long.valueOf(sharedPreferences.getLong(zzm(), zzl().longValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzblb
    public final /* bridge */ /* synthetic */ void zzd(SharedPreferences.Editor editor, Long l) {
        editor.putLong(zzm(), l.longValue());
    }
}
