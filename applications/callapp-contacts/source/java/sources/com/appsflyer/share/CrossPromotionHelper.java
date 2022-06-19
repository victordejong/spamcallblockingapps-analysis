package com.appsflyer.share;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.ServerConfigHandler;
import com.appsflyer.ServerParameters;
import com.appsflyer.internal.C3413ai;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/appsflyer/share/CrossPromotionHelper.class */
public class CrossPromotionHelper {

    /* renamed from: ı */
    private static String f13021 = "https://%simpression.%s";

    /* renamed from: com.appsflyer.share.CrossPromotionHelper$d */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/share/CrossPromotionHelper$d.class */
    public static final class RunnableC3452d implements Runnable {

        /* renamed from: ı */
        private final C3413ai f13022;

        /* renamed from: ǃ */
        private final WeakReference<Context> f13023;

        /* renamed from: Ι */
        private final boolean f13024;

        /* renamed from: ι */
        private final String f13025;

        RunnableC3452d(String str, C3413ai c3413ai, Context context, boolean z) {
            this.f13025 = str;
            this.f13022 = c3413ai;
            this.f13023 = new WeakReference<>(context);
            this.f13024 = z;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Throwable th;
            HttpURLConnection httpURLConnection;
            if (this.f13024) {
                return;
            }
            try {
                httpURLConnection = (HttpURLConnection) new URL(this.f13025).openConnection();
                try {
                    r5.setConnectTimeout(10000);
                    r5.setInstanceFollowRedirects(false);
                    int responseCode = r5.getResponseCode();
                    if (responseCode == 200) {
                        StringBuilder sb = new StringBuilder("Cross promotion impressions success: ");
                        sb.append(this.f13025);
                        AFLogger.afInfoLog(sb.toString(), false);
                    } else if (responseCode == 301 || responseCode == 302) {
                        StringBuilder sb2 = new StringBuilder("Cross promotion redirection success: ");
                        sb2.append(this.f13025);
                        AFLogger.afInfoLog(sb2.toString(), false);
                        if (this.f13022 != null && this.f13023.get() != null) {
                            this.f13022.f12881 = r5.getHeaderField("Location");
                            C3413ai c3413ai = this.f13022;
                            Context context = this.f13023.get();
                            if (c3413ai.f12881 != null) {
                                context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(c3413ai.f12881)).setFlags(268435456));
                            }
                        }
                    } else {
                        StringBuilder sb3 = new StringBuilder("call to ");
                        sb3.append(this.f13025);
                        sb3.append(" failed: ");
                        sb3.append(responseCode);
                        AFLogger.afInfoLog(sb3.toString());
                    }
                    if (r5 == null) {
                        return;
                    }
                    r5.disconnect();
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        AFLogger.afErrorLog(th.getMessage(), th, true);
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

    public static void setUrl(Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String value = entry.getValue();
            String key = entry.getKey();
            boolean z = true;
            int hashCode = key.hashCode();
            if (hashCode != 96801) {
                if (hashCode == 120623625 && key.equals("impression")) {
                    z = true;
                }
            } else if (key.equals("app")) {
                z = false;
            }
            if (!z) {
                Constants.f13020 = value;
            } else if (z) {
                f13021 = value;
            }
        }
    }

    public static void trackAndOpenStore(Context context, String str, String str2) {
        trackAndOpenStore(context, str, str2, null);
    }

    public static void trackAndOpenStore(Context context, String str, String str2, Map<String, String> map) {
        LinkGenerator m37937 = m37937(context, str, str2, map, ServerConfigHandler.getUrl(Constants.f13020));
        if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, false)) {
            AFLogger.afInfoLog("CustomerUserId not set, track And Open Store is disabled", true);
            return;
        }
        HashMap hashMap = map;
        if (map == null) {
            hashMap = new HashMap();
        }
        hashMap.put("af_campaign", str2);
        AppsFlyerLib.getInstance().trackEvent(context, "af_cross_promotion", hashMap);
        new Thread(new RunnableC3452d(m37937.generateLink(), new C3413ai(), context, AppsFlyerLib.getInstance().isTrackingStopped())).start();
    }

    public static void trackCrossPromoteImpression(Context context, String str, String str2) {
        trackCrossPromoteImpression(context, str, str2, null);
    }

    public static void trackCrossPromoteImpression(Context context, String str, String str2, Map<String, String> map) {
        if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, false)) {
            AFLogger.afInfoLog("CustomerUserId not set, Promote Impression is disabled", true);
        } else {
            new Thread(new RunnableC3452d(m37937(context, str, str2, map, ServerConfigHandler.getUrl(f13021)).generateLink(), null, null, AppsFlyerLib.getInstance().isTrackingStopped())).start();
        }
    }

    /* renamed from: ɩ */
    private static LinkGenerator m37937(Context context, String str, String str2, Map<String, String> map, String str3) {
        LinkGenerator linkGenerator = new LinkGenerator("af_cross_promotion");
        linkGenerator.f13035 = str3;
        linkGenerator.f13028 = str;
        linkGenerator.addParameter(Constants.URL_SITE_ID, context.getPackageName());
        if (str2 != null) {
            linkGenerator.setCampaign(str2);
        }
        if (map != null) {
            linkGenerator.addParameters(map);
        }
        String string = AppsFlyerProperties.getInstance().getString(ServerParameters.ADVERTISING_ID_PARAM);
        if (string != null) {
            linkGenerator.addParameter("advertising_id", string);
        }
        return linkGenerator;
    }
}
