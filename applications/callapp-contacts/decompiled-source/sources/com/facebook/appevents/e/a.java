package com.facebook.appevents.e;

import com.facebook.appevents.g.c;
import com.facebook.g;
import com.facebook.internal.o;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/e/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f19541a = false;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f19542b = false;

    public static void a() {
        if (!com.facebook.internal.b.b.a.a(a.class)) {
            try {
                f19541a = true;
                f19542b = o.a("FBSDKFeatureIntegritySample", g.m(), false);
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, a.class);
            }
        }
    }

    public static void a(Map<String, String> map) {
        if (!com.facebook.internal.b.b.a.a(a.class)) {
            try {
                if (f19541a && map.size() != 0) {
                    try {
                        ArrayList<String> arrayList = new ArrayList(map.keySet());
                        JSONObject jSONObject = new JSONObject();
                        for (String str : arrayList) {
                            String str2 = map.get(str);
                            if (a(str) || a(str2)) {
                                map.remove(str);
                                if (!f19542b) {
                                    str2 = "";
                                }
                                jSONObject.put(str, str2);
                            }
                        }
                        if (jSONObject.length() != 0) {
                            map.put("_onDeviceParams", jSONObject.toString());
                        }
                    } catch (Exception e) {
                    }
                }
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, a.class);
            }
        }
    }

    private static boolean a(String str) {
        if (com.facebook.internal.b.b.a.a(a.class)) {
            return false;
        }
        try {
            return !"none".equals(b(str));
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, a.class);
            return false;
        }
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [float[], float[][]] */
    private static String b(String str) {
        if (com.facebook.internal.b.b.a.a(a.class)) {
            return null;
        }
        try {
            float[] fArr = new float[30];
            Arrays.fill(fArr, (float) BitmapDescriptorFactory.HUE_RED);
            String[] a2 = c.a(c.a.MTML_INTEGRITY_DETECT, new float[]{fArr}, new String[]{str});
            return a2 == null ? "none" : a2[0];
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, a.class);
            return null;
        }
    }
}
