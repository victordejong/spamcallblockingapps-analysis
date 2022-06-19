package com.facebook.appevents.p284e;

import com.facebook.C10181g;
import com.facebook.appevents.p286g.C10052c;
import com.facebook.internal.C10298o;
import com.facebook.internal.p299b.p301b.C10249a;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: com.facebook.appevents.e.a */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/e/a.class */
public final class C10023a {

    /* renamed from: a */
    private static boolean f33298a = false;

    /* renamed from: b */
    private static boolean f33299b = false;

    /* renamed from: a */
    public static void m23590a() {
        if (C10249a.m23108a(C10023a.class)) {
            return;
        }
        try {
            f33298a = true;
            f33299b = C10298o.m23039a("FBSDKFeatureIntegritySample", C10181g.m23286m(), false);
        } catch (Throwable th) {
            C10249a.m23106a(th, C10023a.class);
        }
    }

    /* renamed from: a */
    public static void m23588a(Map<String, String> map) {
        if (C10249a.m23108a(C10023a.class)) {
            return;
        }
        try {
            if (!f33298a || map.size() == 0) {
                return;
            }
            try {
                ArrayList<String> arrayList = new ArrayList(map.keySet());
                JSONObject jSONObject = new JSONObject();
                for (String str : arrayList) {
                    String str2 = map.get(str);
                    if (m23589a(str) || m23589a(str2)) {
                        map.remove(str);
                        if (!f33299b) {
                            str2 = "";
                        }
                        jSONObject.put(str, str2);
                    }
                }
                if (jSONObject.length() == 0) {
                    return;
                }
                map.put("_onDeviceParams", jSONObject.toString());
            } catch (Exception e) {
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, C10023a.class);
        }
    }

    /* renamed from: a */
    private static boolean m23589a(String str) {
        if (C10249a.m23108a(C10023a.class)) {
            return false;
        }
        try {
            return !"none".equals(m23587b(str));
        } catch (Throwable th) {
            C10249a.m23106a(th, C10023a.class);
            return false;
        }
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [float[], float[][]] */
    /* renamed from: b */
    private static String m23587b(String str) {
        if (C10249a.m23108a(C10023a.class)) {
            return null;
        }
        try {
            float[] fArr = new float[30];
            Arrays.fill(fArr, (float) BitmapDescriptorFactory.HUE_RED);
            String[] m23520a = C10052c.m23520a(C10052c.EnumC10057a.MTML_INTEGRITY_DETECT, new float[]{fArr}, new String[]{str});
            return m23520a == null ? "none" : m23520a[0];
        } catch (Throwable th) {
            C10249a.m23106a(th, C10023a.class);
            return null;
        }
    }
}
