package com.amazon.device.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.util.HashMap;
import org.json.JSONObject;
import org.json.JSONTokener;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbDeviceRegistration.class */
public class DtbDeviceRegistration {

    /* renamed from: a */
    private static final String f11872a = "com.amazon.device.ads.DtbDeviceRegistration";

    /* renamed from: b */
    private static DtbDeviceRegistration f11873b;

    /* renamed from: c */
    private static String f11874c;

    /* renamed from: d */
    private final DtbMetrics f11875d = new DtbMetrics();

    private DtbDeviceRegistration() {
        DtbLog.m38825b();
        m38851b();
    }

    /* renamed from: a */
    public static void m38853a() {
        if (f11873b == null) {
            f11873b = new DtbDeviceRegistration();
        }
        DtbThreadService.m38766a().m38763a((Runnable) _$$Lambda$DtbDeviceRegistration$ofNbqsXNwlAtmTE3_DvMQ3lnMOs.INSTANCE);
    }

    /* renamed from: a */
    private boolean m38852a(String str) {
        long currentTimeMillis = System.currentTimeMillis();
        DtbSharedPreferences.m38797c();
        long longValue = currentTimeMillis - DtbSharedPreferences.m38778k().longValue();
        DtbSharedPreferences.m38797c();
        long m38775n = DtbSharedPreferences.m38775n();
        StringBuilder sb = new StringBuilder("Config last checkin duration: ");
        sb.append(longValue);
        sb.append(", Expiration: ");
        sb.append(m38775n);
        DtbLog.m38825b();
        boolean z = false;
        if (longValue <= 172800000) {
            DtbLog.m38825b();
            return false;
        } else if (!DtbCommonUtils.m38883e()) {
            DtbLog.m38825b();
            return false;
        } else {
            DtbHttpClient dtbHttpClient = new DtbHttpClient(DtbDebugProperties.m38868d("mads.amazon-adsystem.com") + "/msdk/getConfig");
            dtbHttpClient.m38833a("Accept", "application/json");
            dtbHttpClient.f11884c = DtbDebugProperties.m38873b();
            HashMap<String, Object> hashMap = new HashMap<>();
            hashMap.put("appId", str);
            hashMap.put("sdkVer", DtbCommonUtils.m38890b());
            hashMap.put("fp", "false");
            hashMap.put("testMode", Boolean.toString(AdRegistration.m39068g()));
            hashMap.put("dinfo", DtbDeviceData.m38867a().m38863c());
            dtbHttpClient.f11882a = hashMap;
            try {
                this.f11875d.m38814b(DtbMetric.CONFIG_DOWNLOAD_LATENCY);
                dtbHttpClient.m38832b();
                this.f11875d.m38812d(DtbMetric.CONFIG_DOWNLOAD_LATENCY);
            } catch (Exception e) {
                DtbLog.m38821c("Error fetching DTB config: " + e.toString());
                z = false;
            }
            if (DtbCommonUtils.m38882e(dtbHttpClient.f11886e)) {
                throw new Exception("Config Response is null");
            }
            JSONObject jSONObject = (JSONObject) new JSONTokener(dtbHttpClient.f11886e).nextValue();
            if (!jSONObject.has("aaxHostname") && !jSONObject.has("sisURL")) {
                String str2 = f11872a;
                StringBuilder sb2 = new StringBuilder("ad configuration failed load: ");
                sb2.append(jSONObject.toString());
                DtbLog.m38827a(str2, sb2.toString());
                throw new Exception("ad configuration failed load");
            }
            if (jSONObject.has("aaxHostname")) {
                DtbSharedPreferences.m38797c();
                DtbSharedPreferences.m38791d(jSONObject.getString("aaxHostname"));
            }
            if (jSONObject.has("sisURL")) {
                DtbSharedPreferences.m38797c();
                z = DtbSharedPreferences.m38787e(jSONObject.getString("sisURL"));
            }
            boolean z2 = z;
            if (jSONObject.has("ttl")) {
                boolean z3 = z;
                long m38879g = DtbCommonUtils.m38879g(jSONObject.getString("ttl"));
                boolean z4 = z;
                DtbSharedPreferences.m38797c();
                boolean z5 = z;
                DtbSharedPreferences.m38796c(m38879g);
            }
            boolean z6 = z;
            DtbSharedPreferences.m38797c();
            boolean z7 = z;
            DtbSharedPreferences.m38800b(currentTimeMillis);
            boolean z8 = z;
            DtbLog.m38827a(f11872a, "ad configuration loaded successfully.");
            return z;
        }
    }

