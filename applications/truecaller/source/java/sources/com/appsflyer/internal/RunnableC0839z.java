package com.appsflyer.internal;

import android.content.Context;
import android.support.annotation.NonNull;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerInAppPurchaseValidatorListener;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerProperties;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.mopub.network.ImpressionData;
import com.tenor.android.core.constant.StringConstant;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: com.appsflyer.internal.z */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/z.class */
public final class RunnableC0839z implements Runnable {
    private static String AFKeystoreWrapper = "https://%ssdk-services.%s/validate-android-signature";
    private static String valueOf;
    private WeakReference<Context> AFInAppEventParameterName;
    private String AFInAppEventType;
    private String AFLogger$LogLevel;
    private String AFVersionDeclaration;
    private String AppsFlyer2dXConversionCallback;
    private String getLevel;
    private Map<String, String> init;
    private String values;

    static {
        StringBuilder sb = new StringBuilder("https://%svalidate.%s/api/v");
        sb.append(C0726ai.valueOf);
        sb.append("/androidevent?buildnumber=6.4.0&app_id=");
        valueOf = sb.toString();
    }

    public RunnableC0839z(Context context, String str, String str2, String str3, String str4, String str5, String str6, Map<String, String> map) {
        this.AFInAppEventParameterName = new WeakReference<>(context);
        this.AFInAppEventType = str;
        this.values = str2;
        this.AppsFlyer2dXConversionCallback = str4;
        this.AFLogger$LogLevel = str5;
        this.getLevel = str6;
        this.init = map;
        this.AFVersionDeclaration = str3;
    }

