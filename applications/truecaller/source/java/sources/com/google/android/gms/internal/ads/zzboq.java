package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzbx;
import com.razorpay.AnalyticsConstants;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzboq.class */
public final class zzboq implements zzbpr<Object> {
    private final zzbor zza;

    public zzboq(zzbor zzborVar) {
        this.zza = zzborVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zza(Object obj, Map<String, String> map) {
        if (this.zza == null) {
            return;
        }
        String str = map.get(AnalyticsConstants.NAME);
        String str2 = str;
        if (str == null) {
            zzcgt.zzh("Ad metadata with no name parameter.");
            str2 = "";
        }
        Bundle bundle = null;
        if (map.containsKey("info")) {
            try {
                bundle = zzbx.zzk(new JSONObject(map.get("info")));
            } catch (JSONException e) {
                zzcgt.zzg("Failed to convert ad metadata to JSON.", e);
                bundle = null;
            }
        }
        if (bundle == null) {
            zzcgt.zzf("Failed to convert ad metadata to Bundle.");
        } else {
            this.zza.zza(str2, bundle);
        }
    }
}
