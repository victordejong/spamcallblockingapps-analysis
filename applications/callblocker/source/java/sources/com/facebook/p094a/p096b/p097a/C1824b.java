package com.facebook.p094a.p096b.p097a;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.facebook.a.b.a.b */
/* loaded from: classes-dex2jar.jar:com/facebook/a/b/a/b.class */
public final class C1824b {

    /* renamed from: a */
    public final String f5550a;

    /* renamed from: b */
    public final String f5551b;

    /* renamed from: c */
    public final List<C1825c> f5552c;

    /* renamed from: d */
    public final String f5553d;

    public C1824b(JSONObject jSONObject) {
        this.f5550a = jSONObject.getString("name");
        this.f5551b = jSONObject.optString("value");
        ArrayList arrayList = new ArrayList();
        JSONArray optJSONArray = jSONObject.optJSONArray("path");
        if (optJSONArray != null) {
            for (int i = 0; i < optJSONArray.length(); i++) {
                arrayList.add(new C1825c(optJSONArray.getJSONObject(i)));
            }
        }
        this.f5552c = arrayList;
        this.f5553d = jSONObject.optString("path_type", "absolute");
    }
}
