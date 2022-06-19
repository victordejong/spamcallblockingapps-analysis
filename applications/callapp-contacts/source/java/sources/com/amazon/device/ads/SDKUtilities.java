package com.amazon.device.ads;

import android.os.Build;
import android.telephony.TelephonyManager;
import com.callapp.contacts.model.Constants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/SDKUtilities.class */
public class SDKUtilities {

    /* renamed from: a */
    private static String f11931a = "false";

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/SDKUtilities$SimpleSize.class */
    public static class SimpleSize {

        /* renamed from: a */
        int f11932a;

        /* renamed from: b */
        int f11933b;

        public SimpleSize(int i, int i2) {
            this.f11932a = i;
            this.f11933b = i2;
        }
    }

    /* renamed from: a */
    private static List<Object> m38744a(JSONArray jSONArray) throws JSONException {
        List<Object> list;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            Object obj = jSONArray.get(i);
            if (obj instanceof JSONArray) {
                list = m38744a((JSONArray) obj);
            } else {
                list = obj;
                if (obj instanceof JSONObject) {
                    list = m38743a((JSONObject) obj);
                }
            }
            arrayList.add(list);
        }
        return arrayList;
    }

    /* renamed from: a */
    public static Map<String, Object> m38743a(JSONObject jSONObject) throws JSONException {
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object obj = jSONObject.get(next);
            if (obj instanceof JSONObject) {
                hashMap.put(next, m38743a((JSONObject) obj));
            } else if (obj instanceof JSONArray) {
                hashMap.put(next, m38744a((JSONArray) obj));
            } else {
                hashMap.put(next, obj);
            }
        }
        return hashMap;
    }

    /* renamed from: a */
    public static boolean m38745a() {
        return (Build.VERSION.SDK_INT < 23 || AdRegistration.m39071d().checkSelfPermission("android.permission.CALL_PHONE") == 0) && ((TelephonyManager) AdRegistration.m39071d().getSystemService(Constants.EXTRA_PHONE_NUMBER)).getPhoneType() != 0;
    }
}
