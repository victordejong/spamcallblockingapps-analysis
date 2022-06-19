package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.os.Bundle;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.Preconditions;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzex.class */
public final class zzex {
    public final /* synthetic */ zzfb zza;
    private final String zzb = "default_event_parameters";
    private final Bundle zzc = new Bundle();
    private Bundle zzd;

    public zzex(zzfb zzfbVar, String str, Bundle bundle) {
        this.zza = zzfbVar;
        Preconditions.checkNotEmpty("default_event_parameters");
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00f6 A[Catch: NumberFormatException | JSONException -> 0x0105, TRY_ENTER, TRY_LEAVE, TryCatch #0 {NumberFormatException | JSONException -> 0x0105, blocks: (B:11:0x0041, B:34:0x00bb, B:35:0x00d2, B:36:0x00e4, B:37:0x00f6), top: B:49:0x0041, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.Bundle zza() {
        /*
            Method dump skipped, instructions count: 327
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzex.zza():android.os.Bundle");
    }

    public final void zzb(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        SharedPreferences.Editor edit = this.zza.zzd().edit();
        if (bundle2.size() == 0) {
            edit.remove(this.zzb);
        } else {
            String str = this.zzb;
            JSONArray jSONArray = new JSONArray();
            for (String str2 : bundle2.keySet()) {
                Object obj = bundle2.get(str2);
                if (obj != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put(GoogleApiAvailabilityLight.TRACKING_SOURCE_NOTIFICATION, str2);
                        jSONObject.put("v", String.valueOf(obj));
                        if (obj instanceof String) {
                            jSONObject.put("t", "s");
                        } else if (obj instanceof Long) {
                            jSONObject.put("t", "l");
                        } else if (obj instanceof Double) {
                            jSONObject.put("t", GoogleApiAvailabilityLight.TRACKING_SOURCE_DIALOG);
                        } else {
                            this.zza.zzs.zzau().zzb().zzb("Cannot serialize bundle value to SharedPreferences. Type", obj.getClass());
                        }
                        jSONArray.put(jSONObject);
                    } catch (JSONException e) {
                        this.zza.zzs.zzau().zzb().zzb("Cannot serialize bundle value to SharedPreferences", e);
                    }
                }
            }
            edit.putString(str, jSONArray.toString());
        }
        edit.apply();
        this.zzd = bundle2;
    }
}
