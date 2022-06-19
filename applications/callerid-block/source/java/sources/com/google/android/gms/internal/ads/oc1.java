package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/oc1.class */
final /* synthetic */ class oc1 implements Callable {

    /* renamed from: a */
    private final List f7838a;

    oc1(List list) {
        this.f7838a = list;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        List<rz1> list = this.f7838a;
        JSONArray jSONArray = new JSONArray();
        for (rz1 rz1Var : list) {
            if (((JSONObject) rz1Var.get()) != null) {
                jSONArray.put(rz1Var.get());
            }
        }
        if (jSONArray.length() == 0) {
            return null;
        }
        return new qc1(jSONArray.toString());
    }
}
