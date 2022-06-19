package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbhv.class */
public final class zzbhv {
    private final String zza;
    private final Bundle zzb;
    private final String zzc;

    public zzbhv(String str, Bundle bundle, String str2) {
        this.zza = str;
        this.zzb = bundle;
        this.zzc = str2;
    }

    public final String zza() {
        return this.zza;
    }

    public final String zzb() {
        if (TextUtils.isEmpty(this.zzc)) {
            return "";
        }
        try {
            return new JSONObject(this.zzc).optString("request_id", "");
        } catch (JSONException e) {
            return "";
        }
    }

    public final Bundle zzc() {
        return this.zzb;
    }

    public final String zzd() {
        return this.zzc;
    }
}
