package com.amazon.device.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.util.HashMap;
import org.json.JSONObject;
import org.json.JSONTokener;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbDeviceRegistration.class */
public class DtbDeviceRegistration {

    /* renamed from: a  reason: collision with root package name */
    private static final String f6476a = "com.amazon.device.ads.DtbDeviceRegistration";

    /* renamed from: b  reason: collision with root package name */
    private static DtbDeviceRegistration f6477b;

    /* renamed from: c  reason: collision with root package name */
    private static String f6478c;

    /* renamed from: d  reason: collision with root package name */
    private final DtbMetrics f6479d = new DtbMetrics();

    private DtbDeviceRegistration() {
        DtbLog.b();
        b();
    }

    public static void a() {
        if (f6477b == null) {
            f6477b = new DtbDeviceRegistration();
        }
        DtbThreadService.a().a((Runnable) _$$Lambda$DtbDeviceRegistration$ofNbqsXNwlAtmTE3_DvMQ3lnMOs.INSTANCE);
    }

    private boolean a(String str) {
        long currentTimeMillis = System.currentTimeMillis();
        DtbSharedPreferences.c();
        long longValue = currentTimeMillis - DtbSharedPreferences.k().longValue();
        DtbSharedPreferences.c();
        long n = DtbSharedPreferences.n();
        StringBuilder sb = new StringBuilder("Config last checkin duration: ");
        sb.append(longValue);
        sb.append(", Expiration: ");
        sb.append(n);
        DtbLog.b();
        r15 = false;
        boolean z = false;
        if (longValue <= 172800000) {
            DtbLog.b();
            return false;
        } else if (!DtbCommonUtils.e()) {
            DtbLog.b();
            return false;
        } else {
            DtbHttpClient dtbHttpClient = new DtbHttpClient(DtbDebugProperties.d("mads.amazon-adsystem.com") + "/msdk/getConfig");
            dtbHttpClient.a("Accept", "application/json");
            dtbHttpClient.f6488c = DtbDebugProperties.b();
            HashMap<String, Object> hashMap = new HashMap<>();
            hashMap.put("appId", str);
            hashMap.put("sdkVer", DtbCommonUtils.b());
            hashMap.put("fp", "false");
            hashMap.put("testMode", Boolean.toString(AdRegistration.g()));
            hashMap.put("dinfo", DtbDeviceData.a().c());
            dtbHttpClient.f6486a = hashMap;
            try {
                this.f6479d.b(DtbMetric.CONFIG_DOWNLOAD_LATENCY);
                dtbHttpClient.b();
                this.f6479d.d(DtbMetric.CONFIG_DOWNLOAD_LATENCY);
            } catch (Exception e) {
                DtbLog.c("Error fetching DTB config: " + e.toString());
            }
            if (!DtbCommonUtils.e(dtbHttpClient.e)) {
                JSONObject jSONObject = (JSONObject) new JSONTokener(dtbHttpClient.e).nextValue();
                if (!jSONObject.has("aaxHostname") && !jSONObject.has("sisURL")) {
                    String str2 = f6476a;
                    StringBuilder sb2 = new StringBuilder("ad configuration failed load: ");
                    sb2.append(jSONObject.toString());
                    DtbLog.a(str2, sb2.toString());
                    throw new Exception("ad configuration failed load");
                }
                if (jSONObject.has("aaxHostname")) {
                    DtbSharedPreferences.c();
                    DtbSharedPreferences.d(jSONObject.getString("aaxHostname"));
                }
                if (jSONObject.has("sisURL")) {
                    DtbSharedPreferences.c();
                    z = DtbSharedPreferences.e(jSONObject.getString("sisURL"));
                }
                if (jSONObject.has("ttl")) {
                    long g = DtbCommonUtils.g(jSONObject.getString("ttl"));
                    DtbSharedPreferences.c();
                    DtbSharedPreferences.c(g);
                }
                DtbSharedPreferences.c();
                DtbSharedPreferences.b(currentTimeMillis);
                DtbLog.a(f6476a, "ad configuration loaded successfully.");
                return z;
            }
            throw new Exception("Config Response is null");
        }
    }

    private static HashMap<String, Object> b(String str) {
        HashMap<String, Object> hashMap = new HashMap<>(DtbDeviceData.a().d());
        DtbSharedPreferences.c();
        String e = DtbSharedPreferences.e();
        if (e != null) {
            hashMap.put("adId", e);
        }
        DtbSharedPreferences.c();
        String g = DtbSharedPreferences.g();
        Boolean h = DtbSharedPreferences.c().h();
        if (!DtbCommonUtils.e(g)) {
            hashMap.put("idfa", g);
        } else {
            hashMap.putAll(DtbDeviceData.a().f6474b);
        }
        hashMap.put("oo", (h == null || !h.booleanValue()) ? "0" : "1");
        if (str != null) {
            hashMap.put("appId", str);
        }
        JSONObject jSONObject = DtbPackageNativeData.a(AdRegistration.d()).f6504a;
        if (jSONObject != null) {
            hashMap.put("pkg", jSONObject);
        }
        Context d2 = AdRegistration.d();
        if (d2 != null) {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(d2);
            Object obj = defaultSharedPreferences.contains("IABTCF_gdprApplies") ? defaultSharedPreferences.getAll().get("IABTCF_gdprApplies") : null;
            String string = defaultSharedPreferences.getString("IABTCF_TCString", null);
            if (obj != null) {
                try {
                    if ((obj instanceof Integer) && (((Integer) obj).intValue() == 1 || ((Integer) obj).intValue() == 0)) {
                        hashMap.put("gdpr", obj);
                    } else if ((!(obj instanceof String) || !((String) obj).equals("1")) && !((String) obj).equals("0")) {
                        DtbLog.a();
                    } else {
                        hashMap.put("gdpr", obj);
                    }
                } catch (ClassCastException e2) {
                    DtbLog.a();
                }
            }
            if (string != null) {
                hashMap.put("gdpr_consent", string);
            }
        }
        String o = AdRegistration.o();
        if (!DtbCommonUtils.e(o)) {
            hashMap.put("gdpr_custom", o);
        }
        return hashMap;
    }

    /* JADX WARN: Code restructure failed: missing block: B:157:0x046b, code lost:
        if (r0.getInt("msg") == 103) goto L_0x046e;
     */
    /* JADX WARN: Removed duplicated region for block: B:178:0x04fe A[Catch: all -> 0x0548, Exception -> 0x054d, JSONException -> 0x0556, TRY_ENTER, TryCatch #7 {JSONException -> 0x0556, Exception -> 0x054d, all -> 0x0548, blocks: (B:52:0x014a, B:54:0x016c, B:56:0x0194, B:58:0x01aa, B:60:0x01b4, B:62:0x01c8, B:64:0x01d3, B:65:0x01e6, B:65:0x01e6, B:66:0x01ea, B:67:0x01fb, B:69:0x0208, B:71:0x0215, B:73:0x0220, B:75:0x022d, B:75:0x022d, B:76:0x0231, B:80:0x0240, B:178:0x04fe, B:179:0x0534, B:180:0x0535, B:180:0x0535, B:181:0x0538, B:182:0x0547), top: B:231:0x014a }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0253  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b() {
        /*
            Method dump skipped, instructions count: 1542
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazon.device.ads.DtbDeviceRegistration.b():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c() {
        f6477b.b();
    }
}
