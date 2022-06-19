package com.facebook.p094a.p101f;

import com.facebook.C2095j;
import com.facebook.internal.C2044k;
import com.facebook.p094a.p100e.C1891b;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: com.facebook.a.f.a */
/* loaded from: classes-dex2jar.jar:com/facebook/a/f/a.class */
public final class C1901a {

    /* renamed from: a */
    private static boolean f5742a = false;

    /* renamed from: b */
    private static boolean f5743b = false;

    /* renamed from: a */
    public static void m15942a() {
        f5742a = true;
        f5743b = C2044k.m15615a("FBSDKFeatureAddressDetectionSample", C2095j.m15356l(), false);
    }

    /* renamed from: a */
    public static void m15940a(Map<String, String> map) {
        if (!f5742a || map.size() == 0) {
            return;
        }
        try {
            ArrayList<String> arrayList = new ArrayList(map.keySet());
            JSONObject jSONObject = new JSONObject();
            for (String str : arrayList) {
                String str2 = map.get(str);
                if (m15941a(str2)) {
                    map.remove(str);
                    if (!f5743b) {
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
    }

    /* renamed from: a */
    private static boolean m15941a(String str) {
        float[] fArr = new float[30];
        Arrays.fill(fArr, 0.0f);
        String m15974a = C1891b.m15974a("DATA_DETECTION_ADDRESS", fArr, str);
        return m15974a != null && m15974a.equals("SHOULD_FILTER");
    }
}
