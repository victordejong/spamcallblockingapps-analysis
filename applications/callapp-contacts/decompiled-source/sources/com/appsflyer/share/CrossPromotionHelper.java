package com.appsflyer.share;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.ServerConfigHandler;
import com.appsflyer.ServerParameters;
import com.appsflyer.internal.ai;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/appsflyer/share/CrossPromotionHelper.class */
public class CrossPromotionHelper {

    /* renamed from: ı  reason: contains not printable characters */
    private static String f345 = "https://%simpression.%s";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/share/CrossPromotionHelper$d.class */
    public static final class d implements Runnable {

        /* renamed from: ı  reason: contains not printable characters */
        private final ai f346;

        /* renamed from: ǃ  reason: contains not printable characters */
        private final WeakReference<Context> f347;

        /* renamed from: Ι  reason: contains not printable characters */
        private final boolean f348;

        /* renamed from: ι  reason: contains not printable characters */
        private final String f349;

        d(String str, ai aiVar, Context context, boolean z) {
            this.f349 = str;
            this.f346 = aiVar;
            this.f347 = new WeakReference<>(context);
            this.f348 = z;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Throwable th;
            HttpURLConnection httpURLConnection;
            if (!this.f348) {
                try {
                    httpURLConnection = (HttpURLConnection) new URL(this.f349).openConnection();
                    try {
                        httpURLConnection.setConnectTimeout(10000);
                        httpURLConnection.setInstanceFollowRedirects(false);
                        int responseCode = httpURLConnection.getResponseCode();
                        if (responseCode == 200) {
                            StringBuilder sb = new StringBuilder("Cross promotion impressions success: ");
                            sb.append(this.f349);
                            AFLogger.afInfoLog(sb.toString(), false);
                        } else if (responseCode == 301 || responseCode == 302) {
                            StringBuilder sb2 = new StringBuilder("Cross promotion redirection success: ");
                            sb2.append(this.f349);
                            AFLogger.afInfoLog(sb2.toString(), false);
                            if (!(this.f346 == null || this.f347.get() == null)) {
                                this.f346.f205 = httpURLConnection.getHeaderField("Location");
                                ai aiVar = this.f346;
                                Context context = this.f347.get();
                                if (aiVar.f205 != null) {
                                    context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(aiVar.f205)).setFlags(268435456));
                                }
                            }
                        } else {
                            StringBuilder sb3 = new StringBuilder("call to ");
                            sb3.append(this.f349);
                            sb3.append(" failed: ");
                            sb3.append(responseCode);
                            AFLogger.afInfoLog(sb3.toString());
                        }
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            AFLogger.afErrorLog(th.getMessage(), th, true);
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                        } catch (Throwable th3) {
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                            throw th3;
                        }
                    }
                } catch (Throwable th4) {
                    th = th4;
                    httpURLConnection = null;
                }
            }
        }
    }

    public static void setUrl(Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String value = entry.getValue();
            String key = entry.getKey();
            char c2 = 65535;
            int hashCode = key.hashCode();
            if (hashCode != 96801) {
                if (hashCode == 120623625 && key.equals("impression")) {
                    c2 = 1;
                }
            } else if (key.equals("app")) {
                c2 = 0;
            }
            if (c2 == 0) {
                Constants.f344 = value;
            } else if (c2 == 1) {
                f345 = value;
            }
        }
    }

    public static void trackAndOpenStore(Context context, String str, String str2) {
        trackAndOpenStore(context, str, str2, null);
    }

    public static void trackAndOpenStore(Context context, String str, String str2, Map<String, String> map) {
        LinkGenerator linkGenerator = m1041(context, str, str2, map, ServerConfigHandler.getUrl(Constants.f344));
        if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, false)) {
            AFLogger.afInfoLog("CustomerUserId not set, track And Open Store is disabled", true);
            return;
        }
        Map<String, String> map2 = map;
        if (map == null) {
            map2 = new HashMap<>();
        }
        map2.put("af_campaign", str2);
        AppsFlyerLib.getInstance().trackEvent(context, "af_cross_promotion", map2);
        new Thread(new d(linkGenerator.generateLink(), new ai(), context, AppsFlyerLib.getInstance().isTrackingStopped())).start();
    }

    public static void trackCrossPromoteImpression(Context context, String str, String str2) {
        trackCrossPromoteImpression(context, str, str2, null);
    }

    public static void trackCrossPromoteImpression(Context context, String str, String str2, Map<String, String> map) {
        if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, false)) {
            AFLogger.afInfoLog("CustomerUserId not set, Promote Impression is disabled", true);
        } else {
            new Thread(new d(m1041(context, str, str2, map, ServerConfigHandler.getUrl(f345)).generateLink(), null, null, AppsFlyerLib.getInstance().isTrackingStopped())).start();
        }
    }

    /* renamed from: ɩ  reason: contains not printable characters */
    private static LinkGenerator m1041(Context context, String str, String str2, Map<String, String> map, String str3) {
        LinkGenerator linkGenerator = new LinkGenerator("af_cross_promotion");
        linkGenerator.f359 = str3;
        linkGenerator.f352 = str;
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
