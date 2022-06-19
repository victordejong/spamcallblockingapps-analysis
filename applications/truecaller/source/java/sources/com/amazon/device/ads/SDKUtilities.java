package com.amazon.device.ads;

import android.telephony.TelephonyManager;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1425c.p1426a.p1427a.C22016a;
import p193e.p1425c.p1426a.p1427a.p1428b.EnumC22018b;
import p193e.p1425c.p1426a.p1427a.p1428b.EnumC22019c;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/SDKUtilities.class */
public class SDKUtilities {
    public static final String BID_HTML_BANNER_TEMPLATE = "<div style=\"display:inline-block\"><div id=\"__dtbAd__\" style=\"width:%dpx; height:%dpx; overflow:hidden;\"/><script type=\"text/javascript\">amzn.dtb.loadAd(\"%s\",\"%s\",\"%s\", %s);</script></div>";
    public static final String BID_HTML_TEMPLATE = "<div style=\"display:inline-block\"><div id=\"__dtbAd__\" style=\"width:100%%; height:auto; overflow:hidden;\"/><script type=\"text/javascript\">amzn.dtb.loadAd(\"%s\",\"%s\",\"%s\", %s);</script></div>";
    private static final String LOG_TAG = "SDKUtilities";
    private static String amznDebugStateFlag = "false";

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/SDKUtilities$SimpleSize.class */
    public static class SimpleSize {
        public int height;
        public int width;

        public SimpleSize(int i, int i2) {
            this.width = i;
            this.height = i2;
        }

        public int getHeight() {
            return this.height;
        }

        public int getWidth() {
            return this.width;
        }

        public void setHeight(int i) {
            this.height = i;
        }

        public void setWidth(int i) {
            this.width = i;
        }
    }