    /* JADX WARN: Finally extract failed */
    public static /* synthetic */ void AFInAppEventType(RunnableC0839z runnableC0839z, Map map, Map map2, WeakReference weakReference) {
        if (weakReference.get() != null) {
            C0707ab.AFKeystoreWrapper((Context) weakReference.get()).valueOf();
            StringBuilder sb = new StringBuilder();
            sb.append(String.format(valueOf, AppsFlyerLib.getInstance().getHostPrefix(), C0726ai.valueOf().getHostName()));
            sb.append(((Context) weakReference.get()).getPackageName());
            String obj = sb.toString();
            String string = C0726ai.values((Context) weakReference.get()).getString("referrer", "");
            AbstractC0820j ccVar = new cc((Context) weakReference.get());
            ccVar.AppsFlyer2dXConversionCallback = runnableC0839z.AFInAppEventType;
            ccVar.AFVersionDeclaration = string;
            C0726ai valueOf2 = C0726ai.valueOf();
            Map<String, Object> valueOf3 = valueOf2.valueOf(ccVar);
            valueOf3.put("price", runnableC0839z.AFLogger$LogLevel);
            valueOf3.put(ImpressionData.CURRENCY, runnableC0839z.getLevel);
            valueOf3.put("receipt_data", map);
            if (map2 != null) {
                valueOf3.put("extra_prms", map2);
            }
            valueOf3.putAll(valueOf2.values());
            C0739aj.AFInAppEventParameterName().AFInAppEventType("server_request", obj, new JSONObject(valueOf3).toString());
            HttpURLConnection httpURLConnection = null;
            try {
                HttpURLConnection valueOf4 = valueOf((ce) ccVar.AFInAppEventType(valueOf3).valueOf(obj));
                int i = -1;
                if (valueOf4 != null) {
                    i = valueOf4.getResponseCode();
                }
                String AFInAppEventParameterName = C0726ai.AFInAppEventParameterName(valueOf4);
                C0739aj.AFInAppEventParameterName().AFInAppEventType("server_response", obj, String.valueOf(i), AFInAppEventParameterName);
                StringBuilder sb2 = new StringBuilder("Validate-WH response - ");
                sb2.append(i);
                sb2.append(": ");
                sb2.append(new JSONObject(AFInAppEventParameterName).toString());
                httpURLConnection = valueOf4;
                AFLogger.valueOf(sb2.toString());
                if (valueOf4 == null) {
                    return;
                }
                valueOf4.disconnect();
            } catch (Throwable th) {
                try {
                    AFLogger.valueOf(th.getMessage(), th);
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

    private static HttpURLConnection valueOf(@NonNull ce ceVar) {
        StringBuilder sb = new StringBuilder("Calling ");
        sb.append(ceVar.onAppOpenAttributionNative);
        AFLogger.AFInAppEventType(sb.toString());
        ceVar.onConversionDataSuccess = AppsFlyerLib.getInstance().isStopped();
        return new RunnableC0725ah(ceVar).AFInAppEventParameterName();
    }

    private static void values(boolean z, String str, String str2, String str3, String str4) {
        if (C0726ai.AFKeystoreWrapper != null) {
            StringBuilder sb = new StringBuilder("Validate callback parameters: ");
            sb.append(str);
            sb.append(StringConstant.SPACE);
            sb.append(str2);
            sb.append(StringConstant.SPACE);
            sb.append(str3);
            AFLogger.AFInAppEventType(sb.toString());
            if (z) {
                AFLogger.AFInAppEventType("Validate in app purchase success: ".concat(String.valueOf(str4)));
                C0726ai.AFKeystoreWrapper.onValidateInApp();
                return;
            }
            AFLogger.AFInAppEventType("Validate in app purchase failed: ".concat(String.valueOf(str4)));
            AppsFlyerInAppPurchaseValidatorListener appsFlyerInAppPurchaseValidatorListener = C0726ai.AFKeystoreWrapper;
            String str5 = str4;
            if (str4 == null) {
                str5 = "Failed validating";
            }
            appsFlyerInAppPurchaseValidatorListener.onValidateInAppFailure(str5);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str = this.AFInAppEventType;
        if (str == null || str.length() == 0 || AppsFlyerLib.getInstance().isStopped()) {
            return;
        }
        HttpURLConnection httpURLConnection = null;
        try {
            Context context = this.AFInAppEventParameterName.get();
            if (context == null) {
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("public-key", this.values);
            hashMap.put("sig-data", this.AppsFlyer2dXConversionCallback);
            hashMap.put("signature", this.AFVersionDeclaration);
            final HashMap hashMap2 = new HashMap(hashMap);
            new Thread(new Runnable() { // from class: com.appsflyer.internal.z.3
                @Override // java.lang.Runnable
                public final void run() {
                    RunnableC0839z runnableC0839z = RunnableC0839z.this;
                    RunnableC0839z.AFInAppEventType(runnableC0839z, hashMap2, runnableC0839z.init, RunnableC0839z.this.AFInAppEventParameterName);
                }
            }).start();
            hashMap.put("dev_key", this.AFInAppEventType);
            hashMap.put(HiAnalyticsConstant.BI_KEY_APP_ID, context.getPackageName());
            hashMap.put("uid", AppsFlyerLib.getInstance().getAppsFlyerUID(context));
            String string = AppsFlyerProperties.getInstance().getString("advertiserId");
            if (string != null) {
                hashMap.put("advertiserId", string);
            }
            String jSONObject = new JSONObject(hashMap).toString();
            String format = String.format(AFKeystoreWrapper, AppsFlyerLib.getInstance().getHostPrefix(), C0726ai.valueOf().getHostName());
            C0739aj.AFInAppEventParameterName().AFInAppEventType("server_request", format, jSONObject);
            HttpURLConnection valueOf2 = valueOf(new cd().AFInAppEventType(hashMap).valueOf(format));
            int i = -1;
            if (valueOf2 != null) {
                i = valueOf2.getResponseCode();
            }
            C0726ai.valueOf();
            String AFInAppEventParameterName = C0726ai.AFInAppEventParameterName(valueOf2);
            C0739aj.AFInAppEventParameterName().AFInAppEventType("server_response", format, String.valueOf(i), AFInAppEventParameterName);
            JSONObject jSONObject2 = new JSONObject(AFInAppEventParameterName);
            jSONObject2.put("code", i);
            if (i == 200) {
                StringBuilder sb = new StringBuilder("Validate response 200 ok: ");
                sb.append(jSONObject2.toString());
                AFLogger.valueOf(sb.toString());
                values(jSONObject2.optBoolean("result"), this.AppsFlyer2dXConversionCallback, this.AFLogger$LogLevel, this.getLevel, jSONObject2.toString());
            } else {
                AFLogger.valueOf("Failed Validate request");
                values(false, this.AppsFlyer2dXConversionCallback, this.AFLogger$LogLevel, this.getLevel, jSONObject2.toString());
            }
            if (valueOf2 == null) {
                return;
            }
            valueOf2.disconnect();
        } catch (Throwable th) {
            try {
                if (C0726ai.AFKeystoreWrapper != null) {
                    AFLogger.valueOf("Failed Validate request + ex", th);
                    values(false, this.AppsFlyer2dXConversionCallback, this.AFLogger$LogLevel, this.getLevel, th.getMessage());
                }
                AFLogger.valueOf(th.getMessage(), th);
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
