package com.amazon.device.ads;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.DisplayMetrics;
import android.webkit.WebSettings;
import com.mopub.common.Constants;
import io.objectbox.model.PropertyFlags;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbDeviceData.class */
public final class DtbDeviceData {

    /* renamed from: c */
    private static final String f11857c = "DtbDeviceData";

    /* renamed from: d */
    private static DtbDeviceData f11858d;

    /* renamed from: e */
    private boolean f11861e;

    /* renamed from: f */
    private boolean f11862f;

    /* renamed from: g */
    private boolean f11863g;

    /* renamed from: h */
    private String f11864h;

    /* renamed from: i */
    private String f11865i;

    /* renamed from: j */
    private String f11866j;

    /* renamed from: a */
    String f11859a = null;

    /* renamed from: k */
    private String f11867k = null;

    /* renamed from: l */
    private String f11868l = null;

    /* renamed from: m */
    private HashMap<String, Object> f11869m = new HashMap<>();

    /* renamed from: b */
    HashMap<String, Object> f11860b = new HashMap<>();

    /* renamed from: n */
    private JSONObject f11870n = new JSONObject();

    /* JADX WARN: Can't wrap try/catch for region: R(32:2|(6:89|3|(1:5)(1:6)|7|(1:9)(1:10)|11)|(30:16|(1:18)(1:19)|85|27|(25:34|88|38|(20:45|50|(1:52)(1:53)|54|(1:59)(1:58)|60|86|61|66|(1:68)|69|(1:71)|72|(1:74)|75|(1:77)|78|(1:80)|81|(2:83|84)(1:90))|46|50|(0)(0)|54|(1:56)|59|60|86|61|66|(0)|69|(0)|72|(0)|75|(0)|78|(0)|81|(0)(0))|35|88|38|(23:40|42|45|50|(0)(0)|54|(0)|59|60|86|61|66|(0)|69|(0)|72|(0)|75|(0)|78|(0)|81|(0)(0))|46|50|(0)(0)|54|(0)|59|60|86|61|66|(0)|69|(0)|72|(0)|75|(0)|78|(0)|81|(0)(0))|20|85|27|(27:29|31|34|88|38|(0)|46|50|(0)(0)|54|(0)|59|60|86|61|66|(0)|69|(0)|72|(0)|75|(0)|78|(0)|81|(0)(0))|35|88|38|(0)|46|50|(0)(0)|54|(0)|59|60|86|61|66|(0)|69|(0)|72|(0)|75|(0)|78|(0)|81|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x015f, code lost:
        r7.f11862f = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x01a6, code lost:
        r7.f11861e = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x02e9, code lost:
        com.amazon.device.ads.DtbLog.m38818d(com.amazon.device.ads.DtbDeviceData.f11857c, "Unsupported encoding");
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x02f6, code lost:
        com.amazon.device.ads.DtbLog.m38818d(com.amazon.device.ads.DtbDeviceData.f11857c, "JSONException while producing deviceInfoJson");
     */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0178 A[Catch: Exception -> 0x01a1, NoSuchAlgorithmException -> 0x01a5, TRY_ENTER, TryCatch #7 {NoSuchAlgorithmException -> 0x01a5, Exception -> 0x01a1, blocks: (B:38:0x0164, B:40:0x0178, B:42:0x017f, B:45:0x018b, B:46:0x0199), top: B:88:0x0164 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x023f  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0310  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0325  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x033a  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x034d  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0362  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0377  */
    /* JADX WARN: Removed duplicated region for block: B:90:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private DtbDeviceData(android.content.Context r8) {
        /*
            Method dump skipped, instructions count: 902
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazon.device.ads.DtbDeviceData.<init>(android.content.Context):void");
    }

    /* renamed from: a */
    public static DtbDeviceData m38867a() {
        if (AdRegistration.m39071d() == null) {
            DtbLog.m38824b("unable to initialize advertising info without setting app context");
            throw new IllegalArgumentException("unable to initialize advertising info without setting app context");
        }
        if (f11858d == null) {
            if (AdRegistration.m39071d() == null) {
                DtbLog.m38824b("Invalid intialization of Device Data. Context is null");
                throw new IllegalArgumentException("Invalid intialization of Device Data. Context is null");
            }
            f11858d = new DtbDeviceData(AdRegistration.m39071d());
        }
        return f11858d;
    }

    /* renamed from: a */
    private static String m38866a(String str) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
        messageDigest.update(str.getBytes());
        byte[] digest = messageDigest.digest();
        StringBuilder sb = new StringBuilder();
        for (byte b : digest) {
            sb.append(Integer.toHexString((b & 255) | PropertyFlags.INDEX_PARTIAL_SKIP_NULL).substring(1));
        }
        return sb.toString();
    }

