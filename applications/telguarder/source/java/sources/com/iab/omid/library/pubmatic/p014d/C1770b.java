package com.iab.omid.library.pubmatic.p014d;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Build;
import android.view.WindowManager;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.iab.omid.library.pubmatic.p012b.C1758c;
import com.iab.omid.library.pubmatic.walking.C1785a;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.pubmatic.d.b */
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/d/b.class */
public class C1770b {

    /* renamed from: b */
    private static WindowManager f266b;

    /* renamed from: c */
    private static String[] f267c = {"x", "y", ViewHierarchyConstants.DIMENSION_WIDTH_KEY, ViewHierarchyConstants.DIMENSION_HEIGHT_KEY};

    /* renamed from: a */
    static float f265a = Resources.getSystem().getDisplayMetrics().density;

    /* renamed from: com.iab.omid.library.pubmatic.d.b$a */
    /* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/d/b$a.class */
    public static class C1771a {

        /* renamed from: a */
        final float f268a;

        /* renamed from: b */
        final float f269b;

        C1771a(float f, float f2) {
            this.f268a = f;
            this.f269b = f2;
        }
    }

    /* renamed from: a */
    static float m1244a(int i) {
        return i / f265a;
    }

    /* renamed from: a */
    public static JSONObject m1243a(int i, int i2, int i3, int i4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", m1244a(i));
            jSONObject.put("y", m1244a(i2));
            jSONObject.put(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, m1244a(i3));
            jSONObject.put(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, m1244a(i4));
        } catch (JSONException e) {
            C1772c.m1227a("Error with creating viewStateObject", e);
        }
        return jSONObject;
    }

    /* renamed from: a */
    public static void m1242a(Context context) {
        if (context != null) {
            f265a = context.getResources().getDisplayMetrics().density;
            f266b = (WindowManager) context.getSystemService("window");
        }
    }

    /* renamed from: a */
    public static void m1240a(JSONObject jSONObject) {
        C1771a m1235b = m1235b(jSONObject);
        try {
            jSONObject.put(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, m1235b.f268a);
            jSONObject.put(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, m1235b.f269b);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public static void m1239a(JSONObject jSONObject, C1785a.C1786a c1786a) {
        C1758c m1149a = c1786a.m1149a();
        JSONArray jSONArray = new JSONArray();
        for (String str : c1786a.m1147b()) {
            jSONArray.put(str);
        }
        try {
            jSONObject.put("isFriendlyObstructionFor", jSONArray);
            jSONObject.put("friendlyObstructionClass", m1149a.m1291b());
            jSONObject.put("friendlyObstructionPurpose", m1149a.m1290c());
            jSONObject.put("friendlyObstructionReason", m1149a.m1289d());
        } catch (JSONException e) {
            C1772c.m1227a("Error with setting friendly obstruction", e);
        }
    }

    /* renamed from: a */
    public static void m1238a(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("adSessionId", str);
        } catch (JSONException e) {
            C1772c.m1227a("Error with setting ad session id", e);
        }
    }

    /* renamed from: a */
    public static void m1237a(JSONObject jSONObject, String str, Object obj) {
        try {
            jSONObject.put(str, obj);
        } catch (JSONException e) {
            C1772c.m1227a("JSONException during JSONObject.put for name [" + str + "]", e);
        }
    }

    /* renamed from: a */
    public static void m1236a(JSONObject jSONObject, JSONObject jSONObject2) {
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
    private static boolean m1241a(JSONArray jSONArray, JSONArray jSONArray2) {
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
    private static C1771a m1235b(JSONObject jSONObject) {
        float f;
        float f2 = 0.0f;
        if (Build.VERSION.SDK_INT >= 17) {
            if (f266b != null) {
                Point point = new Point(0, 0);
                f266b.getDefaultDisplay().getRealSize(point);
                f2 = m1244a(point.x);
                f = m1244a(point.y);
            }
            f = 0.0f;
            f2 = 0.0f;
        } else {
            JSONArray optJSONArray = jSONObject.optJSONArray("childViews");
            if (optJSONArray != null) {
                int length = optJSONArray.length();
                f = 0.0f;
                int i = 0;
                while (i < length) {
                    JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                    float f3 = f2;
                    float f4 = f;
                    if (optJSONObject != null) {
                        double optDouble = optJSONObject.optDouble("x");
                        double optDouble2 = optJSONObject.optDouble("y");
                        double optDouble3 = optJSONObject.optDouble(ViewHierarchyConstants.DIMENSION_WIDTH_KEY);
                        double optDouble4 = optJSONObject.optDouble(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY);
                        f3 = Math.max(f2, (float) (optDouble + optDouble3));
                        f4 = Math.max(f, (float) (optDouble2 + optDouble4));
                    }
                    i++;
                    f2 = f3;
                    f = f4;
                }
            }
            f = 0.0f;
            f2 = 0.0f;
        }
        return new C1771a(f2, f);
    }

    /* renamed from: b */
    public static void m1234b(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("notVisibleReason", str);
        } catch (JSONException e) {
            C1772c.m1227a("Error with setting not visible reason", e);
        }
    }

    /* renamed from: b */
    public static boolean m1233b(JSONObject jSONObject, JSONObject jSONObject2) {
        boolean z = true;
        if (jSONObject == null && jSONObject2 == null) {
            return true;
        }
        if (jSONObject == null || jSONObject2 == null) {
            return false;
        }
        if (!m1232c(jSONObject, jSONObject2) || !m1231d(jSONObject, jSONObject2) || !m1230e(jSONObject, jSONObject2) || !m1229f(jSONObject, jSONObject2)) {
            z = false;
        }
        return z;
    }

    /* renamed from: c */
    private static boolean m1232c(JSONObject jSONObject, JSONObject jSONObject2) {
        String[] strArr;
        for (String str : f267c) {
            if (jSONObject.optDouble(str) != jSONObject2.optDouble(str)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: d */
    private static boolean m1231d(JSONObject jSONObject, JSONObject jSONObject2) {
        return jSONObject.optString("adSessionId", "").equals(jSONObject2.optString("adSessionId", ""));
    }

    /* renamed from: e */
    private static boolean m1230e(JSONObject jSONObject, JSONObject jSONObject2) {
        JSONArray optJSONArray = jSONObject.optJSONArray("isFriendlyObstructionFor");
        JSONArray optJSONArray2 = jSONObject2.optJSONArray("isFriendlyObstructionFor");
        if (optJSONArray == null && optJSONArray2 == null) {
            return true;
        }
        if (!m1241a(optJSONArray, optJSONArray2)) {
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
    private static boolean m1229f(JSONObject jSONObject, JSONObject jSONObject2) {
        JSONArray optJSONArray = jSONObject.optJSONArray("childViews");
        JSONArray optJSONArray2 = jSONObject2.optJSONArray("childViews");
        if (optJSONArray == null && optJSONArray2 == null) {
            return true;
        }
        if (!m1241a(optJSONArray, optJSONArray2)) {
            return false;
        }
        for (int i = 0; i < optJSONArray.length(); i++) {
            if (!m1233b(optJSONArray.optJSONObject(i), optJSONArray2.optJSONObject(i))) {
                return false;
            }
        }
        return true;
    }
}
