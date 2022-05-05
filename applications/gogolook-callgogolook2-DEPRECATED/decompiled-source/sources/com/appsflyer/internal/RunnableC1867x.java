package com.appsflyer.internal;

import android.content.Context;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.AFEvent;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerInAppPurchaseValidatorListener;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerLibCore;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.ServerConfigHandler;
import com.appsflyer.ServerParameters;
import com.appsflyer.internal.model.event.Purchase;
import com.appsflyer.internal.model.event.SdkServices;
import com.appsflyer.internal.model.event.Validate;
import com.appsflyer.internal.referrer.Payload;
import com.mopub.network.ImpressionData;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: com.appsflyer.internal.x */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/x.class */
public final class RunnableC1867x implements Runnable {

    /* renamed from: ǃ */
    public static String f1916;

    /* renamed from: ι */
    public static String f1917 = "https://%ssdk-services.%s/validate-android-signature";

    /* renamed from: ı */
    public WeakReference<Context> f1918;

    /* renamed from: Ɩ */
    public String f1919;

    /* renamed from: ȷ */
    public Map<String, String> f1920;

    /* renamed from: ɩ */
    public String f1921;

    /* renamed from: ɹ */
    public String f1922;

    /* renamed from: Ι */
    public final Intent f1923;

    /* renamed from: І */
    public String f1924;

    /* renamed from: і */
    public String f1925;

    /* renamed from: Ӏ */
    public String f1926;

    static {
        StringBuilder sb = new StringBuilder("https://%svalidate.%s/api/v");
        sb.append(AppsFlyerLibCore.f1663);
        sb.append("/androidevent?buildnumber=5.4.0&app_id=");
        f1916 = sb.toString();
    }

    public RunnableC1867x(Context context, String str, String str2, String str3, String str4, String str5, String str6, Map<String, String> map, @Nullable Intent intent) {
        this.f1918 = new WeakReference<>(context);
        this.f1921 = str;
        this.f1924 = str2;
        this.f1926 = str4;
        this.f1919 = str5;
        this.f1922 = str6;
        this.f1920 = map;
        this.f1925 = str3;
        this.f1923 = intent;
    }

    /* renamed from: ǃ */
    public static HttpURLConnection m36105(@NonNull Purchase purchase) {
        StringBuilder sb = new StringBuilder("Calling ");
        sb.append(purchase.urlString());
        AFLogger.afDebugLog(sb.toString());
        return new RunnableC1822ad(purchase.trackingStopped(AppsFlyerLib.getInstance().isTrackingStopped())).m36185();
    }

