package p082e7;

import android.content.res.Resources;
import android.graphics.Point;
import android.view.WindowManager;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p015b0.C0713a;
/* renamed from: e7.a */
/* loaded from: classes-dex2jar.jar:e7/a.class */
public class C2604a {

    /* renamed from: a */
    public static WindowManager f9034a;

    /* renamed from: b */
    public static String[] f9035b = {"x", "y", "width", "height"};

    /* renamed from: c */
    public static float f9036c = Resources.getSystem().getDisplayMetrics().density;

    /* renamed from: a */
    public static float m3391a(int i) {
        return i / f9036c;
    }

    /* renamed from: b */
    public static JSONObject m3390b(int i, int i2, int i3, int i4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", m3391a(i));
            jSONObject.put("y", m3391a(i2));
            jSONObject.put("width", m3391a(i3));
            jSONObject.put("height", m3391a(i4));
        } catch (JSONException e) {
            int i5 = C0713a.f2765q;
        }
        return jSONObject;
    }

    /* renamed from: c */
    public static void m3389c(JSONObject jSONObject) {
        float f;
        float f2 = 0.0f;
        if (f9034a != null) {
            Point point = new Point(0, 0);
            f9034a.getDefaultDisplay().getRealSize(point);
            f2 = m3391a(point.x);
            f = m3391a(point.y);
        } else {
            f = 0.0f;
        }
        try {
            jSONObject.put("width", f2);
            jSONObject.put("height", f);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: d */
    public static void m3388d(JSONObject jSONObject, String str, Object obj) {
        try {
            jSONObject.put(str, obj);
        } catch (JSONException e) {
        }
    }

    /* renamed from: e */
    public static void m3387e(JSONObject jSONObject, JSONObject jSONObject2) {
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

    /* renamed from: f */
    public static boolean m3386f(JSONArray jSONArray, JSONArray jSONArray2) {
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

    /* JADX WARN: Code restructure failed: missing block: B:54:0x011a, code lost:
        if (r10 == false) goto L55;
     */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00c7  */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m3385g(org.json.JSONObject r5, org.json.JSONObject r6) {
        /*
            Method dump skipped, instructions count: 294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p082e7.C2604a.m3385g(org.json.JSONObject, org.json.JSONObject):boolean");
    }
}