    /* renamed from: b */
    private static HashMap<String, Object> m38850b(String str) {
        HashMap<String, Object> hashMap = new HashMap<>(DtbDeviceData.m38867a().m38862d());
        DtbSharedPreferences.m38797c();
        String m38789e = DtbSharedPreferences.m38789e();
        if (m38789e != null) {
            hashMap.put("adId", m38789e);
        }
        DtbSharedPreferences.m38797c();
        String m38783g = DtbSharedPreferences.m38783g();
        Boolean m38781h = DtbSharedPreferences.m38797c().m38781h();
        if (!DtbCommonUtils.m38882e(m38783g)) {
            hashMap.put("idfa", m38783g);
        } else {
            hashMap.putAll(DtbDeviceData.m38867a().f11860b);
        }
        hashMap.put("oo", (m38781h == null || !m38781h.booleanValue()) ? "0" : "1");
        if (str != null) {
            hashMap.put("appId", str);
        }
        JSONObject jSONObject = DtbPackageNativeData.m38809a(AdRegistration.m39071d()).f11905a;
        if (jSONObject != null) {
            hashMap.put("pkg", jSONObject);
        }
        Context m39071d = AdRegistration.m39071d();
        if (m39071d != null) {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(m39071d);
            Object obj = defaultSharedPreferences.contains("IABTCF_gdprApplies") ? defaultSharedPreferences.getAll().get("IABTCF_gdprApplies") : null;
            String string = defaultSharedPreferences.getString("IABTCF_TCString", null);
            if (obj != null) {
                try {
                    if ((obj instanceof Integer) && (((Integer) obj).intValue() == 1 || ((Integer) obj).intValue() == 0)) {
                        hashMap.put("gdpr", obj);
                    } else if ((!(obj instanceof String) || !((String) obj).equals("1")) && !((String) obj).equals("0")) {
                        DtbLog.m38830a();
                    } else {
                        hashMap.put("gdpr", obj);
                    }
                } catch (ClassCastException e) {
                    DtbLog.m38830a();
                }
            }
            if (string != null) {
                hashMap.put("gdpr_consent", string);
            }
        }
        String m39060o = AdRegistration.m39060o();
        if (!DtbCommonUtils.m38882e(m39060o)) {
            hashMap.put("gdpr_custom", m39060o);
        }
        return hashMap;
    }

    /* JADX WARN: Code restructure failed: missing block: B:157:0x046b, code lost:
        if (r0.getInt("msg") == 103) goto L158;
     */
    /* JADX WARN: Removed duplicated region for block: B:178:0x04fe A[Catch: all -> 0x0548, Exception -> 0x054d, JSONException -> 0x0556, TRY_ENTER, TryCatch #7 {JSONException -> 0x0556, Exception -> 0x054d, all -> 0x0548, blocks: (B:52:0x014a, B:54:0x016c, B:56:0x0194, B:58:0x01aa, B:60:0x01b4, B:62:0x01c8, B:64:0x01d3, B:65:0x01e6, B:65:0x01e6, B:66:0x01ea, B:67:0x01fb, B:69:0x0208, B:71:0x0215, B:73:0x0220, B:75:0x022d, B:75:0x022d, B:76:0x0231, B:80:0x0240, B:178:0x04fe, B:179:0x0534, B:180:0x0535, B:180:0x0535, B:181:0x0538, B:182:0x0547), top: B:231:0x014a }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0253  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m38851b() {
        /*
            Method dump skipped, instructions count: 1542
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazon.device.ads.DtbDeviceRegistration.m38851b():void");
    }

    /* renamed from: c */
    public static /* synthetic */ void m38849c() {
        f11873b.m38851b();
    }
}