    /* renamed from: Ι */
    public static /* synthetic */ void m36103(RunnableC1867x xVar, Map map, Map map2, WeakReference weakReference) {
        if (weakReference.get() != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(ServerConfigHandler.getUrl(f1916));
            sb.append(((Context) weakReference.get()).getPackageName());
            String obj = sb.toString();
            String string = AppsFlyerLibCore.getSharedPreferences((Context) weakReference.get()).getString(Payload.REFERRER, "");
            AFEvent key = new Validate((Context) weakReference.get()).key(xVar.f1921);
            key.f1613 = string;
            key.f1614 = xVar.f1923;
            AFEvent aFEvent = (Validate) key;
            Map<String, Object> map3 = AppsFlyerLibCore.getInstance().m36236(aFEvent);
            map3.put("price", xVar.f1919);
            map3.put(ImpressionData.CURRENCY, xVar.f1922);
            map3.put("receipt_data", map);
            if (map2 != null) {
                map3.put("extra_prms", map2);
            }
            String jSONObject = new JSONObject(map3).toString();
            if (C1830ai.f1791 == null) {
                C1830ai.f1791 = new C1830ai();
            }
            C1830ai.f1791.m36172("server_request", obj, jSONObject);
            HttpURLConnection httpURLConnection = null;
            try {
                HttpURLConnection httpURLConnection2 = m36105((Purchase) aFEvent.params(map3).urlString(obj));
                int i = -1;
                if (httpURLConnection2 != null) {
                    i = httpURLConnection2.getResponseCode();
                }
                String str = AppsFlyerLibCore.getInstance().m36242(httpURLConnection2);
                if (C1830ai.f1791 == null) {
                    C1830ai.f1791 = new C1830ai();
                }
                C1830ai.f1791.m36172("server_response", obj, String.valueOf(i), str);
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

    /* renamed from: ι */
    public static void m36101(boolean z, String str, String str2, String str3, String str4) {
        if (AppsFlyerLibCore.f1665 != null) {
            StringBuilder sb = new StringBuilder("Validate callback parameters: ");
            sb.append(str);
            sb.append(" ");
            sb.append(str2);
            sb.append(" ");
            sb.append(str3);
            AFLogger.afDebugLog(sb.toString());
            if (z) {
                AFLogger.afDebugLog("Validate in app purchase success: ".concat(String.valueOf(str4)));
                AppsFlyerLibCore.f1665.onValidateInApp();
                return;
            }
            AFLogger.afDebugLog("Validate in app purchase failed: ".concat(String.valueOf(str4)));
            AppsFlyerInAppPurchaseValidatorListener appsFlyerInAppPurchaseValidatorListener = AppsFlyerLibCore.f1665;
            String str5 = str4;
            if (str4 == null) {
                str5 = "Failed validating";
            }
            appsFlyerInAppPurchaseValidatorListener.onValidateInAppFailure(str5);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str = this.f1921;
        if (str != null && str.length() != 0 && !AppsFlyerLib.getInstance().isTrackingStopped()) {
            HttpURLConnection httpURLConnection = null;
            try {
                Context context = this.f1918.get();
                if (context != null) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("public-key", this.f1924);
                    hashMap.put("sig-data", this.f1926);
                    hashMap.put("signature", this.f1925);
                    final HashMap hashMap2 = new HashMap(hashMap);
                    new Thread(new Runnable() { // from class: com.appsflyer.internal.x.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            RunnableC1867x xVar = RunnableC1867x.this;
                            RunnableC1867x.m36103(xVar, hashMap2, xVar.f1920, RunnableC1867x.this.f1918);
                        }
                    }).start();
                    hashMap.put("dev_key", this.f1921);
                    hashMap.put("app_id", context.getPackageName());
                    hashMap.put("uid", AppsFlyerLib.getInstance().getAppsFlyerUID(context));
                    hashMap.put(ServerParameters.ADVERTISING_ID_PARAM, AppsFlyerProperties.getInstance().getString(ServerParameters.ADVERTISING_ID_PARAM));
                    String jSONObject = new JSONObject(hashMap).toString();
                    String url = ServerConfigHandler.getUrl(f1917);
                    if (C1830ai.f1791 == null) {
                        C1830ai.f1791 = new C1830ai();
                    }
                    C1830ai.f1791.m36172("server_request", url, jSONObject);
                    HttpURLConnection httpURLConnection2 = m36105((Purchase) new SdkServices().params(hashMap).urlString(url));
                    int i = -1;
                    if (httpURLConnection2 != null) {
                        i = httpURLConnection2.getResponseCode();
                    }
                    String str2 = AppsFlyerLibCore.getInstance().m36242(httpURLConnection2);
                    if (C1830ai.f1791 == null) {
                        C1830ai.f1791 = new C1830ai();
                    }
                    C1830ai.f1791.m36172("server_response", url, String.valueOf(i), str2);
                    JSONObject jSONObject2 = new JSONObject(str2);
                    jSONObject2.put("code", i);
                    if (i == 200) {
                        StringBuilder sb = new StringBuilder("Validate response 200 ok: ");
                        sb.append(jSONObject2.toString());
                        AFLogger.afInfoLog(sb.toString());
                        m36101(jSONObject2.optBoolean("result"), this.f1926, this.f1919, this.f1922, jSONObject2.toString());
                    } else {
                        AFLogger.afInfoLog("Failed Validate request");
                        m36101(false, this.f1926, this.f1919, this.f1922, jSONObject2.toString());
                    }
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                }
            } catch (Throwable th) {
                try {
                    if (AppsFlyerLibCore.f1665 != null) {
                        AFLogger.afErrorLog("Failed Validate request + ex", th);
                        m36101(false, this.f1926, this.f1919, this.f1922, th.getMessage());
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
