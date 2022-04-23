package com.appsflyer;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AFDeepLinkManager.class */
public class AFDeepLinkManager {
    @VisibleForTesting
    public static AFDeepLinkManager instance;
    @VisibleForTesting
    public static Uri trampolineUri;

    /* renamed from: ı */
    public static String[] f1605;

    /* renamed from: ǃ */
    public static String[] f1606;

    /* renamed from: ɩ */
    public static volatile boolean f1607;

    /* renamed from: Ι */
    public static final int f1608 = (int) TimeUnit.SECONDS.toMillis(2);

    public static AFDeepLinkManager getInstance() {
        if (instance == null) {
            instance = new AFDeepLinkManager();
        }
        return instance;
    }

    /* renamed from: ǃ */
    public static boolean m36305(String str) {
        String[] strArr;
        if (f1606 == null || str.contains("af_tranid=")) {
            return false;
        }
        StringBuilder sb = new StringBuilder("Validate ESP URLs :");
        sb.append(Arrays.asList(f1606));
        AFLogger.afRDLog(sb.toString());
        for (String str2 : f1606) {
            if (str.contains("://".concat(String.valueOf(str2)))) {
                AFLogger.afRDLog("Deeplink matches ESP domain: ".concat(String.valueOf(str2)));
                return true;
            }
        }
        return false;
    }

    /* renamed from: ɩ */
    public static void m36304(Intent intent, Context context, Map<String, Object> map) {
        Uri data = (intent == null || !"android.intent.action.VIEW".equals(intent.getAction())) ? null : intent.getData();
        if (data != null) {
            if (!intent.hasExtra("af_consumed")) {
                intent.putExtra("af_consumed", System.currentTimeMillis());
                m36303(context, map, data);
                return;
            }
            StringBuilder sb = new StringBuilder("skipping re-use of previously consumed deep link: ");
            sb.append(data.toString());
            sb.append(" w/af_consumed");
            AFLogger.afInfoLog(sb.toString());
        } else if (trampolineUri != null) {
            StringBuilder sb2 = new StringBuilder("using trampoline Intent fallback with URI: ");
            sb2.append(trampolineUri);
            AFLogger.afInfoLog(sb2.toString());
            m36303(context, map, trampolineUri);
        } else if (AppsFlyerLibCore.getInstance().latestDeepLink != null) {
            StringBuilder sb3 = new StringBuilder("using Unity/plugin Intent fallback with URI: ");
            sb3.append(AppsFlyerLibCore.getInstance().latestDeepLink.toString());
            AFLogger.afInfoLog(sb3.toString());
            m36303(context, map, AppsFlyerLibCore.getInstance().latestDeepLink);
        } else {
            AFLogger.afDebugLog("No deep link detected");
        }
    }

    /* renamed from: Ι */
    public static void m36303(final Context context, final Map<String, Object> map, final Uri uri) {
        if (m36305(uri.toString())) {
            f1607 = true;
            AFExecutor instance2 = AFExecutor.getInstance();
            if (instance2.f1630 == null) {
                instance2.f1630 = Executors.newSingleThreadScheduledExecutor(instance2.f1629);
            }
            instance2.f1630.execute(new Runnable() { // from class: com.appsflyer.AFDeepLinkManager.5
                @Override // java.lang.Runnable
                public final void run() {
                    long j;
                    HashMap hashMap = new HashMap();
                    long currentTimeMillis = System.currentTimeMillis();
                    Uri uri2 = null;
                    try {
                        StringBuilder sb = new StringBuilder("ESP deeplink resolving is started: ");
                        sb.append(uri.toString());
                        AFLogger.afDebugLog(sb.toString());
                        HttpURLConnection httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(uri.toString()).openConnection()));
                        httpURLConnection.setInstanceFollowRedirects(false);
                        httpURLConnection.setReadTimeout(AFDeepLinkManager.f1608);
                        httpURLConnection.setConnectTimeout(AFDeepLinkManager.f1608);
                        httpURLConnection.setRequestProperty("User-agent", "Dalvik/2.1.0 (Linux; U; Android 6.0.1; Nexus 5 Build/M4B30Z)");
                        httpURLConnection.connect();
                        AFLogger.afDebugLog("ESP deeplink resolving is finished");
                        hashMap.put("status", String.valueOf(httpURLConnection.getResponseCode()));
                        uri2 = null;
                        if (httpURLConnection.getResponseCode() >= 300) {
                            uri2 = null;
                            if (httpURLConnection.getResponseCode() <= 305) {
                                uri2 = Uri.parse(httpURLConnection.getHeaderField("Location"));
                            }
                        }
                        j = System.currentTimeMillis() - currentTimeMillis;
                        uri2 = uri2;
                        httpURLConnection.disconnect();
                    } catch (Throwable th) {
                        hashMap.put("error", th.getLocalizedMessage());
                        hashMap.put("status", FavoriteGroupRealmObject.PARENDID_DELETED);
                        j = System.currentTimeMillis() - currentTimeMillis;
                        AFLogger.afErrorLog(th.getMessage(), th);
                    }
                    hashMap.put("latency", Long.toString(j));
                    if (uri2 != null) {
                        hashMap.put("res", uri2.toString());
                    } else {
                        hashMap.put("res", "");
                    }
                    synchronized (map) {
                        map.put("af_deeplink_r", hashMap);
                        map.put("af_deeplink", uri.toString());
                    }
                    AFDeepLinkManager.f1607 = false;
                    if (uri2 == null) {
                        uri2 = uri;
                    }
                    AppsFlyerLibCore.getInstance().handleDeepLinkCallback(context, map, uri2);
                }
            });
        } else {
            AppsFlyerLibCore.getInstance().handleDeepLinkCallback(context, map, uri);
        }
        trampolineUri = null;
    }

    public void collectIntentsFromActivities(Intent intent) {
        if (((intent == null || !"android.intent.action.VIEW".equals(intent.getAction())) ? null : intent.getData()) != null && intent.getData() != trampolineUri) {
            trampolineUri = intent.getData();
        }
    }
}
