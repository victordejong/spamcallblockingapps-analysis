package com.google.android.gms.internal.firebase_remote_config;

import java.util.Date;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzep.class */
public final class zzep {
    private JSONObject zzkv;
    private Date zzkw;
    private JSONArray zzkx;

    /* JADX INFO: Access modifiers changed from: private */
    public zzep() {
        Date date;
        this.zzkv = new JSONObject();
        date = zzen.zzkp;
        this.zzkw = date;
        this.zzkx = new JSONArray();
    }

    public final zzep zza(Date date) {
        this.zzkw = date;
        return this;
    }

    public final zzep zzb(List<zzdd> list) {
        JSONArray jSONArray = new JSONArray();
        for (zzdd zzddVar : list) {
            jSONArray.put(new JSONObject(zzddVar));
        }
        this.zzkx = jSONArray;
        return this;
    }

    public final zzen zzcv() {
        return new zzen(this.zzkv, this.zzkw, this.zzkx);
    }

    public final zzep zzd(Map<String, String> map) {
        this.zzkv = new JSONObject(map);
        return this;
    }
}