    /* renamed from: a */
    private void m38865a(String str, String str2) throws JSONException, UnsupportedEncodingException {
        if (str == null || str.isEmpty()) {
            return;
        }
        this.f11870n.put(str2, str);
    }

    /* renamed from: e */
    public static String m38861e() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) AdRegistration.m39071d().getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return "0";
        }
        int type = activeNetworkInfo.getType();
        return type != 0 ? type != 1 ? type != 6 ? "0" : "13" : "Wifi" : Integer.toString(activeNetworkInfo.getSubtype());
    }

    /* renamed from: f */
    private void m38860f() {
        this.f11869m.put("dt", Constants.ANDROID_PLATFORM);
        this.f11869m.put("app", "app");
        this.f11869m.put("aud", "3p");
        String str = this.f11859a;
        if (str != null) {
            this.f11869m.put("ua", str);
        }
        this.f11869m.put("sdkVer", DtbCommonUtils.m38890b());
        JSONObject jSONObject = this.f11870n;
        if (jSONObject != null) {
            this.f11869m.put("dinfo", jSONObject);
        }
    }

    /* renamed from: g */
    private void m38859g() {
        try {
            this.f11859a = WebSettings.getDefaultUserAgent(AdRegistration.m39071d());
        } catch (Exception e) {
            DtbLog.m38830a();
            this.f11859a = "Android";
        }
    }

    /* renamed from: h */
    private void m38858h() {
        this.f11867k = DtbDeviceDataRetriever.m38854a(new DisplayMetrics(), this.f11868l);
    }

    /* renamed from: i */
    private void m38857i() {
        this.f11868l = DtbDeviceDataRetriever.m38855a(AdRegistration.m39071d());
    }

    /* renamed from: j */
    private static DisplayMetrics m38856j() {
        return AdRegistration.m39071d().getResources().getDisplayMetrics();
    }

    /* renamed from: b */
    public final JSONObject m38864b() {
        try {
            m38857i();
            m38865a(this.f11868l, "orientation");
            m38858h();
            m38865a(this.f11867k, "screenSize");
        } catch (Exception e) {
            DtbLog.m38821c("Error:".concat(String.valueOf(e)));
        }
        return this.f11870n;
    }

    /* renamed from: c */
    public final JSONObject m38863c() {
        JSONObject jSONObject = new JSONObject();
        Iterator<String> keys = this.f11870n.keys();
        while (keys.hasNext()) {
            try {
                String next = keys.next();
                Object obj = this.f11870n.get(next);
                if (obj instanceof String) {
                    jSONObject.put(next, URLEncoder.encode((String) obj, "UTF-8"));
                }
            } catch (Exception e) {
                DtbLog.m38821c("Error converting to JsonGetSafe");
            }
        }
        return jSONObject;
    }

    /* renamed from: d */
    public final HashMap<String, Object> m38862d() {
        if (!this.f11869m.containsKey("ua") || (this.f11869m.containsKey("ua") && this.f11869m.get("ua").equals("Android"))) {
            m38859g();
            m38860f();
        }
        return this.f11869m;
    }
}
