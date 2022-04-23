package com.facebook.appevents.b.a;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/a/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final String f19450a;

    /* renamed from: b  reason: collision with root package name */
    public final String f19451b;

    /* renamed from: c  reason: collision with root package name */
    public final List<c> f19452c;

    /* renamed from: d  reason: collision with root package name */
    public final String f19453d;

    public b(JSONObject jSONObject) throws JSONException {
        this.f19450a = jSONObject.getString("name");
        this.f19451b = jSONObject.optString("value");
        ArrayList arrayList = new ArrayList();
        JSONArray optJSONArray = jSONObject.optJSONArray("path");
        if (optJSONArray != null) {
            for (int i = 0; i < optJSONArray.length(); i++) {
                arrayList.add(new c(optJSONArray.getJSONObject(i)));
            }
        }
        this.f19452c = arrayList;
        this.f19453d = jSONObject.optString("path_type", "absolute");
    }
}
