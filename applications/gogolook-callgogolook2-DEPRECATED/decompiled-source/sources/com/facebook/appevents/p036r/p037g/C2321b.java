package com.facebook.appevents.p036r.p037g;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p459j.p460a.p541n0.C13032a;
/* renamed from: com.facebook.appevents.r.g.b */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/r/g/b.class */
public final class C2321b {

    /* renamed from: a */
    public final String f2801a;

    /* renamed from: b */
    public final String f2802b;

    /* renamed from: c */
    public final List<C2322c> f2803c;

    /* renamed from: d */
    public final String f2804d;

    public C2321b(JSONObject jSONObject) throws JSONException {
        this.f2801a = jSONObject.getString("name");
        this.f2802b = jSONObject.optString(C13032a.f29462d);
        ArrayList arrayList = new ArrayList();
        JSONArray optJSONArray = jSONObject.optJSONArray("path");
        if (optJSONArray != null) {
            for (int i = 0; i < optJSONArray.length(); i++) {
                arrayList.add(new C2322c(optJSONArray.getJSONObject(i)));
            }
        }
        this.f2803c = arrayList;
        this.f2804d = jSONObject.optString("path_type", "absolute");
    }
}
