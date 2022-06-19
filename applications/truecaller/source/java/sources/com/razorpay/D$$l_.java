package com.razorpay;

import android.content.Context;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.freshchat.consumer.sdk.beans.User;
import com.huawei.hms.framework.common.hianalytics.HianalyticsBaseData;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.mopub.common.Constants;
import com.razorpay.AnalyticsProperty;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/razorpay/D$$l_.class */
public final class D$$l_ {

    /* renamed from: d */
    private static String f9365d;

    /* renamed from: e */
    private static String f9366e;

    /* renamed from: f */
    private static boolean f9367f;

    /* renamed from: g */
    private static boolean f9368g;

    /* renamed from: h */
    private static boolean f9369h;

    /* renamed from: i */
    private static float f9370i;

    /* renamed from: j */
    private static int f9371j;

    /* renamed from: k */
    private static int f9372k;

    /* renamed from: l */
    private static JSONObject f9373l;

    /* renamed from: m */
    private static JSONObject f9374m;

    /* renamed from: p */
    private static String f9377p;

    /* renamed from: r */
    private static Map<String, Object> f9379r;

    /* renamed from: s */
    private static Map<String, Object> f9380s;

    /* renamed from: a */
    private static String f9362a = Build.MANUFACTURER;

    /* renamed from: b */
    private static String f9363b = Build.MODEL;

    /* renamed from: c */
    private static String f9364c = Build.DEVICE;

    /* renamed from: n */
    private static boolean f9375n = false;

    /* renamed from: o */
    private static String f9376o = "standalone";

    /* renamed from: q */
    private static ArrayList<JSONObject> f9378q = new ArrayList<>();

    /* renamed from: a */
    private static Object m36121a(JSONObject jSONObject, String str) {
        try {
            return jSONObject.get(str);
        } catch (Exception e) {
            AnalyticsUtil.reportError(e, AnalyticsConstants.WARNING, e.getMessage());
            return null;
        }
    }

    /* renamed from: a */
    public static void m36130a() {
        synchronized (f9373l) {
            JSONObject m36108e = m36108e(f9373l);
            f9373l = m36108e;
            m36108e.toString();
            m36110d(f9373l);
        }
        m36107f();
    }

    /* renamed from: a */
    public static void m36129a(Context context) {
        synchronized (f9373l) {
            String jSONObject = m36108e(f9373l).toString();
            String str = f9377p;
            try {
                String randomString = BaseUtils.getRandomString();
                String m36132a = new CryptLib().m36132a(jSONObject, "c89TV2vbYJvvRkSSgx3dZZZu28EmcqCJ", randomString);
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(RemoteMessageConst.DATA, m36132a);
                jSONObject2.put("iv", randomString);
                jSONObject2.put(HianalyticsBaseData.SDK_VERSION, str);
                C2735h.m36075b(context, "SavedEventsData", jSONObject2.toString());
            } catch (Exception e) {
                AnalyticsUtil.reportError(e, "error", "Unable to encrypt value");
                d__1_.m36087a("Unable to encrypt value", e);
            }
        }
    }

