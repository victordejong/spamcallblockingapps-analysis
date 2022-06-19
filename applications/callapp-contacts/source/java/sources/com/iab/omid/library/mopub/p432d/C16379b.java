package com.iab.omid.library.mopub.p432d;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Build;
import android.view.WindowManager;
import com.iab.omid.library.mopub.p430b.C16366c;
import com.iab.omid.library.mopub.p435g.C16403b;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.mopub.d.b */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/d/b.class */
public final class C16379b {

    /* renamed from: b */
    private static WindowManager f57832b;

    /* renamed from: c */
    private static String[] f57833c = {"x", "y", "width", "height"};

    /* renamed from: a */
    static float f57831a = Resources.getSystem().getDisplayMetrics().density;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.iab.omid.library.mopub.d.b$a */
    /* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/d/b$a.class */
    public static final class C16380a {

        /* renamed from: a */
        final float f57834a;

        /* renamed from: b */
        final float f57835b;

        C16380a(float f, float f2) {
            this.f57834a = f;
            this.f57835b = f2;
        }
    }

    /* renamed from: a */
    public static JSONObject m7338a(int i, int i2, int i3, int i4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", i / f57831a);
            jSONObject.put("y", i2 / f57831a);
            jSONObject.put("width", i3 / f57831a);
            jSONObject.put("height", i4 / f57831a);
        } catch (JSONException e) {
            C16381c.m7327a("Error with creating viewStateObject", e);
        }
        return jSONObject;
    }

    /* renamed from: a */
    public static void m7337a(Context context) {
        if (context != null) {
            f57831a = context.getResources().getDisplayMetrics().density;
            f57832b = (WindowManager) context.getSystemService("window");
        }
    }

    /* renamed from: a */
    public static void m7335a(JSONObject jSONObject) {
        float f;
        Point point;
        float f2 = 0.0f;
        if (Build.VERSION.SDK_INT >= 17) {
            if (f57832b != null) {
                f57832b.getDefaultDisplay().getRealSize(new Point(0, 0));
                f2 = point.x / f57831a;
                f = point.y / f57831a;
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
        C16380a c16380a = new C16380a(f2, f);
        try {
            jSONObject.put("width", c16380a.f57834a);
            jSONObject.put("height", c16380a.f57835b);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public static void m7334a(JSONObject jSONObject, C16403b.C16404a c16404a) {
        C16366c c16366c = c16404a.f57880a;
        JSONArray jSONArray = new JSONArray();
        for (String str : c16404a.f57881b) {
            jSONArray.put(str);
        }
        try {
            jSONObject.put("isFriendlyObstructionFor", jSONArray);
            jSONObject.put("friendlyObstructionClass", c16366c.f57804b);
            jSONObject.put("friendlyObstructionPurpose", c16366c.f57805c);
            jSONObject.put("friendlyObstructionReason", c16366c.f57806d);
        } catch (JSONException e) {
            C16381c.m7327a("Error with setting friendly obstruction", e);
        }
    }

    /* renamed from: a */
    public static void m7333a(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("adSessionId", str);
        } catch (JSONException e) {
            C16381c.m7327a("Error with setting ad session id", e);
        }
    }

    /* renamed from: a */
    public static void m7332a(JSONObject jSONObject, String str, Object obj) {
        try {
            jSONObject.put(str, obj);
        } catch (JSONException e) {
            C16381c.m7327a("JSONException during JSONObject.put for name [" + str + "]", e);
        }
    }

    /* renamed from: a */
    public static void m7331a(JSONObject jSONObject, JSONObject jSONObject2) {
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
    private static boolean m7336a(JSONArray jSONArray, JSONArray jSONArray2) {
        if (jSONArray == null && jSONArray2 == null) {
            return true;
        }
        return (jSONArray == null || jSONArray2 == null || jSONArray.length() != jSONArray2.length()) ? false : true;
    }

    /* renamed from: b */
    public static void m7330b(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("notVisibleReason", str);
        } catch (JSONException e) {
            C16381c.m7327a("Error with setting not visible reason", e);
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
    public static boolean m7329b(org.json.JSONObject r5, org.json.JSONObject r6) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iab.omid.library.mopub.p432d.C16379b.m7329b(org.json.JSONObject, org.json.JSONObject):boolean");
    }
}
