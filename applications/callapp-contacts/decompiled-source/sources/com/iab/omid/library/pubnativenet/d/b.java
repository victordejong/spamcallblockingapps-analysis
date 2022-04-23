package com.iab.omid.library.pubnativenet.d;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Build;
import android.view.WindowManager;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iab.omid.library.pubnativenet.b.c;
import com.iab.omid.library.pubnativenet.g.b;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/d/b.class */
public final class b {

    /* renamed from: b  reason: collision with root package name */
    private static WindowManager f33386b;

    /* renamed from: c  reason: collision with root package name */
    private static String[] f33387c = {"x", "y", "width", "height"};

    /* renamed from: a  reason: collision with root package name */
    static float f33385a = Resources.getSystem().getDisplayMetrics().density;

    /* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/d/b$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        final float f33388a;

        /* renamed from: b  reason: collision with root package name */
        final float f33389b;

        a(float f, float f2) {
            this.f33388a = f;
            this.f33389b = f2;
        }
    }

    public static JSONObject a(int i, int i2, int i3, int i4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", i / f33385a);
            jSONObject.put("y", i2 / f33385a);
            jSONObject.put("width", i3 / f33385a);
            jSONObject.put("height", i4 / f33385a);
        } catch (JSONException e) {
            c.a("Error with creating viewStateObject", e);
        }
        return jSONObject;
    }

    public static void a(Context context) {
        if (context != null) {
            f33385a = context.getResources().getDisplayMetrics().density;
            f33386b = (WindowManager) context.getSystemService("window");
        }
    }

    public static void a(JSONObject jSONObject) {
        float f;
        int i = Build.VERSION.SDK_INT;
        r9 = BitmapDescriptorFactory.HUE_RED;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        if (i >= 17) {
            if (f33386b != null) {
                Point point = new Point(0, 0);
                f33386b.getDefaultDisplay().getRealSize(point);
                f2 = point.x / f33385a;
                f = point.y / f33385a;
            }
            f = BitmapDescriptorFactory.HUE_RED;
        } else {
            JSONArray optJSONArray = jSONObject.optJSONArray("childViews");
            if (optJSONArray != null) {
                int length = optJSONArray.length();
                f = BitmapDescriptorFactory.HUE_RED;
                for (int i2 = 0; i2 < length; i2++) {
                    JSONObject optJSONObject = optJSONArray.optJSONObject(i2);
                    f2 = f2;
                    f = f;
                    if (optJSONObject != null) {
                        double optDouble = optJSONObject.optDouble("x");
                        double optDouble2 = optJSONObject.optDouble("y");
                        double optDouble3 = optJSONObject.optDouble("width");
                        double optDouble4 = optJSONObject.optDouble("height");
                        f2 = Math.max(f2, (float) (optDouble + optDouble3));
                        f = Math.max(f, (float) (optDouble2 + optDouble4));
                    }
                }
            }
            f = BitmapDescriptorFactory.HUE_RED;
        }
        a aVar = new a(f2, f);
        try {
            jSONObject.put("width", aVar.f33388a);
            jSONObject.put("height", aVar.f33389b);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public static void a(JSONObject jSONObject, b.a aVar) {
        c cVar = aVar.f33417a;
        JSONArray jSONArray = new JSONArray();
        for (String str : aVar.f33418b) {
            jSONArray.put(str);
        }
        try {
            jSONObject.put("isFriendlyObstructionFor", jSONArray);
            jSONObject.put("friendlyObstructionClass", cVar.f33363b);
            jSONObject.put("friendlyObstructionPurpose", cVar.f33364c);
            jSONObject.put("friendlyObstructionReason", cVar.f33365d);
        } catch (JSONException e) {
            c.a("Error with setting friendly obstruction", e);
        }
    }

    public static void a(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("adSessionId", str);
        } catch (JSONException e) {
            c.a("Error with setting ad session id", e);
        }
    }

    public static void a(JSONObject jSONObject, String str, Object obj) {
        try {
            jSONObject.put(str, obj);
        } catch (JSONException e) {
            c.a("JSONException during JSONObject.put for name [" + str + "]", e);
        }
    }

    public static void a(JSONObject jSONObject, JSONObject jSONObject2) {
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

    private static boolean a(JSONArray jSONArray, JSONArray jSONArray2) {
        if (jSONArray == null && jSONArray2 == null) {
            return true;
        }
        return (jSONArray == null || jSONArray2 == null || jSONArray.length() != jSONArray2.length()) ? false : true;
    }

    public static void b(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("notVisibleReason", str);
        } catch (JSONException e) {
            c.a("Error with setting not visible reason", e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0113 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:65:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean b(org.json.JSONObject r5, org.json.JSONObject r6) {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iab.omid.library.pubnativenet.d.b.b(org.json.JSONObject, org.json.JSONObject):boolean");
    }
}
