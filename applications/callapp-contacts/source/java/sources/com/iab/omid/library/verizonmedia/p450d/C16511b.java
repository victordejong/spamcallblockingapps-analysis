package com.iab.omid.library.verizonmedia.p450d;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Build;
import android.view.WindowManager;
import com.iab.omid.library.verizonmedia.p448b.C16498c;
import com.iab.omid.library.verizonmedia.p453g.C16535b;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.verizonmedia.d.b */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/d/b.class */
public final class C16511b {

    /* renamed from: b */
    private static WindowManager f58093b;

    /* renamed from: c */
    private static String[] f58094c = {"x", "y", "width", "height"};

    /* renamed from: a */
    static float f58092a = Resources.getSystem().getDisplayMetrics().density;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.iab.omid.library.verizonmedia.d.b$a */
    /* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/d/b$a.class */
    public static final class C16512a {

        /* renamed from: a */
        final float f58095a;

        /* renamed from: b */
        final float f58096b;

        C16512a(float f, float f2) {
            this.f58095a = f;
            this.f58096b = f2;
        }
    }

    /* renamed from: a */
    public static JSONObject m7115a(int i, int i2, int i3, int i4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", i / f58092a);
            jSONObject.put("y", i2 / f58092a);
            jSONObject.put("width", i3 / f58092a);
            jSONObject.put("height", i4 / f58092a);
        } catch (JSONException e) {
            C16513c.m7104a("Error with creating viewStateObject", e);
        }
        return jSONObject;
    }

    /* renamed from: a */
    public static void m7114a(Context context) {
        if (context != null) {
            f58092a = context.getResources().getDisplayMetrics().density;
            f58093b = (WindowManager) context.getSystemService("window");
        }
    }

    /* renamed from: a */
    public static void m7112a(JSONObject jSONObject) {
        float f;
        Point point;
        float f2 = 0.0f;
        if (Build.VERSION.SDK_INT >= 17) {
            if (f58093b != null) {
                f58093b.getDefaultDisplay().getRealSize(new Point(0, 0));
                f2 = point.x / f58092a;
                f = point.y / f58092a;
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
                        double optDouble3 = optJSONObject.optDouble("width");
                        double optDouble4 = optJSONObject.optDouble("height");
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
        C16512a c16512a = new C16512a(f2, f);
        try {
            jSONObject.put("width", c16512a.f58095a);
            jSONObject.put("height", c16512a.f58096b);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public static void m7111a(JSONObject jSONObject, C16535b.C16536a c16536a) {
        C16498c c16498c = c16536a.f58141a;
        JSONArray jSONArray = new JSONArray();
        for (String str : c16536a.f58142b) {
            jSONArray.put(str);
        }
        try {
            jSONObject.put("isFriendlyObstructionFor", jSONArray);
            jSONObject.put("friendlyObstructionClass", c16498c.f58065b);
            jSONObject.put("friendlyObstructionPurpose", c16498c.f58066c);
            jSONObject.put("friendlyObstructionReason", c16498c.f58067d);
        } catch (JSONException e) {
            C16513c.m7104a("Error with setting friendly obstruction", e);
        }
    }

    /* renamed from: a */
    public static void m7110a(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("adSessionId", str);
        } catch (JSONException e) {
            C16513c.m7104a("Error with setting ad session id", e);
        }
    }

    /* renamed from: a */
    public static void m7109a(JSONObject jSONObject, String str, Object obj) {
        try {
            jSONObject.put(str, obj);
        } catch (JSONException e) {
            C16513c.m7104a("JSONException during JSONObject.put for name [" + str + "]", e);
        }
    }

    /* renamed from: a */
    public static void m7108a(JSONObject jSONObject, JSONObject jSONObject2) {
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
    private static boolean m7113a(JSONArray jSONArray, JSONArray jSONArray2) {
        if (jSONArray == null && jSONArray2 == null) {
            return true;
        }
        return (jSONArray == null || jSONArray2 == null || jSONArray.length() != jSONArray2.length()) ? false : true;
    }

    /* renamed from: b */
    public static void m7107b(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("notVisibleReason", str);
        } catch (JSONException e) {
            C16513c.m7104a("Error with setting not visible reason", e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0114 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:65:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:? A[RETURN, SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m7106b(org.json.JSONObject r5, org.json.JSONObject r6) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iab.omid.library.verizonmedia.p450d.C16511b.m7106b(org.json.JSONObject, org.json.JSONObject):boolean");
    }
}
