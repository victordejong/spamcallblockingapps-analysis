package com.google.android.gms.internal.ads;

import com.callerid.block.bean.EZBlackList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vl0.class */
public final class vl0 {

    /* renamed from: a */
    private final Executor f8921a;

    /* renamed from: b */
    private final ql0 f8922b;

    public vl0(Executor executor, ql0 ql0Var) {
        this.f8921a = executor;
        this.f8922b = ql0Var;
    }

    /* renamed from: a */
    public final rz1<List<ul0>> m5213a(JSONObject jSONObject, String str) {
        rz1 rz1Var;
        String optString;
        JSONArray optJSONArray = jSONObject.optJSONArray("custom_assets");
        if (optJSONArray == null) {
            return kz1.a(Collections.emptyList());
        }
        ArrayList arrayList = new ArrayList();
        int length = optJSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
            ul0 ul0Var = null;
            if (!(optJSONObject == null || (optString = optJSONObject.optString(EZBlackList.NAME)) == null)) {
                String optString2 = optJSONObject.optString("type");
                if ("string".equals(optString2)) {
                    ul0Var = new ul0(optString, optJSONObject.optString("string_value"));
                } else if ("image".equals(optString2)) {
                    rz1Var = kz1.i(this.f8922b.m6103a(optJSONObject, "image_value"), new tl0(optString), this.f8921a);
                    arrayList.add(rz1Var);
                }
            }
            rz1Var = kz1.a(ul0Var);
            arrayList.add(rz1Var);
        }
        return kz1.i(kz1.j(arrayList), sl0.a, this.f8921a);
    }
}
