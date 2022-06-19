package com.facebook.appevents.p280b.p281a;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.appevents.b.a.b */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/a/b.class */
public final class C9976b {

    /* renamed from: a */
    public final String f33182a;

    /* renamed from: b */
    public final String f33183b;

    /* renamed from: c */
    public final List<C9977c> f33184c;

    /* renamed from: d */
    public final String f33185d;

    public C9976b(JSONObject jSONObject) throws JSONException {
        this.f33182a = jSONObject.getString("name");
        this.f33183b = jSONObject.optString("value");
        ArrayList arrayList = new ArrayList();
        JSONArray optJSONArray = jSONObject.optJSONArray("path");
        if (optJSONArray != null) {
            for (int i = 0; i < optJSONArray.length(); i++) {
                arrayList.add(new C9977c(optJSONArray.getJSONObject(i)));
            }
        }
        this.f33184c = arrayList;
        this.f33185d = jSONObject.optString("path_type", "absolute");
    }
}