    /* renamed from: a */
    public static void m36128a(Context context, String str, String str2) {
        f9376o = str;
        f9377p = str2;
        try {
            f9365d = BaseUtils.getCellularNetworkType(context);
            f9366e = BaseUtils.getCellularNetworkProviderName(context);
            int i = n$$t$.f9464a[BaseUtils.getDataNetworkType(context).ordinal()];
            if (i == 1) {
                f9369h = true;
            } else if (i == 2) {
                f9367f = true;
            } else if (i == 3) {
                f9368g = true;
            }
            Display defaultDisplay = ((WindowManager) BaseUtils.getSystemService(context, "window")).getDefaultDisplay();
            DisplayMetrics displayMetrics = new DisplayMetrics();
            defaultDisplay.getMetrics(displayMetrics);
            f9370i = displayMetrics.density;
            f9372k = displayMetrics.heightPixels;
            f9371j = displayMetrics.widthPixels;
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(AnalyticsConstants.KEY, n$_B$.a().getLumberjackKey());
            jSONObject.put("events", new JSONArray());
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(AnalyticsConstants.MODE, AnalyticsUtil.getKeyType());
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("id", BaseConfig.getAdvertisingId(context));
            jSONObject3.put("manufacturer", f9362a);
            jSONObject3.put("model", f9363b);
            jSONObject3.put(AnalyticsConstants.NAME, f9364c);
            jSONObject3.put("type", AnalyticsConstants.PHONE);
            jSONObject3.put("version", AnalyticsConstants.ANDROID + Build.VERSION.RELEASE);
            jSONObject3.put(f9362a, Build.MANUFACTURER);
            jSONObject3.put(f9363b, Build.MODEL);
            jSONObject3.put(AnalyticsConstants.DEVICE_SIZE, BaseUtils.getDisplayWidth(context) + "w X " + BaseUtils.getDisplayHeight(context) + "h");
            jSONObject3.put(AnalyticsConstants.DEVICE_RESOLUTION, BaseUtils.getDisplayResolution(context));
            jSONObject2.put(AnalyticsConstants.DEVICE, jSONObject3);
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("version", f9377p);
            jSONObject4.put("type", f9376o);
            jSONObject2.put(AnalyticsConstants.SDK, jSONObject4);
            JSONObject jSONObject5 = new JSONObject();
            jSONObject5.put(AnalyticsConstants.BLUETOOTH, f9368g);
            jSONObject5.put(AnalyticsConstants.CARRIER, f9366e);
            jSONObject5.put(AnalyticsConstants.CELLULAR, f9367f);
            jSONObject5.put(AnalyticsConstants.CELLULAR_NETWORK_TYPE, f9365d);
            jSONObject5.put(AnalyticsConstants.WIFI, f9369h);
            jSONObject5.put(AnalyticsConstants.CARRIER_NETWORK, BaseUtils.getCarrierOperatorName(context));
            jSONObject5.put(AnalyticsConstants.NETWORK_TYPE, BaseUtils.getNetworkType(context));
            jSONObject5.put(AnalyticsConstants.IP_ADDRESS, BaseUtils.ipAddress);
            jSONObject5.put(AnalyticsConstants.IS_ROMING, BaseUtils.isNetworkRoaming(context));
            Map<String, String> deviceAttributes = BaseUtils.getDeviceAttributes(context);
            jSONObject5.put(AnalyticsConstants.DEVICE_ID, deviceAttributes.get(AnalyticsConstants.DEVICE_ID));
            String str3 = f9362a;
            jSONObject5.put(str3, deviceAttributes.get(str3));
            String str4 = f9363b;
            jSONObject5.put(str4, deviceAttributes.get(str4));
            jSONObject2.put(AnalyticsConstants.NETWORK, jSONObject5);
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put(AnalyticsConstants.DENSITY, f9370i);
            jSONObject6.put("width", f9371j);
            jSONObject6.put("height", f9372k);
            jSONObject2.put(AnalyticsConstants.SCREEN, jSONObject6);
            jSONObject2.put(AnalyticsConstants.LOCALE, BaseUtils.getLocale());
            jSONObject2.put(AnalyticsConstants.TIMEZONE, AnalyticsUtil.returnUndefinedIfNull(TimeZone.getDefault().getID()));
            jSONObject2.put(AnalyticsConstants.USER_AGENT, AnalyticsUtil.returnUndefinedIfNull(System.getProperty("http.agent")));
            jSONObject2.put(AnalyticsConstants.WEBVIEW_USER_AGENT, BaseUtils.getWebViewUserAgent(context));
            f9374m = jSONObject2;
            jSONObject.put(AnalyticsConstants.CONTEXT, jSONObject2);
            f9373l = jSONObject;
            jSONObject.toString();
        } catch (Exception e) {
            AnalyticsUtil.reportError(e, AnalyticsConstants.CRITICAL, "Error in creating BaseImportJSON");
            f9373l = new JSONObject();
        }
        f9375n = true;
        m36106g();
        String m36077a = C2735h.m36077a(context, "SavedEventsData", str2);
        if (m36077a == null || m36077a.length() == 0) {
            return;
        }
        try {
            m36110d(new JSONObject(m36077a));
        } catch (Exception e2) {
            AnalyticsUtil.reportError(e2, "error", e2.getMessage());
        } finally {
            C2735h.m36075b(context, "SavedEventsData", null);
        }
    }

