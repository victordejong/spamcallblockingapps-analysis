package com.appsflyer;

import android.content.Context;
import android.content.Intent;
import com.appsflyer.internal.ae;
import com.appsflyer.internal.model.event.Purchase;
import com.appsflyer.internal.model.event.SdkServices;
import com.appsflyer.internal.model.event.Validate;
import com.appsflyer.internal.referrer.Payload;
import com.appsflyer.internal.w;
import com.mopub.mobileads.PangleAdapterConfiguration;
import com.mopub.network.ImpressionData;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AFValidateInAppPurchase.class */
public class AFValidateInAppPurchase implements Runnable {

    /* renamed from: ɩ  reason: contains not printable characters */
    private static String f62;

    /* renamed from: ι  reason: contains not printable characters */
    private static String f63 = "https://%ssdk-services.%s/validate-android-signature";

    /* renamed from: ı  reason: contains not printable characters */
    private final Intent f64;

    /* renamed from: Ɩ  reason: contains not printable characters */
    private String f65;

    /* renamed from: ǃ  reason: contains not printable characters */
    private String f66;

    /* renamed from: ɪ  reason: contains not printable characters */
    private Map<String, String> f67;

    /* renamed from: ɹ  reason: contains not printable characters */
    private String f68;

    /* renamed from: Ι  reason: contains not printable characters */
    private WeakReference<Context> f69;

    /* renamed from: І  reason: contains not printable characters */
    private String f70;

    /* renamed from: і  reason: contains not printable characters */
    private String f71;

    /* renamed from: Ӏ  reason: contains not printable characters */
    private String f72;

    static {
        StringBuilder sb = new StringBuilder("https://%svalidate.%s/api/v");
        sb.append(AppsFlyerLibCore.f77);
        sb.append("/androidevent?buildnumber=5.4.6&app_id=");
        f62 = sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AFValidateInAppPurchase(Context context, String str, String str2, String str3, String str4, String str5, String str6, Map<String, String> map, Intent intent) {
        this.f69 = new WeakReference<>(context);
        this.f66 = str;
        this.f72 = str2;
        this.f68 = str4;
        this.f71 = str5;
        this.f70 = str6;
        this.f67 = map;
        this.f65 = str3;
        this.f64 = intent;
    }

    public static void setUrl(Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String value = entry.getValue();
            String key = entry.getKey();
            char c2 = 65535;
            int hashCode = key.hashCode();
            if (hashCode != -1421272810) {
                if (hashCode == 454162577 && key.equals("sdk-services")) {
                    c2 = 0;
                }
            } else if (key.equals("validate")) {
                c2 = 1;
            }
            if (c2 == 0) {
                f63 = value;
            } else if (c2 == 1) {
                f62 = value;
            }
        }
    }

    /* renamed from: ı  reason: contains not printable characters */
    private static HttpURLConnection m815(Purchase purchase) {
        StringBuilder sb = new StringBuilder("Calling ");
        sb.append(purchase.urlString());
        AFLogger.afDebugLog(sb.toString());
        return new w(purchase.trackingStopped(AppsFlyerLib.getInstance().isTrackingStopped())).m1031();
    }

    /* renamed from: ɩ  reason: contains not printable characters */
    private static void m817(boolean z, String str, String str2, String str3, String str4) {
        if (AppsFlyerLibCore.f75 != null) {
            StringBuilder sb = new StringBuilder("Validate callback parameters: ");
            sb.append(str);
            sb.append(StringUtils.SPACE);
            sb.append(str2);
            sb.append(StringUtils.SPACE);
            sb.append(str3);
            AFLogger.afDebugLog(sb.toString());
            if (z) {
                AFLogger.afDebugLog("Validate in app purchase success: ".concat(String.valueOf(str4)));
                AppsFlyerLibCore.f75.onValidateInApp();
                return;
            }
            AFLogger.afDebugLog("Validate in app purchase failed: ".concat(String.valueOf(str4)));
            AppsFlyerInAppPurchaseValidatorListener appsFlyerInAppPurchaseValidatorListener = AppsFlyerLibCore.f75;
            String str5 = str4;
            if (str4 == null) {
                str5 = "Failed validating";
            }
            appsFlyerInAppPurchaseValidatorListener.onValidateInAppFailure(str5);
        }
    }

