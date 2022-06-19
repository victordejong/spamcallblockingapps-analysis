package com.iab.omid.library.mopub.p127d;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.WindowManager;
import com.iab.omid.library.mopub.p125b.C2605c;
import com.iab.omid.library.mopub.walking.C2623a;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.mopub.d.b */
/* loaded from: classes3-dex2jar.jar:com/iab/omid/library/mopub/d/b.class */
public class C2614b {

    /* renamed from: b */
    private static WindowManager f8373b;

    /* renamed from: c */
    private static String[] f8374c = {"x", "y", "width", "height"};

    /* renamed from: a */
    public static float f8372a = Resources.getSystem().getDisplayMetrics().density;

    /* renamed from: com.iab.omid.library.mopub.d.b$a */
    /* loaded from: classes3-dex2jar.jar:com/iab/omid/library/mopub/d/b$a.class */
    public static class C2615a {

        /* renamed from: a */
        public final float f8375a;

        /* renamed from: b */
        public final float f8376b;

        public C2615a(float f, float f2) {
            this.f8375a = f;
            this.f8376b = f2;
        }
    }

    /* renamed from: a */
    public static float m36420a(int i) {
        return i / f8372a;
    }

    /* renamed from: a */
    public static JSONObject m36419a(int i, int i2, int i3, int i4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", m36420a(i));
            jSONObject.put("y", m36420a(i2));
            jSONObject.put("width", m36420a(i3));
            jSONObject.put("height", m36420a(i4));
        } catch (JSONException e) {
            C2616c.m36403a("Error with creating viewStateObject", e);
        }
        return jSONObject;
    }

    /* renamed from: a */
    public static void m36418a(Context context) {
        if (context != null) {
            f8372a = context.getResources().getDisplayMetrics().density;
            f8373b = (WindowManager) context.getSystemService("window");
        }
    }

    /* renamed from: a */
    public static void m36416a(JSONObject jSONObject) {
        C2615a m36411b = m36411b(jSONObject);
        try {
            jSONObject.put("width", m36411b.f8375a);
            jSONObject.put("height", m36411b.f8376b);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public static void m36415a(JSONObject jSONObject, C2623a.C2624a c2624a) {
        C2605c m36347a = c2624a.m36347a();
        JSONArray jSONArray = new JSONArray();
        for (String str : c2624a.m36345b()) {
            jSONArray.put(str);
        }
        try {
            jSONObject.put("isFriendlyObstructionFor", jSONArray);
            jSONObject.put("friendlyObstructionClass", m36347a.m36458b());
            jSONObject.put("friendlyObstructionPurpose", m36347a.m36457c());
            jSONObject.put("friendlyObstructionReason", m36347a.m36456d());
        } catch (JSONException e) {
            C2616c.m36403a("Error with setting friendly obstruction", e);
        }
    }

    /* renamed from: a */
    public static void m36414a(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("adSessionId", str);
        } catch (JSONException e) {
            C2616c.m36403a("Error with setting ad session id", e);
        }
    }

    /* renamed from: a */
    public static void m36413a(JSONObject jSONObject, String str, Object obj) {
        try {
            jSONObject.put(str, obj);
        } catch (JSONException e) {
            C2616c.m36403a("JSONException during JSONObject.put for name [" + str + "]", e);
        }
    }

    /* renamed from: a */
    public static void m36412a(JSONObject jSONObject, JSONObject jSONObject2) {
        try {
            JSONArray optJSONArray = jSONObject.optJSONArray("childViews");
            JSONArray jSONArray = optJSONArray;
            if (optJSONArray == null) {
                jSONArray = new JSONArray();
                jSONObject.put("childViews", jSONArray);
            }
            jSONArray.put(jSONObject2);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    private static boolean m36417a(JSONArray jSONArray, JSONArray jSONArray2) {
        boolean z = true;
        if (jSONArray == null && jSONArray2 == null) {
            return true;
        }
        if (jSONArray == null || jSONArray2 == null) {
            return false;
        }
        if (jSONArray.length() != jSONArray2.length()) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    private static C2615a m36411b(JSONObject jSONObject) {
        float f;
        float f2 = 0.0f;
        if (f8373b != null) {
            Point point = new Point(0, 0);
            f8373b.getDefaultDisplay().getRealSize(point);
            f2 = m36420a(point.x);
            f = m36420a(point.y);
        } else {
            f = 0.0f;
        }
        return new C2615a(f2, f);
    }

    /* renamed from: b */
    public static void m36410b(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("notVisibleReason", str);
        } catch (JSONException e) {
            C2616c.m36403a("Error with setting not visible reason", e);
        }
    }

    /* renamed from: b */
    public static boolean m36409b(@NonNull JSONObject jSONObject, @Nullable JSONObject jSONObject2) {
        boolean z = true;
        if (jSONObject == null && jSONObject2 == null) {
            return true;
        }
        if (jSONObject == null || jSONObject2 == null) {
            return false;
        }
        if (!m36408c(jSONObject, jSONObject2) || !m36407d(jSONObject, jSONObject2) || !m36406e(jSONObject, jSONObject2) || !m36405f(jSONObject, jSONObject2)) {
            z = false;
        }
        return z;
    }

    /* renamed from: c */
    private static boolean m36408c(JSONObject jSONObject, JSONObject jSONObject2) {
        String[] strArr;
        for (String str : f8374c) {
            if (jSONObject.optDouble(str) != jSONObject2.optDouble(str)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: d */
    private static boolean m36407d(JSONObject jSONObject, JSONObject jSONObject2) {
        return jSONObject.optString("adSessionId", "").equals(jSONObject2.optString("adSessionId", ""));
    }

    /* renamed from: e */
    private static boolean m36406e(JSONObject jSONObject, JSONObject jSONObject2) {
        JSONArray optJSONArray = jSONObject.optJSONArray("isFriendlyObstructionFor");
        JSONArray optJSONArray2 = jSONObject2.optJSONArray("isFriendlyObstructionFor");
        if (optJSONArray == null && optJSONArray2 == null) {
            return true;
        }
        if (!m36417a(optJSONArray, optJSONArray2)) {
            return false;
        }
        for (int i = 0; i < optJSONArray.length(); i++) {
            if (!optJSONArray.optString(i, "").equals(optJSONArray2.optString(i, ""))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    private static boolean m36405f(JSONObject jSONObject, JSONObject jSONObject2) {
        JSONArray optJSONArray = jSONObject.optJSONArray("childViews");
        JSONArray optJSONArray2 = jSONObject2.optJSONArray("childViews");
        if (optJSONArray == null && optJSONArray2 == null) {
            return true;
        }
        if (!m36417a(optJSONArray, optJSONArray2)) {
            return false;
        }
        for (int i = 0; i < optJSONArray.length(); i++) {
            if (!m36409b(optJSONArray.optJSONObject(i), optJSONArray2.optJSONObject(i))) {
                return false;
            }
        }
        return true;
    }
}