    /* renamed from: a */
    public static void m36127a(String str) {
        m36123a(str, new JSONObject());
    }

    /* renamed from: a */
    public static void m36126a(String str, Object obj) {
        f9379r.put(str, obj);
    }

    /* renamed from: a */
    public static void m36125a(String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("url", str2);
        m36124a("Viewed " + str + " Page", (Map<String, Object>) hashMap);
    }

    /* renamed from: a */
    public static void m36124a(String str, Map<String, Object> map) {
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            try {
                jSONObject.put(entry.getKey(), entry.getValue());
            } catch (JSONException e) {
                AnalyticsUtil.reportError(e, AnalyticsConstants.CRITICAL, "Error adding analytics property " + entry.getKey() + " to JSONObject");
            }
        }
        m36123a(str, jSONObject);
    }

    /* renamed from: a */
    public static void m36123a(String str, JSONObject jSONObject) {
        try {
            JSONObject m36118b = m36118b(str);
            JSONObject jSONObject2 = m36118b;
            if (m36118b == null) {
                jSONObject2 = new JSONObject();
            }
            JSONObject jSONObject3 = jSONObject;
            if (jSONObject == null) {
                jSONObject3 = new JSONObject();
            }
            jSONObject3.put("local_order_id", AnalyticsUtil.getLocalOrderId());
            jSONObject3.put("local_payment_id", AnalyticsUtil.getLocalPaymentId());
            jSONObject2.put(AnalyticsConstants.PROPERTIES, jSONObject3);
            m36116b(jSONObject2);
        } catch (Exception e) {
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x0114 -> B:40:0x0013). Please submit an issue!!! */
    /* renamed from: a */
    public static void m36122a(JSONObject jSONObject) {
        try {
            m36117b(AnalyticsConstants.AMOUNT, Long.valueOf(Long.parseLong(m36115b(jSONObject, AnalyticsConstants.AMOUNT))));
        } catch (Exception e) {
        }
        try {
            AnalyticsProperty.Scope scope = AnalyticsProperty.Scope.ORDER;
            m36120a(jSONObject, AnalyticsConstants.CONTACT, scope);
            m36120a(jSONObject, AnalyticsConstants.EMAIL, scope);
            m36120a(jSONObject, AnalyticsConstants.ORDER_ID, scope);
            String m36115b = m36115b(jSONObject, AnalyticsConstants.METHOD);
            if (m36115b == null) {
                return;
            }
            if (jSONObject.has(AnalyticsConstants.TOKEN)) {
                m36115b = AnalyticsConstants.SAVED_CARD;
            }
            m36126a(AnalyticsConstants.METHOD, (Object) m36115b);
            boolean z = false;
            if (m36115b.equals(AnalyticsConstants.CARD)) {
                String m36115b2 = m36115b(jSONObject, "card[number]");
                if (AnalyticsUtil.isNullOrEmpty(m36115b2) || m36115b2.length() < 6) {
                    return;
                }
                m36126a(AnalyticsConstants.CARD_NUMBER, (Object) m36115b2.substring(0, 6));
            } else if (m36115b.equals(AnalyticsConstants.SAVED_CARD)) {
                boolean m36112c = m36112c(jSONObject, AnalyticsConstants.RAZORPAY_OTP);
                StringBuilder sb = new StringBuilder();
                if (!m36112c) {
                    z = true;
                }
                sb.append(z);
                m36117b(AnalyticsConstants.CHECKOUT_LOGIN, sb.toString());
            } else if (m36115b.equals(AnalyticsConstants.NETBANKING)) {
                m36120a(jSONObject, AnalyticsConstants.BANK, AnalyticsProperty.Scope.PAYMENT);
            } else if (m36115b.equals(AnalyticsConstants.WALLET)) {
                m36120a(jSONObject, AnalyticsConstants.WALLET, AnalyticsProperty.Scope.PAYMENT);
            } else if (!m36115b.equals(AnalyticsConstants.UPI)) {
            } else {
                m36126a(AnalyticsConstants.FLOW, (Object) m36115b(jSONObject, "_[flow]"));
            }
        } catch (Exception e2) {
            e2.getMessage();
            AnalyticsUtil.reportError(e2, AnalyticsConstants.WARNING, e2.getMessage());
        }
    }

    /* renamed from: a */
    private static void m36120a(JSONObject jSONObject, String str, AnalyticsProperty.Scope scope) {
        try {
            Object m36121a = m36121a(jSONObject, str);
            if (m36121a == null) {
                return;
            }
            if (scope == AnalyticsProperty.Scope.PAYMENT) {
                m36126a(str, m36121a);
            } else if (scope != AnalyticsProperty.Scope.ORDER) {
            } else {
                m36117b(str, m36121a);
            }
        } catch (Exception e) {
            AnalyticsUtil.reportError(e, AnalyticsConstants.WARNING, e.getMessage());
        }
    }

    /* renamed from: b */
    private static String m36115b(JSONObject jSONObject, String str) {
        try {
            return jSONObject.getString(str);
        } catch (Exception e) {
            AnalyticsUtil.reportError(e, AnalyticsConstants.WARNING, e.getMessage());
            return null;
        }
    }

    /* renamed from: b */
    private static JSONObject m36118b(String str) {
        try {
            return new JSONObject("{event: '" + str + "',timestamp: '" + String.valueOf(System.currentTimeMillis() / 1000) + "'}");
        } catch (Exception e) {
            AnalyticsUtil.reportError(e, AnalyticsConstants.CRITICAL, "Error in creating base for trackEvent");
            return null;
        }
    }

    /* renamed from: b */
    public static void m36119b() {
        m36111d();
        m36114c();
        m36107f();
        m36105h();
        f9375n = false;
    }

    /* renamed from: b */
    public static void m36117b(String str, Object obj) {
        f9380s.put(str, obj);
    }

    /* renamed from: b */
    private static void m36116b(JSONObject jSONObject) {
        if (!f9375n) {
            f9378q.add(jSONObject);
            return;
        }
        try {
            JSONObject m36113c = m36113c(jSONObject);
            synchronized (f9373l) {
                f9373l.getJSONArray("events").put(m36113c);
            }
        } catch (Exception e) {
            AnalyticsUtil.reportError(e, AnalyticsConstants.CRITICAL, e.getMessage());
        }
    }

    /* renamed from: c */
    private static JSONObject m36113c(JSONObject jSONObject) {
        JSONObject jSONObject2 = null;
        try {
            if (jSONObject.has(AnalyticsConstants.PROPERTIES)) {
                jSONObject2 = jSONObject.getJSONObject(AnalyticsConstants.PROPERTIES);
            }
            JSONObject jSONObject3 = jSONObject2;
            if (jSONObject2 == null) {
                jSONObject3 = new JSONObject();
            }
            jSONObject3.put("merchant_app_name", AnalyticsUtil.MERCHANT_APP_NAME);
            jSONObject3.put("merchant_app_version", AnalyticsUtil.MERCHANT_APP_VERSION);
            jSONObject3.put("merchant_app_build", AnalyticsUtil.MERCHANT_APP_BUILD);
            jSONObject3.put("platform", "mobile_sdk");
            jSONObject3.put("platform_version", f9377p);
            jSONObject3.put(User.DEVICE_META_OS_NAME, Constants.ANDROID_PLATFORM);
            jSONObject3.put(User.DEVICE_META_OS_VERSION_NAME, Build.VERSION.RELEASE);
            jSONObject3.put("library", AnalyticsUtil.libraryType);
            for (Map.Entry<String, Object> entry : f9379r.entrySet()) {
                try {
                    jSONObject3.put(entry.getKey(), entry.getValue());
                } catch (Exception e) {
                    AnalyticsUtil.reportError(e, AnalyticsConstants.CRITICAL, "Error adding analytics property " + entry.getKey() + " to JSONObject");
                }
            }
            for (Map.Entry<String, Object> entry2 : f9380s.entrySet()) {
                try {
                    jSONObject3.put(entry2.getKey(), entry2.getValue());
                } catch (Exception e2) {
                    AnalyticsUtil.reportError(e2, AnalyticsConstants.CRITICAL, "Error adding analytics property " + entry2.getKey() + " to JSONObject");
                }
            }
            jSONObject.put(AnalyticsConstants.PROPERTIES, jSONObject3);
        } catch (Exception e3) {
        }
        return jSONObject;
    }

    /* renamed from: c */
    public static void m36114c() {
        f9379r = new HashMap();
    }

    /* renamed from: c */
    private static boolean m36112c(JSONObject jSONObject, String str) {
        try {
            return jSONObject.getBoolean(str);
        } catch (Exception e) {
            AnalyticsUtil.reportError(e, AnalyticsConstants.WARNING, e.getMessage());
            return false;
        }
    }

    /* renamed from: d */
    public static void m36111d() {
        f9380s = new HashMap();
    }

    /* renamed from: d */
    private static void m36110d(JSONObject jSONObject) {
        if (n$_B$.a().isLumberJackEnabled().booleanValue()) {
            HashMap hashMap = new HashMap();
            hashMap.put("x-identifier", n$_B$.a().getLumberjackSdkIdentifier());
            hashMap.put("Content-Type", "application/json");
            p$_5$.m36063a(n$_B$.a().getLumberjackEndpoint(), jSONObject.toString(), hashMap, new U$$U$());
        }
    }

    /* renamed from: e */
    public static JSONObject m36109e() {
        return f9374m;
    }

    /* renamed from: e */
    private static JSONObject m36108e(JSONObject jSONObject) {
        try {
            JSONArray jSONArray = jSONObject.getJSONArray("events");
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                if (jSONObject2.has(AnalyticsConstants.PROPERTIES)) {
                    JSONObject jSONObject3 = jSONObject2.getJSONObject(AnalyticsConstants.PROPERTIES);
                    if (jSONObject3.has("url")) {
                        String string = jSONObject3.getString("url");
                        String str = string;
                        if (string.startsWith("data:")) {
                            str = "Data present in url";
                        }
                        jSONObject3.put("url", str);
                    }
                    jSONObject2.put(AnalyticsConstants.PROPERTIES, jSONObject3);
                }
                jSONArray.put(i, jSONObject2);
            }
            jSONObject.put("events", jSONArray);
        } catch (JSONException e) {
            d__1_.m36087a("Error in filtering payload", e);
        }
        return jSONObject;
    }

    /* renamed from: f */
    private static void m36107f() {
        try {
            JSONObject jSONObject = f9373l;
            if (jSONObject == null) {
                return;
            }
            synchronized (jSONObject) {
                f9373l.put("events", new JSONArray());
            }
        } catch (Exception e) {
            AnalyticsUtil.reportError(e, AnalyticsConstants.CRITICAL, e.getMessage());
        }
    }

    /* renamed from: g */
    private static void m36106g() {
        Iterator<JSONObject> it = f9378q.iterator();
        while (it.hasNext()) {
            m36116b(it.next());
        }
        m36105h();
    }

    /* renamed from: h */
    private static void m36105h() {
        f9378q = new ArrayList<>();
    }
}
