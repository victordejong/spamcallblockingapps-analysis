package com.iab.omid.library.pubnativenet.p441d;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Build;
import android.view.WindowManager;
import com.iab.omid.library.pubnativenet.p439b.C16432c;
import com.iab.omid.library.pubnativenet.p444g.C16469b;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.pubnativenet.d.b */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/d/b.class */
public final class C16445b {

    /* renamed from: b */
    private static WindowManager f57961b;

    /* renamed from: c */
    private static String[] f57962c = {"x", "y", "width", "height"};

    /* renamed from: a */
    static float f57960a = Resources.getSystem().getDisplayMetrics().density;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.iab.omid.library.pubnativenet.d.b$a */
    /* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/d/b$a.class */
    public static final class C16446a {

        /* renamed from: a */
        final float f57963a;

        /* renamed from: b */
        final float f57964b;

        C16446a(float f, float f2) {
            this.f57963a = f;
            this.f57964b = f2;
        }
    }

    /* renamed from: a */
    public static JSONObject m7236a(int i, int i2, int i3, int i4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", i / f57960a);
            jSONObject.put("y", i2 / f57960a);
            jSONObject.put("width", i3 / f57960a);
            jSONObject.put("height", i4 / f57960a);
        } catch (JSONException e) {
            C16447c.m7225a("Error with creating viewStateObject", e);
        }
        return jSONObject;
    }

    /* renamed from: a */
    public static void m7235a(Context context) {
        if (context != null) {
            f57960a = context.getResources().getDisplayMetrics().density;
            f57961b = (WindowManager) context.getSystemService("window");
        }
    }

    /* renamed from: a */
    public static void m7233a(JSONObject jSONObject) {
        float f;
        Point point;
        float f2 = 0.0f;
        if (Build.VERSION.SDK_INT >= 17) {
            if (f57961b != null) {
                f57961b.getDefaultDisplay().getRealSize(new Point(0, 0));
                f2 = point.x / f57960a;
                f = point.y / f57960a;
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
        C16446a c16446a = new C16446a(f2, f);
        try {
            jSONObject.put("width", c16446a.f57963a);
            jSONObject.put("height", c16446a.f57964b);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public static void m7232a(JSONObject jSONObject, C16469b.C16470a c16470a) {
        C16432c c16432c = c16470a.f58009a;
        JSONArray jSONArray = new JSONArray();
        for (String str : c16470a.f58010b) {
            jSONArray.put(str);
        }
        try {
            jSONObject.put("isFriendlyObstructionFor", jSONArray);
            jSONObject.put("friendlyObstructionClass", c16432c.f57933b);
            jSONObject.put("friendlyObstructionPurpose", c16432c.f57934c);
            jSONObject.put("friendlyObstructionReason", c16432c.f57935d);
        } catch (JSONException e) {
            C16447c.m7225a("Error with setting friendly obstruction", e);
        }
    }

    /* renamed from: a */
    public static void m7231a(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("adSessionId", str);
        } catch (JSONException e) {
            C16447c.m7225a("Error with setting ad session id", e);
        }
    }

    /* renamed from: a */
    public static void m7230a(JSONObject jSONObject, String str, Object obj) {
        try {
            jSONObject.put(str, obj);
        } catch (JSONException e) {
            C16447c.m7225a("JSONException during JSONObject.put for name [" + str + "]", e);
        }
    }

    /* renamed from: a */
    public static void m7229a(JSONObject jSONObject, JSONObject jSONObject2) {
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
    private static boolean m7234a(JSONArray jSONArray, JSONArray jSONArray2) {
        if (jSONArray == null && jSONArray2 == null) {
            return true;
        }
        return (jSONArray == null || jSONArray2 == null || jSONArray.length() != jSONArray2.length()) ? false : true;
    }

    /* renamed from: b */
    public static void m7228b(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("notVisibleReason", str);
        } catch (JSONException e) {
            C16447c.m7225a("Error with setting not visible reason", e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0113 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:65:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:? A[RETURN, SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m7227b(org.json.JSONObject r5, org.json.JSONObject r6) {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iab.omid.library.pubnativenet.p441d.C16445b.m7227b(org.json.JSONObject, org.json.JSONObject):boolean");
    }
}
