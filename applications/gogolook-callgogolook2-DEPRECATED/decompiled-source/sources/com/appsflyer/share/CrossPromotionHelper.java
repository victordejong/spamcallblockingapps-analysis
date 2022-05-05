package com.appsflyer.share;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.annotation.NonNull;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.ServerConfigHandler;
import com.appsflyer.ServerParameters;
import com.appsflyer.internal.C1834am;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/appsflyer/share/CrossPromotionHelper.class */
public class CrossPromotionHelper {

    /* renamed from: ɩ */
    public static String f1931 = "https://%simpression.%s";

    /* renamed from: com.appsflyer.share.CrossPromotionHelper$a */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/share/CrossPromotionHelper$a.class */
    public static final class RunnableC1873a implements Runnable {

        /* renamed from: ı */
        public final WeakReference<Context> f1932;

        /* renamed from: ǃ */
        public final String f1933;

        /* renamed from: ɩ */
        public final boolean f1934;

        /* renamed from: Ι */
        public final C1834am f1935;

        public RunnableC1873a(String str, C1834am amVar, Context context, boolean z) {
            this.f1933 = str;
            this.f1935 = amVar;
            this.f1932 = new WeakReference<>(context);
            this.f1934 = z;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Throwable th;
            HttpURLConnection httpURLConnection;
            if (!this.f1934) {
                try {
                    httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(this.f1933).openConnection()));
                    try {
                        httpURLConnection.setConnectTimeout(10000);
                        httpURLConnection.setInstanceFollowRedirects(false);
                        int responseCode = httpURLConnection.getResponseCode();
                        if (responseCode == 200) {
                            StringBuilder sb = new StringBuilder("Cross promotion impressions success: ");
                            sb.append(this.f1933);
                            AFLogger.afInfoLog(sb.toString(), false);
                        } else if (responseCode == 301 || responseCode == 302) {
                            StringBuilder sb2 = new StringBuilder("Cross promotion redirection success: ");
                            sb2.append(this.f1933);
                            AFLogger.afInfoLog(sb2.toString(), false);
                            if (!(this.f1935 == null || this.f1932.get() == null)) {
                                this.f1935.f1817 = httpURLConnection.getHeaderField("Location");
                                C1834am amVar = this.f1935;
                                Context context = this.f1932.get();
                                if (amVar.f1817 != null) {
                                    context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(amVar.f1817)).setFlags(268435456));
                                }
                            }
                        } else {
                            StringBuilder sb3 = new StringBuilder("call to ");
                            sb3.append(this.f1933);
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

    public static void trackAndOpenStore(@NonNull Context context, String str, String str2) {
        trackAndOpenStore(context, str, str2, null);
    }

    public static void trackAndOpenStore(@NonNull Context context, String str, String str2, Map<String, String> map) {
        LinkGenerator linkGenerator = m36095(context, str, str2, map, ServerConfigHandler.getUrl(Constants.f1930));
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
        new Thread(new RunnableC1873a(linkGenerator.generateLink(), new C1834am(), context, AppsFlyerLib.getInstance().isTrackingStopped())).start();
    }

    public static void trackCrossPromoteImpression(@NonNull Context context, String str, String str2) {
        trackCrossPromoteImpression(context, str, str2, null);
    }

    public static void trackCrossPromoteImpression(@NonNull Context context, String str, String str2, Map<String, String> map) {
        if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, false)) {
            AFLogger.afInfoLog("CustomerUserId not set, Promote Impression is disabled", true);
        } else {
            new Thread(new RunnableC1873a(m36095(context, str, str2, map, ServerConfigHandler.getUrl(f1931)).generateLink(), null, null, AppsFlyerLib.getInstance().isTrackingStopped())).start();
        }
    }

    @NonNull
    /* renamed from: ı */
    public static LinkGenerator m36095(@NonNull Context context, String str, String str2, Map<String, String> map, String str3) {
        LinkGenerator linkGenerator = new LinkGenerator("af_cross_promotion");
        linkGenerator.f1941 = str3;
        linkGenerator.f1946 = str;
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