    public static List<Object> convertJSONArrayToList(JSONArray jSONArray) throws JSONException {
        List<Object> list;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            Object obj = jSONArray.get(i);
            if (obj instanceof JSONArray) {
                list = convertJSONArrayToList((JSONArray) obj);
            } else {
                list = obj;
                if (obj instanceof JSONObject) {
                    list = convertJSONObjectToMap((JSONObject) obj);
                }
            }
            arrayList.add(list);
        }
        return arrayList;
    }

    public static Map<String, Object> convertJSONObjectToMap(JSONObject jSONObject) throws JSONException {
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object obj = jSONObject.get(next);
            if (obj instanceof JSONObject) {
                hashMap.put(next, convertJSONObjectToMap((JSONObject) obj));
            } else if (obj instanceof JSONArray) {
                hashMap.put(next, convertJSONArrayToList((JSONArray) obj));
            } else {
                hashMap.put(next, obj);
            }
        }
        return hashMap;
    }

    public static String getBidInfo(DTBAdResponse dTBAdResponse) {
        try {
            if (dTBAdResponse.getDTBAds().size() == 0) {
                return "";
            }
            DTBAdSize dTBAdSize = dTBAdResponse.getDTBAds().get(0);
            int width = dTBAdSize.getWidth();
            int height = dTBAdSize.getHeight();
            Map<String, List<String>> defaultDisplayAdsRequestCustomParams = dTBAdResponse.getDefaultDisplayAdsRequestCustomParams();
            List<String> list = defaultDisplayAdsRequestCustomParams.get(DTBAdLoader.A9_BID_ID_KEY);
            String str = !DtbCommonUtils.isNullOrEmpty(list) ? list.get(0) : "";
            List<String> list2 = defaultDisplayAdsRequestCustomParams.get(DTBAdLoader.A9_HOST_KEY);
            String str2 = !DtbCommonUtils.isNullOrEmpty(list2) ? list2.get(0) : "";
            List<String> list3 = defaultDisplayAdsRequestCustomParams.get(DTBAdLoader.A9_PRICE_POINTS_KEY);
            String str3 = !DtbCommonUtils.isNullOrEmpty(list3) ? list3.get(0) : "";
            return (width == 9999 && height == 9999) ? String.format(BID_HTML_TEMPLATE, str3, str, str2, amznDebugStateFlag) : String.format(BID_HTML_BANNER_TEMPLATE, Integer.valueOf(width), Integer.valueOf(height), str3, str, str2, amznDebugStateFlag);
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute getBidInfo method");
            C22016a.m8829a(EnumC22018b.FATAL, EnumC22019c.EXCEPTION, "Fail to execute getBidInfo method", e);
            return "";
        }
    }

    public static int getHeight(DTBAdResponse dTBAdResponse) {
        if (dTBAdResponse.getDTBAds().size() == 0) {
            return -1;
        }
        return dTBAdResponse.getDTBAds().get(0).getHeight();
    }

    public static String getPricePoint(DTBAdResponse dTBAdResponse) {
        String str;
        try {
            List<String> list = dTBAdResponse.getDefaultDisplayAdsRequestCustomParams().get(DTBAdLoader.A9_PRICE_POINTS_KEY);
            str = "";
            if (list != null) {
                str = "";
                if (list.size() > 0) {
                    str = list.get(0);
                }
            }
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute getPricePoint method");
            C22016a.m8829a(EnumC22018b.FATAL, EnumC22019c.EXCEPTION, "Fail to execute getPricePoint method", e);
            str = "";
        }
        return str;
    }

    public static int getWidth(DTBAdResponse dTBAdResponse) {
        if (dTBAdResponse.getDTBAds().size() == 0) {
            return -1;
        }
        return dTBAdResponse.getDTBAds().get(0).getWidth();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0066, code lost:
        if ("google_sdk".equals(android.os.Build.PRODUCT) != false) goto L22;
     */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isEmulator() {
        /*
            r0 = 0
            r5 = r0
            java.lang.String r0 = android.os.Build.FINGERPRINT     // Catch: java.lang.RuntimeException -> L6d
            r6 = r0
            java.lang.String r0 = android.os.Build.MODEL     // Catch: java.lang.RuntimeException -> L6d
            r7 = r0
            java.lang.String r0 = android.os.Build.MANUFACTURER     // Catch: java.lang.RuntimeException -> L6d
            r8 = r0
            r0 = r6
            java.lang.String r1 = "generic"
            boolean r0 = r0.startsWith(r1)     // Catch: java.lang.RuntimeException -> L6d
            if (r0 != 0) goto L69
            r0 = r6
            java.lang.String r1 = "unknown"
            boolean r0 = r0.startsWith(r1)     // Catch: java.lang.RuntimeException -> L6d
            if (r0 != 0) goto L69
            r0 = r7
            java.lang.String r1 = "google_sdk"
            boolean r0 = r0.contains(r1)     // Catch: java.lang.RuntimeException -> L6d
            if (r0 != 0) goto L69
            r0 = r7
            java.lang.String r1 = "Emulator"
            boolean r0 = r0.contains(r1)     // Catch: java.lang.RuntimeException -> L6d
            if (r0 != 0) goto L69
            r0 = r7
            java.lang.String r1 = "Android SDK built for x86"
            boolean r0 = r0.contains(r1)     // Catch: java.lang.RuntimeException -> L6d
            if (r0 != 0) goto L69
            r0 = r8
            java.lang.String r1 = "Genymotion"
            boolean r0 = r0.contains(r1)     // Catch: java.lang.RuntimeException -> L6d
            if (r0 != 0) goto L69
            java.lang.String r0 = android.os.Build.BRAND     // Catch: java.lang.RuntimeException -> L6d
            java.lang.String r1 = "generic"
            boolean r0 = r0.startsWith(r1)     // Catch: java.lang.RuntimeException -> L6d
            if (r0 == 0) goto L5a
            java.lang.String r0 = android.os.Build.DEVICE     // Catch: java.lang.RuntimeException -> L6d
            java.lang.String r1 = "generic"
            boolean r0 = r0.startsWith(r1)     // Catch: java.lang.RuntimeException -> L6d
            if (r0 != 0) goto L69
        L5a:
            java.lang.String r0 = "google_sdk"
            java.lang.String r1 = android.os.Build.PRODUCT     // Catch: java.lang.RuntimeException -> L6d
            boolean r0 = r0.equals(r1)     // Catch: java.lang.RuntimeException -> L6d
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L6b
        L69:
            r0 = 1
            r5 = r0
        L6b:
            r0 = r5
            return r0
        L6d:
            r8 = move-exception
            java.lang.String r0 = com.amazon.device.ads.SDKUtilities.LOG_TAG
            java.lang.String r1 = "Fail to execute isEmulator method"
            com.amazon.device.ads.DtbLog.error(r0, r1)
            e.c.a.a.b.b r0 = p193e.p1425c.p1426a.p1427a.p1428b.EnumC22018b.ERROR
            e.c.a.a.b.c r1 = p193e.p1425c.p1426a.p1427a.p1428b.EnumC22019c.EXCEPTION
            java.lang.String r2 = "Fail to execute isEmulator method"
            r3 = r8
            p193e.p1425c.p1426a.p1427a.C22016a.m8829a(r0, r1, r2, r3)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazon.device.ads.SDKUtilities.isEmulator():boolean");
    }

    public static boolean isTelSupported() {
        boolean z = false;
        try {
            if (AdRegistration.getContext().checkSelfPermission("android.permission.CALL_PHONE") != 0) {
                return false;
            }
            if (((TelephonyManager) AdRegistration.getContext().getSystemService(AnalyticsConstants.PHONE)).getPhoneType() != 0) {
                z = true;
            }
            return z;
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute isTelSupported method");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute isTelSupported method", e);
            return false;
        }
    }

    public static void setAmznDebugStateFlagValue(String str) {
        amznDebugStateFlag = str;
    }
}
