package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.km */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/km.class */
public final class C3278km {
    /* renamed from: a */
    public static List<String> m7665a(JSONObject jSONObject, String str) {
        List<String> list;
        JSONArray optJSONArray = jSONObject.optJSONArray(str);
        if (optJSONArray != null) {
            ArrayList arrayList = new ArrayList(optJSONArray.length());
            for (int i = 0; i < optJSONArray.length(); i++) {
                arrayList.add(optJSONArray.getString(i));
            }
            list = Collections.unmodifiableList(arrayList);
        } else {
            list = null;
        }
        return list;
    }
}
