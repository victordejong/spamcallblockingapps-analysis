package com.appsflyer;

import android.content.Context;
import android.content.Intent;
import com.appsflyer.internal.C3406ae;
import com.appsflyer.internal.RunnableC3446w;
import com.appsflyer.internal.model.event.Purchase;
import com.appsflyer.internal.model.event.SdkServices;
import com.appsflyer.internal.model.event.Validate;
import com.appsflyer.internal.referrer.Payload;
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

    /* renamed from: ɩ */
    private static String f12738;

    /* renamed from: ι */
    private static String f12739 = "https://%ssdk-services.%s/validate-android-signature";

    /* renamed from: ı */
    private final Intent f12740;

    /* renamed from: Ɩ */
    private String f12741;

    /* renamed from: ǃ */
    private String f12742;

    /* renamed from: ɪ */
    private Map<String, String> f12743;

    /* renamed from: ɹ */
    private String f12744;

    /* renamed from: Ι */
    private WeakReference<Context> f12745;

    /* renamed from: І */
    private String f12746;

    /* renamed from: і */
    private String f12747;

    /* renamed from: Ӏ */
    private String f12748;

    static {
        StringBuilder sb = new StringBuilder("https://%svalidate.%s/api/v");
        sb.append(AppsFlyerLibCore.f12753);
        sb.append("/androidevent?buildnumber=5.4.6&app_id=");
        f12738 = sb.toString();
    }

    public AFValidateInAppPurchase(Context context, String str, String str2, String str3, String str4, String str5, String str6, Map<String, String> map, Intent intent) {
        this.f12745 = new WeakReference<>(context);
        this.f12742 = str;
        this.f12748 = str2;
        this.f12744 = str4;
        this.f12747 = str5;
        this.f12746 = str6;
        this.f12743 = map;
        this.f12741 = str3;
        this.f12740 = intent;
    }

    public static void setUrl(Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String value = entry.getValue();
            String key = entry.getKey();
            boolean z = true;
            int hashCode = key.hashCode();
            if (hashCode != -1421272810) {
                if (hashCode == 454162577 && key.equals("sdk-services")) {
                    z = false;
                }
            } else if (key.equals("validate")) {
                z = true;
            }
            if (!z) {
                f12739 = value;
            } else if (z) {
                f12738 = value;
            }
        }
    }

    /* renamed from: ı */
    private static HttpURLConnection m38130(Purchase purchase) {
        StringBuilder sb = new StringBuilder("Calling ");
        sb.append(purchase.urlString());
        AFLogger.afDebugLog(sb.toString());
        return new RunnableC3446w(purchase.trackingStopped(AppsFlyerLib.getInstance().isTrackingStopped())).m37943();
    }

    /* renamed from: ɩ */
    private static void m38128(boolean z, String str, String str2, String str3, String str4) {
        if (AppsFlyerLibCore.f12751 != null) {
            StringBuilder sb = new StringBuilder("Validate callback parameters: ");
            sb.append(str);
            sb.append(StringUtils.SPACE);
            sb.append(str2);
            sb.append(StringUtils.SPACE);
            sb.append(str3);
            AFLogger.afDebugLog(sb.toString());
            if (z) {
                AFLogger.afDebugLog("Validate in app purchase success: ".concat(String.valueOf(str4)));
                AppsFlyerLibCore.f12751.onValidateInApp();
                return;
            }
            AFLogger.afDebugLog("Validate in app purchase failed: ".concat(String.valueOf(str4)));
            AppsFlyerInAppPurchaseValidatorListener appsFlyerInAppPurchaseValidatorListener = AppsFlyerLibCore.f12751;
            String str5 = str4;
            if (str4 == null) {
                str5 = "Failed validating";
            }
            appsFlyerInAppPurchaseValidatorListener.onValidateInAppFailure(str5);
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: Ι */
    static /* synthetic */ void m38126(AFValidateInAppPurchase aFValidateInAppPurchase, Map map, Map map2, WeakReference weakReference) {
        if (weakReference.get() != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(ServerConfigHandler.getUrl(f12738));
            sb.append(((Context) weakReference.get()).getPackageName());
            String obj = sb.toString();
            String string = AppsFlyerLibCore.getSharedPreferences((Context) weakReference.get()).getString(Payload.RFR, "");
            AFEvent key = new Validate((Context) weakReference.get()).key(aFValidateInAppPurchase.f12742);
            key.f12698 = string;
            key.f12685 = aFValidateInAppPurchase.f12740;
            AFEvent aFEvent = (Validate) key;
            Map<String, Object> m38099 = AppsFlyerLibCore.getInstance().m38099(aFEvent);
            m38099.put("price", aFValidateInAppPurchase.f12747);
            m38099.put(ImpressionData.CURRENCY, aFValidateInAppPurchase.f12746);
            m38099.put("receipt_data", map);
            if (map2 != null) {
                m38099.put("extra_prms", map2);
            }
            C3406ae.m38019().m38018("server_request", obj, new JSONObject(m38099).toString());
            HttpURLConnection httpURLConnection = null;
            try {
                HttpURLConnection m38130 = m38130((Purchase) aFEvent.params(m38099).urlString(obj));
                int i = -1;
                if (m38130 != null) {
                    i = m38130.getResponseCode();
                }
                String m38093 = AppsFlyerLibCore.getInstance().m38093(m38130);
                C3406ae.m38019().m38018("server_response", obj, String.valueOf(i), m38093);
                StringBuilder sb2 = new StringBuilder("Validate-WH response - ");
                sb2.append(i);
                sb2.append(": ");
                sb2.append(new JSONObject(m38093).toString());
                httpURLConnection = m38130;
                AFLogger.afInfoLog(sb2.toString());
                if (m38130 == null) {
                    return;
                }
                m38130.disconnect();
            } catch (Throwable th) {
                try {
                    AFLogger.afErrorLog(th.getMessage(), th);
                    if (httpURLConnection == null) {
                        return;
                    }
                    httpURLConnection.disconnect();
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
        String str = this.f12742;
        if (str == null || str.length() == 0 || AppsFlyerLib.getInstance().isTrackingStopped()) {
            return;
        }
        HttpURLConnection httpURLConnection = null;
        try {
            Context context = this.f12745.get();
            if (context == null) {
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("public-key", this.f12748);
            hashMap.put("sig-data", this.f12744);
            hashMap.put("signature", this.f12741);
            final HashMap hashMap2 = new HashMap(hashMap);
            new Thread(new Runnable() { // from class: com.appsflyer.AFValidateInAppPurchase.2
                @Override // java.lang.Runnable
                public final void run() {
                    AFValidateInAppPurchase aFValidateInAppPurchase = AFValidateInAppPurchase.this;
                    AFValidateInAppPurchase.m38126(aFValidateInAppPurchase, hashMap2, aFValidateInAppPurchase.f12743, AFValidateInAppPurchase.this.f12745);
                }
            }).start();
            hashMap.put("dev_key", this.f12742);
            hashMap.put(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, context.getPackageName());
            hashMap.put("uid", AppsFlyerLib.getInstance().getAppsFlyerUID(context));
            hashMap.put(ServerParameters.ADVERTISING_ID_PARAM, AppsFlyerProperties.getInstance().getString(ServerParameters.ADVERTISING_ID_PARAM));
            String jSONObject = new JSONObject(hashMap).toString();
            String url = ServerConfigHandler.getUrl(f12739);
            C3406ae.m38019().m38018("server_request", url, jSONObject);
            HttpURLConnection m38130 = m38130((Purchase) new SdkServices().params(hashMap).urlString(url));
            int i = -1;
            if (m38130 != null) {
                i = m38130.getResponseCode();
            }
            String m38093 = AppsFlyerLibCore.getInstance().m38093(m38130);
            C3406ae.m38019().m38018("server_response", url, String.valueOf(i), m38093);
            JSONObject jSONObject2 = new JSONObject(m38093);
            jSONObject2.put("code", i);
            if (i == 200) {
                StringBuilder sb = new StringBuilder("Validate response 200 ok: ");
                sb.append(jSONObject2.toString());
                AFLogger.afInfoLog(sb.toString());
                m38128(jSONObject2.optBoolean("result"), this.f12744, this.f12747, this.f12746, jSONObject2.toString());
            } else {
                AFLogger.afInfoLog("Failed Validate request");
                m38128(false, this.f12744, this.f12747, this.f12746, jSONObject2.toString());
            }
            if (m38130 == null) {
                return;
            }
            m38130.disconnect();
        } catch (Throwable th) {
            try {
                if (AppsFlyerLibCore.f12751 != null) {
                    AFLogger.afErrorLog("Failed Validate request + ex", th);
                    m38128(false, this.f12744, this.f12747, this.f12746, th.getMessage());
                }
                AFLogger.afErrorLog(th.getMessage(), th);
                if (0 == 0) {
                    return;
                }
                httpURLConnection.disconnect();
            } catch (Throwable th2) {
                if (0 != 0) {
                    httpURLConnection.disconnect();
                }
                throw th2;
            }
        }
    }
}
