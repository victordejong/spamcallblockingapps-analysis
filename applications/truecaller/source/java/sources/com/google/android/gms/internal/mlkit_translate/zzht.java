package com.google.android.gms.internal.mlkit_translate;

import java.util.Date;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzht.class */
public final class zzht {
    private JSONObject zza;
    private Date zzb;
    private JSONArray zzc;

    /* JADX INFO: Access modifiers changed from: private */
    public zzht() {
        Date date;
        this.zza = new JSONObject();
        date = zzhr.zza;
        this.zzb = date;
        this.zzc = new JSONArray();
    }

    public final zzhr zza() throws JSONException {
        return new zzhr(this.zza, this.zzb, this.zzc);
    }

    public final zzht zza(Date date) {
        this.zzb = date;
        return this;
    }

    public final zzht zza(JSONArray jSONArray) {
        try {
            this.zzc = new JSONArray(jSONArray.toString());
        } catch (JSONException e) {
        }
        return this;
    }

    public final zzht zza(JSONObject jSONObject) {
        try {
            this.zza = new JSONObject(jSONObject.toString());
        } catch (JSONException e) {
        }
        return this;
    }
}