    /* renamed from: Ι  reason: contains not printable characters */
    static /* synthetic */ void m819(AFValidateInAppPurchase aFValidateInAppPurchase, Map map, Map map2, WeakReference weakReference) {
        if (weakReference.get() != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(ServerConfigHandler.getUrl(f62));
            sb.append(((Context) weakReference.get()).getPackageName());
            String obj = sb.toString();
            String string = AppsFlyerLibCore.getSharedPreferences((Context) weakReference.get()).getString(Payload.RFR, "");
            AFEvent key = new Validate((Context) weakReference.get()).key(aFValidateInAppPurchase.f66);
            key.f22 = string;
            key.f9 = aFValidateInAppPurchase.f64;
            AFEvent aFEvent = (Validate) key;
            Map<String, Object> map3 = AppsFlyerLibCore.getInstance().m897(aFEvent);
            map3.put("price", aFValidateInAppPurchase.f71);
            map3.put(ImpressionData.CURRENCY, aFValidateInAppPurchase.f70);
            map3.put("receipt_data", map);
            if (map2 != null) {
                map3.put("extra_prms", map2);
            }
            ae.m938().m948("server_request", obj, new JSONObject(map3).toString());
            HttpURLConnection httpURLConnection = null;
            try {
                HttpURLConnection httpURLConnection2 = m815((Purchase) aFEvent.params(map3).urlString(obj));
                int i = -1;
                if (httpURLConnection2 != null) {
                    i = httpURLConnection2.getResponseCode();
                }
                String str = AppsFlyerLibCore.getInstance().m896(httpURLConnection2);
                ae.m938().m948("server_response", obj, String.valueOf(i), str);
                StringBuilder sb2 = new StringBuilder("Validate-WH response - ");
                sb2.append(i);
                sb2.append(": ");
                sb2.append(new JSONObject(str).toString());
                httpURLConnection = httpURLConnection2;
                AFLogger.afInfoLog(sb2.toString());
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
            } catch (Throwable th) {
                try {
                    AFLogger.afErrorLog(th.getMessage(), th);
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                } catch (Throwable th2) {
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    throw th2;
                }
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        String str = this.f66;
        if (str != null && str.length() != 0 && !AppsFlyerLib.getInstance().isTrackingStopped()) {
            HttpURLConnection httpURLConnection = null;
            try {
                Context context = this.f69.get();
                if (context != null) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("public-key", this.f72);
                    hashMap.put("sig-data", this.f68);
                    hashMap.put("signature", this.f65);
                    final HashMap hashMap2 = new HashMap(hashMap);
                    new Thread(new Runnable() { // from class: com.appsflyer.AFValidateInAppPurchase.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            AFValidateInAppPurchase aFValidateInAppPurchase = AFValidateInAppPurchase.this;
                            AFValidateInAppPurchase.m819(aFValidateInAppPurchase, hashMap2, aFValidateInAppPurchase.f67, AFValidateInAppPurchase.this.f69);
                        }
                    }).start();
                    hashMap.put("dev_key", this.f66);
                    hashMap.put(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, context.getPackageName());
                    hashMap.put("uid", AppsFlyerLib.getInstance().getAppsFlyerUID(context));
                    hashMap.put(ServerParameters.ADVERTISING_ID_PARAM, AppsFlyerProperties.getInstance().getString(ServerParameters.ADVERTISING_ID_PARAM));
                    String jSONObject = new JSONObject(hashMap).toString();
                    String url = ServerConfigHandler.getUrl(f63);
                    ae.m938().m948("server_request", url, jSONObject);
                    HttpURLConnection httpURLConnection2 = m815((Purchase) new SdkServices().params(hashMap).urlString(url));
                    int i = -1;
                    if (httpURLConnection2 != null) {
                        i = httpURLConnection2.getResponseCode();
                    }
                    String str2 = AppsFlyerLibCore.getInstance().m896(httpURLConnection2);
                    ae.m938().m948("server_response", url, String.valueOf(i), str2);
                    JSONObject jSONObject2 = new JSONObject(str2);
                    jSONObject2.put("code", i);
                    if (i == 200) {
                        StringBuilder sb = new StringBuilder("Validate response 200 ok: ");
                        sb.append(jSONObject2.toString());
                        AFLogger.afInfoLog(sb.toString());
                        m817(jSONObject2.optBoolean("result"), this.f68, this.f71, this.f70, jSONObject2.toString());
                    } else {
                        AFLogger.afInfoLog("Failed Validate request");
                        m817(false, this.f68, this.f71, this.f70, jSONObject2.toString());
                    }
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                }
            } catch (Throwable th) {
                try {
                    if (AppsFlyerLibCore.f75 != null) {
                        AFLogger.afErrorLog("Failed Validate request + ex", th);
                        m817(false, this.f68, this.f71, this.f70, th.getMessage());
                    }
                    AFLogger.afErrorLog(th.getMessage(), th);
                    if (0 != 0) {
                        httpURLConnection.disconnect();
                    }
                } catch (Throwable th2) {
                    if (0 != 0) {
                        httpURLConnection.disconnect();
                    }
                    throw th2;
                }
            }
        }
    }
}
