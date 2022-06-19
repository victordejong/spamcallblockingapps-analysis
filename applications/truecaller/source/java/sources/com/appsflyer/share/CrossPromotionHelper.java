package com.appsflyer.share;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.support.annotation.NonNull;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.internal.C0726ai;
import com.appsflyer.internal.C0803co;
import com.appsflyer.internal.C0804cp;
import com.facebook.ads.AdSDKNotificationListener;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/appsflyer/share/CrossPromotionHelper.class */
public class CrossPromotionHelper {
    private static String AFKeystoreWrapper = "https://%simpression.%s";

    /* renamed from: com.appsflyer.share.CrossPromotionHelper$c */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/share/CrossPromotionHelper$c.class */
    public static final class RunnableC0846c implements Runnable {
        private final C0804cp AFInAppEventType;
        private final WeakReference<Context> AFKeystoreWrapper;
        private final boolean valueOf;
        private final String values;

        public RunnableC0846c(String str, C0804cp c0804cp, Context context, boolean z) {
            this.values = str;
            this.AFInAppEventType = c0804cp;
            this.AFKeystoreWrapper = new WeakReference<>(context);
            this.valueOf = z;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Throwable th;
            HttpURLConnection httpURLConnection;
            if (this.valueOf) {
                return;
            }
            try {
                httpURLConnection = (HttpURLConnection) new URL(this.values).openConnection();
                try {
                    r5.setConnectTimeout(10000);
                    r5.setInstanceFollowRedirects(false);
                    int responseCode = r5.getResponseCode();
                    if (responseCode == 200) {
                        StringBuilder sb = new StringBuilder("Cross promotion impressions success: ");
                        sb.append(this.values);
                        AFLogger.values(sb.toString(), false);
                    } else if (responseCode == 301 || responseCode == 302) {
                        StringBuilder sb2 = new StringBuilder("Cross promotion redirection success: ");
                        sb2.append(this.values);
                        AFLogger.values(sb2.toString(), false);
                        if (this.AFInAppEventType != null && this.AFKeystoreWrapper.get() != null) {
                            this.AFInAppEventType.AFInAppEventType = r5.getHeaderField("Location");
                            C0804cp c0804cp = this.AFInAppEventType;
                            Context context = this.AFKeystoreWrapper.get();
                            if (c0804cp.AFInAppEventType != null) {
                                context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(c0804cp.AFInAppEventType)).setFlags(268435456));
                            }
                        }
                    } else {
                        StringBuilder sb3 = new StringBuilder("call to ");
                        sb3.append(this.values);
                        sb3.append(" failed: ");
                        sb3.append(responseCode);
                        AFLogger.valueOf(sb3.toString());
                    }
                    r5.disconnect();
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        AFLogger.values(th.getMessage(), th);
                        if (httpURLConnection == null) {
                            return;
                        }
                        httpURLConnection.disconnect();
                    } finally {
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                httpURLConnection = null;
            }
        }
    }

    @NonNull
    private static LinkGenerator AFInAppEventType(@NonNull Context context, String str, String str2, Map<String, String> map, String str3) {
        LinkGenerator linkGenerator = new LinkGenerator("af_cross_promotion");
        linkGenerator.AFInAppEventParameterName = str3;
        linkGenerator.AFKeystoreWrapper = str;
        linkGenerator.addParameter("af_siteid", context.getPackageName());
        if (str2 != null) {
            linkGenerator.setCampaign(str2);
        }
        if (map != null) {
            linkGenerator.addParameters(map);
        }
        String string = AppsFlyerProperties.getInstance().getString("advertiserId");
        if (string != null) {
            linkGenerator.addParameter("advertising_id", string);
        }
        return linkGenerator;
    }

    public static void logAndOpenStore(@NonNull Context context, String str, String str2) {
        logAndOpenStore(context, str, str2, null);
    }

    public static void logAndOpenStore(@NonNull Context context, String str, String str2, Map<String, String> map) {
        LinkGenerator AFInAppEventType = AFInAppEventType(context, str, str2, map, String.format(C0803co.valueOf, AppsFlyerLib.getInstance().getHostPrefix(), C0726ai.valueOf().getHostName()));
        if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, false)) {
            AFLogger.values("CustomerUserId not set, track And Open Store is disabled", true);
            return;
        }
        HashMap hashMap = map;
        if (map == null) {
            hashMap = new HashMap();
        }
        hashMap.put("af_campaign", str2);
        AppsFlyerLib.getInstance().logEvent(context, "af_cross_promotion", hashMap);
        new Thread(new RunnableC0846c(AFInAppEventType.generateLink(), new C0804cp(), context, AppsFlyerLib.getInstance().isStopped())).start();
    }

    public static void logCrossPromoteImpression(@NonNull Context context, String str, String str2) {
        logCrossPromoteImpression(context, str, str2, null);
    }

    public static void logCrossPromoteImpression(@NonNull Context context, String str, String str2, Map<String, String> map) {
        if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, false)) {
            AFLogger.values("CustomerUserId not set, Promote Impression is disabled", true);
        } else {
            new Thread(new RunnableC0846c(AFInAppEventType(context, str, str2, map, String.format(AFKeystoreWrapper, AppsFlyerLib.getInstance().getHostPrefix(), C0726ai.valueOf().getHostName())).generateLink(), null, null, AppsFlyerLib.getInstance().isStopped())).start();
        }
    }

    public static void setUrl(Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String value = entry.getValue();
            String key = entry.getKey();
            boolean z = true;
            int hashCode = key.hashCode();
            if (hashCode != 96801) {
                if (hashCode == 120623625 && key.equals(AdSDKNotificationListener.IMPRESSION_EVENT)) {
                    z = true;
                }
            } else if (key.equals("app")) {
                z = false;
            }
            if (!z) {
                C0803co.valueOf = value;
            } else if (z) {
                AFKeystoreWrapper = value;
            }
        }
    }
}
