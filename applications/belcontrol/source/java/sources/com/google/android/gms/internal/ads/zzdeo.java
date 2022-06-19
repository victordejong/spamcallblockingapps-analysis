package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdeo.class */
public final /* synthetic */ class zzdeo implements Callable {
    private final List zzhct;

    public zzdeo(List list) {
        this.zzhct = list;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        List<zzdzw> list = this.zzhct;
        JSONArray jSONArray = new JSONArray();
        for (zzdzw zzdzwVar : list) {
            if (((JSONObject) zzdzwVar.get()) != null) {
                jSONArray.put(zzdzwVar.get());
            }
        }
        if (jSONArray.length() == 0) {
            return null;
        }
        return new zzdel(jSONArray.toString());
    }
}
