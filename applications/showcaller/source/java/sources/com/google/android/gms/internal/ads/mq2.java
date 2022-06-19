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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mq2.class */
public final class mq2 {

    /* renamed from: a */
    private static WindowManager f26719a;

    /* renamed from: b */
    private static final String[] f26720b = {"x", "y", "width", "height"};

    /* renamed from: c */
    static float f26721c = Resources.getSystem().getDisplayMetrics().density;

    /* renamed from: a */
    public static void m13115a(Context context) {
        if (context != null) {
            f26721c = context.getResources().getDisplayMetrics().density;
            f26719a = (WindowManager) context.getSystemService("window");
        }
    }

    /* renamed from: b */
    public static JSONObject m13114b(int i, int i2, int i3, int i4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", i / f26721c);
            jSONObject.put("y", i2 / f26721c);
            jSONObject.put("width", i3 / f26721c);
            jSONObject.put("height", i4 / f26721c);
        } catch (JSONException e) {
            nq2.m12823a("Error with creating viewStateObject", e);
        }
        return jSONObject;
    }

    /* renamed from: c */
    public static void m13113c(JSONObject jSONObject, String str, Object obj) {
        try {
            jSONObject.put(str, obj);
        } catch (JSONException e) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 47);
            sb.append("JSONException during JSONObject.put for name [");
            sb.append(str);
            sb.append("]");
            nq2.m12823a(sb.toString(), e);
        }
    }

    /* renamed from: d */
    public static void m13112d(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("adSessionId", str);
        } catch (JSONException e) {
            nq2.m12823a("Error with setting ad session id", e);
        }
    }

    /* renamed from: e */
    public static void m13111e(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("notVisibleReason", str);
        } catch (JSONException e) {
            nq2.m12823a("Error with setting not visible reason", e);
        }
    }

    /* renamed from: f */
    public static void m13110f(JSONObject jSONObject, qq2 qq2Var) {
        xp2 m11824b = qq2Var.m11824b();
        JSONArray jSONArray = new JSONArray();
        ArrayList<String> m11823c = qq2Var.m11823c();
        int size = m11823c.size();
        for (int i = 0; i < size; i++) {
            jSONArray.put(m11823c.get(i));
        }
        try {
            jSONObject.put("isFriendlyObstructionFor", jSONArray);
            jSONObject.put("friendlyObstructionClass", m11824b.m9092b());
            jSONObject.put("friendlyObstructionPurpose", m11824b.m9091c());
            jSONObject.put("friendlyObstructionReason", m11824b.m9090d());
        } catch (JSONException e) {
            nq2.m12823a("Error with setting friendly obstruction", e);
        }
    }

    /* renamed from: g */
    public static void m13109g(JSONObject jSONObject, JSONObject jSONObject2) {
        try {
            JSONArray optJSONArray = jSONObject.optJSONArray("childViews");
            JSONArray jSONArray = optJSONArray;
            if (optJSONArray == null) {
                jSONArray = new JSONArray();
                jSONObject.put("childViews", jSONArray);
            }
            jSONArray.put(jSONObject2);
        } catch (JSONException e) {
            qc3.m11957b(e);
        }
    }

    /* renamed from: h */
    public static void m13108h(JSONObject jSONObject) {
        float f;
        int i = 0;
        float f2 = 0.0f;
        float f3 = 0.0f;
        if (Build.VERSION.SDK_INT >= 17) {
            if (f26719a != null) {
                Point point = new Point(0, 0);
                f26719a.getDefaultDisplay().getRealSize(point);
                float f4 = point.x;
                float f5 = f26721c;
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
                    float f7 = f6;
                    f2 = f3;
                    f = f7;
                    if (i >= length) {
                        break;
                    }
                    JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                    float f8 = f3;
                    float f9 = f7;
                    if (optJSONObject != null) {
                        double optDouble = optJSONObject.optDouble("x");
                        double optDouble2 = optJSONObject.optDouble("y");
                        double optDouble3 = optJSONObject.optDouble("width");
                        double optDouble4 = optJSONObject.optDouble("height");
                        f8 = Math.max(f3, (float) (optDouble + optDouble3));
                        f9 = Math.max(f7, (float) (optDouble2 + optDouble4));
                    }
                    i++;
                    f3 = f8;
                    f6 = f9;
                }
            }
            f = 0.0f;
        }
        try {
            jSONObject.put("width", f2);
            jSONObject.put("height", f);
        } catch (JSONException e) {
            qc3.m11957b(e);
        }
    }

    /* renamed from: i */
    public static boolean m13107i(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject == null && jSONObject2 == null) {
            return true;
        }
        if (jSONObject == null || jSONObject2 == null) {
            return false;
        }
        String[] strArr = f26720b;
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
        if (optJSONArray != null || optJSONArray2 != null) {
            if (!m13106j(optJSONArray, optJSONArray2)) {
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
        if (!m13106j(optJSONArray3, optJSONArray4)) {
            return false;
        }
        for (int i3 = 0; i3 < optJSONArray3.length(); i3++) {
            if (!m13107i(optJSONArray3.optJSONObject(i3), optJSONArray4.optJSONObject(i3))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: j */
    private static boolean m13106j(JSONArray jSONArray, JSONArray jSONArray2) {
        if (jSONArray == null && jSONArray2 == null) {
            return true;
        }
        return (jSONArray == null || jSONArray2 == null || jSONArray.length() != jSONArray2.length()) ? false : true;
    }
}
