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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbDeviceData.class */
public final class DtbDeviceData {

    /* renamed from: c  reason: collision with root package name */
    private static final String f6471c = "DtbDeviceData";

    /* renamed from: d  reason: collision with root package name */
    private static DtbDeviceData f6472d;
    private boolean e;
    private boolean f;
    private boolean g;
    private String h;
    private String i;
    private String j;

    /* renamed from: a  reason: collision with root package name */
    String f6473a = null;
    private String k = null;
    private String l = null;
    private HashMap<String, Object> m = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    HashMap<String, Object> f6474b = new HashMap<>();
    private JSONObject n = new JSONObject();

    /* JADX WARN: Can't wrap try/catch for region: R(32:2|(6:89|3|(1:5)(1:6)|7|(1:9)(1:10)|11)|(30:16|(1:18)(1:19)|85|27|(25:34|88|38|(20:45|50|(1:52)(1:53)|54|(1:59)(1:58)|60|86|61|66|(1:68)|69|(1:71)|72|(1:74)|75|(1:77)|78|(1:80)|81|(2:83|84)(1:90))|46|50|(0)(0)|54|(1:56)|59|60|86|61|66|(0)|69|(0)|72|(0)|75|(0)|78|(0)|81|(0)(0))|35|88|38|(23:40|42|45|50|(0)(0)|54|(0)|59|60|86|61|66|(0)|69|(0)|72|(0)|75|(0)|78|(0)|81|(0)(0))|46|50|(0)(0)|54|(0)|59|60|86|61|66|(0)|69|(0)|72|(0)|75|(0)|78|(0)|81|(0)(0))|20|85|27|(27:29|31|34|88|38|(0)|46|50|(0)(0)|54|(0)|59|60|86|61|66|(0)|69|(0)|72|(0)|75|(0)|78|(0)|81|(0)(0))|35|88|38|(0)|46|50|(0)(0)|54|(0)|59|60|86|61|66|(0)|69|(0)|72|(0)|75|(0)|78|(0)|81|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x015f, code lost:
        r7.f = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x01a6, code lost:
        r7.e = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x02e9, code lost:
        com.amazon.device.ads.DtbLog.d(com.amazon.device.ads.DtbDeviceData.f6471c, "Unsupported encoding");
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x02f6, code lost:
        com.amazon.device.ads.DtbLog.d(com.amazon.device.ads.DtbDeviceData.f6471c, "JSONException while producing deviceInfoJson");
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

    public static DtbDeviceData a() {
        if (AdRegistration.d() != null) {
            if (f6472d == null) {
                if (AdRegistration.d() != null) {
                    f6472d = new DtbDeviceData(AdRegistration.d());
                } else {
                    DtbLog.b("Invalid intialization of Device Data. Context is null");
                    throw new IllegalArgumentException("Invalid intialization of Device Data. Context is null");
                }
            }
            return f6472d;
        }
        DtbLog.b("unable to initialize advertising info without setting app context");
        throw new IllegalArgumentException("unable to initialize advertising info without setting app context");
    }

    private static String a(String str) throws NoSuchAlgorithmException {
        MessageDigest instance = MessageDigest.getInstance("SHA-1");
        instance.update(str.getBytes());
        byte[] digest = instance.digest();
        StringBuilder sb = new StringBuilder();
        for (byte b2 : digest) {
            sb.append(Integer.toHexString((b2 & 255) | PropertyFlags.INDEX_PARTIAL_SKIP_NULL).substring(1));
        }
        return sb.toString();
    }

    private void a(String str, String str2) throws JSONException, UnsupportedEncodingException {
        if (str != null && !str.isEmpty()) {
            this.n.put(str2, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String e() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) AdRegistration.d().getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return "0";
        }
        int type = activeNetworkInfo.getType();
        return type != 0 ? type != 1 ? type != 6 ? "0" : "13" : "Wifi" : Integer.toString(activeNetworkInfo.getSubtype());
    }

    private void f() {
        this.m.put("dt", Constants.ANDROID_PLATFORM);
        this.m.put("app", "app");
        this.m.put("aud", "3p");
        String str = this.f6473a;
        if (str != null) {
            this.m.put("ua", str);
        }
        this.m.put("sdkVer", DtbCommonUtils.b());
        JSONObject jSONObject = this.n;
        if (jSONObject != null) {
            this.m.put("dinfo", jSONObject);
        }
    }

    private void g() {
        try {
            this.f6473a = WebSettings.getDefaultUserAgent(AdRegistration.d());
        } catch (Exception e) {
            DtbLog.a();
            this.f6473a = "Android";
        }
    }

    private void h() {
        this.k = DtbDeviceDataRetriever.a(new DisplayMetrics(), this.l);
    }

    private void i() {
        this.l = DtbDeviceDataRetriever.a(AdRegistration.d());
    }

    private static DisplayMetrics j() {
        return AdRegistration.d().getResources().getDisplayMetrics();
    }

    public final JSONObject b() {
        try {
            i();
            a(this.l, "orientation");
            h();
            a(this.k, "screenSize");
        } catch (Exception e) {
            DtbLog.c("Error:".concat(String.valueOf(e)));
        }
        return this.n;
    }

    public final JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        Iterator<String> keys = this.n.keys();
        while (keys.hasNext()) {
            try {
                String next = keys.next();
                Object obj = this.n.get(next);
                if (obj instanceof String) {
                    jSONObject.put(next, URLEncoder.encode((String) obj, "UTF-8"));
                }
            } catch (Exception e) {
                DtbLog.c("Error converting to JsonGetSafe");
            }
        }
        return jSONObject;
    }

    public final HashMap<String, Object> d() {
        if (!this.m.containsKey("ua") || (this.m.containsKey("ua") && this.m.get("ua").equals("Android"))) {
            g();
            f();
        }
        return this.m;
    }
}
