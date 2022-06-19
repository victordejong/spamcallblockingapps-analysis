package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzby;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbqs.class */
public final class zzbqs implements zzbrt<Object> {
    private final zzbqt zza;

    public zzbqs(zzbqt zzbqtVar) {
        this.zza = zzbqtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbrt
    public final void zza(Object obj, Map<String, String> map) {
        if (this.zza == null) {
            return;
        }
        String str = map.get(AppMeasurementSdk.ConditionalUserProperty.NAME);
        String str2 = str;
        if (str == null) {
            zzciz.zzi("Ad metadata with no name parameter.");
            str2 = "";
        }
        Bundle bundle = null;
        if (map.containsKey("info")) {
            try {
                bundle = zzby.zza(new JSONObject(map.get("info")));
            } catch (JSONException e) {
                zzciz.zzh("Failed to convert ad metadata to JSON.", e);
                bundle = null;
            }
        }
        if (bundle == null) {
            zzciz.zzg("Failed to convert ad metadata to Bundle.");
        } else {
            this.zza.zza(str2, bundle);
        }
    }
}
