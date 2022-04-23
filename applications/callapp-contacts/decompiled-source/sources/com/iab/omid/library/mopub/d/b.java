package com.iab.omid.library.mopub.d;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Build;
import android.view.WindowManager;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iab.omid.library.mopub.b.c;
import com.iab.omid.library.mopub.g.b;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/d/b.class */
public final class b {

    /* renamed from: b  reason: collision with root package name */
    private static WindowManager f33291b;

    /* renamed from: c  reason: collision with root package name */
    private static String[] f33292c = {"x", "y", "width", "height"};

    /* renamed from: a  reason: collision with root package name */
    static float f33290a = Resources.getSystem().getDisplayMetrics().density;

    /* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/d/b$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        final float f33293a;

        /* renamed from: b  reason: collision with root package name */
        final float f33294b;

        a(float f, float f2) {
            this.f33293a = f;
            this.f33294b = f2;
        }
    }

    public static JSONObject a(int i, int i2, int i3, int i4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", i / f33290a);
            jSONObject.put("y", i2 / f33290a);
            jSONObject.put("width", i3 / f33290a);
            jSONObject.put("height", i4 / f33290a);
        } catch (JSONException e) {
            c.a("Error with creating viewStateObject", e);
        }
        return jSONObject;
    }

    public static void a(Context context) {
        if (context != null) {
            f33290a = context.getResources().getDisplayMetrics().density;
            f33291b = (WindowManager) context.getSystemService("window");
        }
    }

    public static void a(JSONObject jSONObject) {
        float f;
        int i = Build.VERSION.SDK_INT;
        r9 = BitmapDescriptorFactory.HUE_RED;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        if (i >= 17) {
            if (f33291b != null) {
                Point point = new Point(0, 0);
                f33291b.getDefaultDisplay().getRealSize(point);
                f2 = point.x / f33290a;
                f = point.y / f33290a;
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
            jSONObject.put("width", aVar.f33293a);
            jSONObject.put("height", aVar.f33294b);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public static void a(JSONObject jSONObject, b.a aVar) {
        c cVar = aVar.f33322a;
        JSONArray jSONArray = new JSONArray();
        for (String str : aVar.f33323b) {
            jSONArray.put(str);
        }
        try {
            jSONObject.put("isFriendlyObstructionFor", jSONArray);
            jSONObject.put("friendlyObstructionClass", cVar.f33268b);
            jSONObject.put("friendlyObstructionPurpose", cVar.f33269c);
            jSONObject.put("friendlyObstructionReason", cVar.f33270d);
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

    /* JADX WARN: Removed duplicated region for block: B:39:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0114 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:65:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean b(org.json.JSONObject r5, org.json.JSONObject r6) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iab.omid.library.mopub.d.b.b(org.json.JSONObject, org.json.JSONObject):boolean");
    }
}
