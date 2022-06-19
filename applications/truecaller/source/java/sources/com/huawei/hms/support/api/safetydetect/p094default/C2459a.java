package com.huawei.hms.support.api.safetydetect.p094default;

import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.huawei.hms.support.api.safetydetect.default.a */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/support/api/safetydetect/default/a.class */
public class C2459a {

    /* renamed from: a */
    private String f7804a;

    public C2459a(String str) {
        this.f7804a = str;
    }

    /* renamed from: a */
    public String m37209a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("appId", this.f7804a);
        } catch (JSONException e) {
            e.getMessage();
        }
        return jSONObject.toString();
    }
}
