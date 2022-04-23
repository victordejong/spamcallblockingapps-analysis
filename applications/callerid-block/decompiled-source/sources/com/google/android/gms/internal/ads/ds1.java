package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Build;
import android.view.WindowManager;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ds1.class */
public final class ds1 {

    /* renamed from: a */
    private static WindowManager f6361a;

    /* renamed from: b */
    private static final String[] f6362b = {"x", "y", "width", "height"};

    /* renamed from: c */
    static float f6363c = Resources.getSystem().getDisplayMetrics().density;

    /* renamed from: a */
    public static void m7696a(Context context) {
        if (context != null) {
            f6363c = context.getResources().getDisplayMetrics().density;
            f6361a = (WindowManager) context.getSystemService("window");
        }
    }

    /* renamed from: b */
    public static JSONObject m7695b(int i, int i2, int i3, int i4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", i / f6363c);
            jSONObject.put("y", i2 / f6363c);
            jSONObject.put("width", i3 / f6363c);
            jSONObject.put("height", i4 / f6363c);
        } catch (JSONException e) {
            es1.m7594a("Error with creating viewStateObject", e);
        }
        return jSONObject;
    }

    /* renamed from: c */
    public static void m7694c(JSONObject jSONObject, String str, Object obj) {
        try {
            jSONObject.put(str, obj);
        } catch (JSONException e) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 47);
            sb.append("JSONException during JSONObject.put for name [");
            sb.append(str);
            sb.append("]");
            es1.m7594a(sb.toString(), e);
        }
    }

    /* renamed from: d */
    public static void m7693d(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("adSessionId", str);
        } catch (JSONException e) {
            es1.m7594a("Error with setting ad session id", e);
        }
    }

    /* renamed from: e */
    public static void m7692e(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("notVisibleReason", str);
        } catch (JSONException e) {
            es1.m7594a("Error with setting not visible reason", e);
        }
    }

    /* renamed from: f */
    public static void m7691f(JSONObject jSONObject, hs1 hs1Var) {
        pr1 b = hs1Var.m7235b();
        JSONArray jSONArray = new JSONArray();
        ArrayList<String> c = hs1Var.m7234c();
        int size = c.size();
        for (int i = 0; i < size; i++) {
            jSONArray.put(c.get(i));
        }
        try {
            jSONObject.put("isFriendlyObstructionFor", jSONArray);
            jSONObject.put("friendlyObstructionClass", b.m6173b());
            jSONObject.put("friendlyObstructionPurpose", b.m6172c());
            jSONObject.put("friendlyObstructionReason", b.m6171d());
        } catch (JSONException e) {
            es1.m7594a("Error with setting friendly obstruction", e);
        }
    }

    /* renamed from: g */
    public static void m7690g(JSONObject jSONObject, JSONObject jSONObject2) {
        try {
            JSONArray optJSONArray = jSONObject.optJSONArray("childViews");
            JSONArray jSONArray = optJSONArray;
            if (optJSONArray == null) {
                jSONArray = new JSONArray();
                jSONObject.put("childViews", jSONArray);
            }
            jSONArray.put(jSONObject2);
        } catch (JSONException e) {
            ab2.m8150b(e);
        }
    }

    /* renamed from: h */
    public static void m7689h(JSONObject jSONObject) {
        float f;
        int i = 0;
        float f2 = 0.0f;
        float f3 = 0.0f;
        if (Build.VERSION.SDK_INT >= 17) {
            if (f6361a != null) {
                Point point = new Point(0, 0);
                f6361a.getDefaultDisplay().getRealSize(point);
                float f4 = point.x;
                float f5 = f6363c;
                f2 = f4 / f5;
                f = point.y / f5;
            }
            f = 0.0f;
        } else {
            JSONArray optJSONArray = jSONObject.optJSONArray("childViews");
            if (optJSONArray != null) {
                int length = optJSONArray.length();
                float f6 = 0.0f;
                while (true) {
                    f2 = f3;
                    f = f6;
                    if (i >= length) {
                        break;
                    }
                    JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                    f3 = f3;
                    f6 = f6;
                    if (optJSONObject != null) {
                        double optDouble = optJSONObject.optDouble("x");
                        double optDouble2 = optJSONObject.optDouble("y");
                        double optDouble3 = optJSONObject.optDouble("width");
                        double optDouble4 = optJSONObject.optDouble("height");
                        f3 = Math.max(f3, (float) (optDouble + optDouble3));
                        f6 = Math.max(f6, (float) (optDouble2 + optDouble4));
                    }
                    i++;
                }
            }
            f = 0.0f;
        }
        try {
            jSONObject.put("width", f2);
            jSONObject.put("height", f);
        } catch (JSONException e) {
            ab2.m8150b(e);
        }
    }

    /* renamed from: i */
    public static boolean m7688i(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject == null && jSONObject2 == null) {
            return true;
        }
        if (jSONObject == null || jSONObject2 == null) {
            return false;
        }
        String[] strArr = f6362b;
        int length = strArr.length;
        for (int i = 0; i < 4; i++) {
            String str = strArr[i];
            if (jSONObject.optDouble(str) != jSONObject2.optDouble(str)) {
                return false;
            }
        }
        if (!jSONObject.optString("adSessionId", "").equals(jSONObject2.optString("adSessionId", ""))) {
            return false;
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("isFriendlyObstructionFor");
        JSONArray optJSONArray2 = jSONObject2.optJSONArray("isFriendlyObstructionFor");
        if (!(optJSONArray == null && optJSONArray2 == null)) {
            if (!m7687j(optJSONArray, optJSONArray2)) {
                return false;
            }
            for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                if (!optJSONArray.optString(i2, "").equals(optJSONArray2.optString(i2, ""))) {
                    return false;
                }
            }
        }
        JSONArray optJSONArray3 = jSONObject.optJSONArray("childViews");
        JSONArray optJSONArray4 = jSONObject2.optJSONArray("childViews");
        if (optJSONArray3 == null && optJSONArray4 == null) {
            return true;
        }
        if (!m7687j(optJSONArray3, optJSONArray4)) {
            return false;
        }
        for (int i3 = 0; i3 < optJSONArray3.length(); i3++) {
            if (!m7688i(optJSONArray3.optJSONObject(i3), optJSONArray4.optJSONObject(i3))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: j */
    private static boolean m7687j(JSONArray jSONArray, JSONArray jSONArray2) {
        if (jSONArray == null && jSONArray2 == null) {
            return true;
        }
        return (jSONArray == null || jSONArray2 == null || jSONArray.length() != jSONArray2.length()) ? false : true;
    }
}
