package com.google.android.gms.internal.mlkit_translate;

import java.util.Date;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzhr.class */
public final class zzhr {
    private static final Date zza = new Date(0);
    private final JSONObject zzb;
    private final JSONObject zzc;
    private final Date zzd;
    private final JSONArray zze;

    public zzhr(JSONObject jSONObject, Date date, JSONArray jSONArray) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("configs_key", jSONObject);
        jSONObject2.put("fetch_time_key", date.getTime());
        jSONObject2.put("abt_experiments_key", jSONArray);
        this.zzc = jSONObject;
        this.zzd = date;
        this.zze = jSONArray;
        this.zzb = jSONObject2;
    }

    public static zzht zzc() {
        return new zzht();
    }

    public final String toString() {
        return this.zzb.toString();
    }

    public final JSONObject zza() {
        return this.zzc;
    }

    public final Date zzb() {
        return this.zzd;
    }
}
