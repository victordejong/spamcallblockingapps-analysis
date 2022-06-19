package com.iab.omid.library.applovin.p062d;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.view.WindowManager;
import com.iab.omid.library.applovin.p060b.C1934c;
import com.iab.omid.library.applovin.walking.C1961a;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.applovin.d.b */
/* loaded from: classes-dex2jar.jar:com/iab/omid/library/applovin/d/b.class */
public class C1946b {

    /* renamed from: b */
    private static WindowManager f7197b;

    /* renamed from: c */
    private static String[] f7198c = {"x", "y", "width", "height"};

    /* renamed from: a */
    public static float f7196a = Resources.getSystem().getDisplayMetrics().density;

    /* renamed from: com.iab.omid.library.applovin.d.b$a */
    /* loaded from: classes-dex2jar.jar:com/iab/omid/library/applovin/d/b$a.class */
    public static class C1947a {

        /* renamed from: a */
        public final float f7199a;

        /* renamed from: b */
        public final float f7200b;

        public C1947a(float f, float f2) {
            this.f7199a = f;
            this.f7200b = f2;
        }
    }

    /* renamed from: a */
    public static float m4107a(int i) {
        return i / f7196a;
    }

    /* renamed from: a */
    public static JSONObject m4106a(int i, int i2, int i3, int i4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", m4107a(i));
            jSONObject.put("y", m4107a(i2));
            jSONObject.put("width", m4107a(i3));
            jSONObject.put("height", m4107a(i4));
        } catch (JSONException e) {
            C1948c.m4088a("Error with creating viewStateObject", e);
        }
        return jSONObject;
    }

    /* renamed from: a */
    public static void m4105a(Context context) {
        if (context != null) {
            f7196a = context.getResources().getDisplayMetrics().density;
            f7197b = (WindowManager) context.getSystemService("window");
        }
    }

    /* renamed from: a */
    public static void m4103a(JSONObject jSONObject) {
        C1947a m4097b = m4097b(jSONObject);
        try {
            jSONObject.put("width", m4097b.f7199a);
            jSONObject.put("height", m4097b.f7200b);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public static void m4102a(JSONObject jSONObject, C1961a.C1962a c1962a) {
        C1934c m4008a = c1962a.m4008a();
        JSONArray jSONArray = new JSONArray();
        for (String str : c1962a.m4006b()) {
            jSONArray.put(str);
        }
        try {
            jSONObject.put("isFriendlyObstructionFor", jSONArray);
            jSONObject.put("friendlyObstructionClass", m4008a.m4155b());
            jSONObject.put("friendlyObstructionPurpose", m4008a.m4154c());
            jSONObject.put("friendlyObstructionReason", m4008a.m4153d());
        } catch (JSONException e) {
            C1948c.m4088a("Error with setting friendly obstruction", e);
        }
    }

    /* renamed from: a */
    public static void m4101a(JSONObject jSONObject, Boolean bool) {
        try {
            jSONObject.put("hasWindowFocus", bool);
        } catch (JSONException e) {
            C1948c.m4088a("Error with setting not visible reason", e);
        }
    }

    /* renamed from: a */
    public static void m4100a(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("adSessionId", str);
        } catch (JSONException e) {
            C1948c.m4088a("Error with setting ad session id", e);
        }
    }

    /* renamed from: a */
    public static void m4099a(JSONObject jSONObject, String str, Object obj) {
        try {
            jSONObject.put(str, obj);
        } catch (NullPointerException | JSONException e) {
            C1948c.m4088a("JSONException during JSONObject.put for name [" + str + "]", e);
        }
    }

    /* renamed from: a */
    public static void m4098a(JSONObject jSONObject, JSONObject jSONObject2) {
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
    private static boolean m4104a(JSONArray jSONArray, JSONArray jSONArray2) {
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
    private static C1947a m4097b(JSONObject jSONObject) {
        float f;
        float f2 = 0.0f;
        if (f7197b != null) {
            Point point = new Point(0, 0);
            f7197b.getDefaultDisplay().getRealSize(point);
            f2 = m4107a(point.x);
            f = m4107a(point.y);
        } else {
            f = 0.0f;
        }
        return new C1947a(f2, f);
    }

    /* renamed from: b */
    public static void m4096b(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("notVisibleReason", str);
        } catch (JSONException e) {
            C1948c.m4088a("Error with setting not visible reason", e);
        }
    }

    /* renamed from: b */
    public static boolean m4095b(JSONObject jSONObject, JSONObject jSONObject2) {
        boolean z = true;
        if (jSONObject == null && jSONObject2 == null) {
            return true;
        }
        if (jSONObject == null || jSONObject2 == null) {
            return false;
        }
        if (!m4094c(jSONObject, jSONObject2) || !m4092e(jSONObject, jSONObject2) || !m4093d(jSONObject, jSONObject2) || !m4091f(jSONObject, jSONObject2) || !m4090g(jSONObject, jSONObject2)) {
            z = false;
        }
        return z;
    }

    /* renamed from: c */
    private static boolean m4094c(JSONObject jSONObject, JSONObject jSONObject2) {
        String[] strArr;
        for (String str : f7198c) {
            if (jSONObject.optDouble(str) != jSONObject2.optDouble(str)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: d */
    private static boolean m4093d(JSONObject jSONObject, JSONObject jSONObject2) {
        return Boolean.valueOf(jSONObject.optBoolean("hasWindowFocus")).equals(Boolean.valueOf(jSONObject2.optBoolean("hasWindowFocus")));
    }

    /* renamed from: e */
    private static boolean m4092e(JSONObject jSONObject, JSONObject jSONObject2) {
        return jSONObject.optString("adSessionId", "").equals(jSONObject2.optString("adSessionId", ""));
    }

    /* renamed from: f */
    private static boolean m4091f(JSONObject jSONObject, JSONObject jSONObject2) {
        JSONArray optJSONArray = jSONObject.optJSONArray("isFriendlyObstructionFor");
        JSONArray optJSONArray2 = jSONObject2.optJSONArray("isFriendlyObstructionFor");
        if (optJSONArray == null && optJSONArray2 == null) {
            return true;
        }
        if (!m4104a(optJSONArray, optJSONArray2)) {
            return false;
        }
        for (int i = 0; i < optJSONArray.length(); i++) {
            if (!optJSONArray.optString(i, "").equals(optJSONArray2.optString(i, ""))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: g */
    private static boolean m4090g(JSONObject jSONObject, JSONObject jSONObject2) {
        JSONArray optJSONArray = jSONObject.optJSONArray("childViews");
        JSONArray optJSONArray2 = jSONObject2.optJSONArray("childViews");
        if (optJSONArray == null && optJSONArray2 == null) {
            return true;
        }
        if (!m4104a(optJSONArray, optJSONArray2)) {
            return false;
        }
        for (int i = 0; i < optJSONArray.length(); i++) {
            if (!m4095b(optJSONArray.optJSONObject(i), optJSONArray2.optJSONObject(i))) {
                return false;
            }
        }
        return true;
    }
}
