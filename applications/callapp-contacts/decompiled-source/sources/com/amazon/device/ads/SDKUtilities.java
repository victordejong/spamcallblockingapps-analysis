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

    /* renamed from: a  reason: collision with root package name */
    private static String f6524a = "false";

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/SDKUtilities$SimpleSize.class */
    public static class SimpleSize {

        /* renamed from: a  reason: collision with root package name */
        int f6525a;

        /* renamed from: b  reason: collision with root package name */
        int f6526b;

        public SimpleSize(int i, int i2) {
            this.f6525a = i;
            this.f6526b = i2;
        }
    }

    private static List<Object> a(JSONArray jSONArray) throws JSONException {
        Object obj;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            Object obj2 = jSONArray.get(i);
            if (obj2 instanceof JSONArray) {
                obj = a((JSONArray) obj2);
            } else {
                obj = obj2;
                if (obj2 instanceof JSONObject) {
                    obj = a((JSONObject) obj2);
                }
            }
            arrayList.add(obj);
        }
        return arrayList;
    }

    public static Map<String, Object> a(JSONObject jSONObject) throws JSONException {
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object obj = jSONObject.get(next);
            if (obj instanceof JSONObject) {
                hashMap.put(next, a((JSONObject) obj));
            } else if (obj instanceof JSONArray) {
                hashMap.put(next, a((JSONArray) obj));
            } else {
                hashMap.put(next, obj);
            }
        }
        return hashMap;
    }

    public static boolean a() {
        return (Build.VERSION.SDK_INT < 23 || AdRegistration.d().checkSelfPermission("android.permission.CALL_PHONE") == 0) && ((TelephonyManager) AdRegistration.d().getSystemService(Constants.EXTRA_PHONE_NUMBER)).getPhoneType() != 0;
    }
}
