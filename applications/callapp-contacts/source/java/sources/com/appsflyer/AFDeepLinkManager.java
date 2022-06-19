package com.appsflyer;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.appsflyer.internal.referrer.Payload;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AFDeepLinkManager.class */
public class AFDeepLinkManager {
    public static AFDeepLinkManager instance;
    public static Uri trampolineUri;

    /* renamed from: ı */
    public static String[] f12676;

    /* renamed from: ǃ */
    static volatile boolean f12677;

    /* renamed from: ɩ */
    static String[] f12678;

    /* renamed from: ι */
    static final int f12679 = (int) TimeUnit.SECONDS.toMillis(2);

    private AFDeepLinkManager() {
    }

    public static AFDeepLinkManager getInstance() {
        if (instance == null) {
            instance = new AFDeepLinkManager();
        }
        return instance;
    }

    /* renamed from: ǃ */
    public static void m38167(final Context context, final Map<String, Object> map, final Uri uri) {
        if (m38164(uri.toString())) {
            f12677 = true;
            AFExecutor aFExecutor = AFExecutor.getInstance();
            if (aFExecutor.f12702 == null) {
                aFExecutor.f12702 = Executors.newSingleThreadScheduledExecutor(aFExecutor.f12703);
            }
            aFExecutor.f12702.execute(new Runnable() { // from class: com.appsflyer.AFDeepLinkManager.3
                /* renamed from: ɩ */
                private static Map<String, Object> m38163(Uri uri2) {
                    HashMap hashMap = new HashMap();
                    try {
                        StringBuilder sb = new StringBuilder("ESP deeplink resolving is started: ");
                        sb.append(uri2.toString());
                        AFLogger.afDebugLog(sb.toString());
                        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(uri2.toString()).openConnection();
                        httpURLConnection.setInstanceFollowRedirects(false);
                        httpURLConnection.setReadTimeout(AFDeepLinkManager.f12679);
                        httpURLConnection.setConnectTimeout(AFDeepLinkManager.f12679);
                        httpURLConnection.setRequestProperty("User-agent", "Dalvik/2.1.0 (Linux; U; Android 6.0.1; Nexus 5 Build/M4B30Z)");
                        httpURLConnection.setRequestProperty("af-esp", BuildConfig.VERSION_NAME);
                        int responseCode = httpURLConnection.getResponseCode();
                        hashMap.put("status", Integer.valueOf(responseCode));
                        if (300 <= responseCode && responseCode <= 305) {
                            hashMap.put("res", httpURLConnection.getHeaderField("Location"));
                        }
                        httpURLConnection.disconnect();
                        AFLogger.afDebugLog("ESP deeplink resolving is finished");
                    } catch (Throwable th) {
                        hashMap.put("error", th.getLocalizedMessage());
                        AFLogger.afErrorLog(th.getMessage(), th);
                    }
                    return hashMap;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    String str;
                    Integer num;
                    long currentTimeMillis = System.currentTimeMillis();
                    String obj = uri.toString();
                    ArrayList arrayList = new ArrayList();
                    Integer num2 = null;
                    String str2 = null;
                    int i = 0;
                    while (true) {
                        str = obj;
                        if (i >= 5) {
                            break;
                        }
                        Map<String, Object> m38163 = m38163(Uri.parse(obj));
                        obj = (String) m38163.get("res");
                        num = (Integer) m38163.get("status");
                        str2 = (String) m38163.get("error");
                        if (obj == null || !AFDeepLinkManager.m38164(obj)) {
                            break;
                        }
                        if (i < 4) {
                            arrayList.add(obj);
                        }
                        i++;
                        num2 = num;
                    }
                    num2 = num;
                    str = obj;
                    HashMap hashMap = new HashMap();
                    hashMap.put("res", str != null ? str : "");
                    hashMap.put("status", Integer.valueOf(num2 != null ? num2.intValue() : -1));
                    if (str2 != null) {
                        hashMap.put("error", str2);
                    }
                    if (!arrayList.isEmpty()) {
                        hashMap.put("redirects", arrayList);
                    }
                    hashMap.put(Payload.LATENCY, Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
                    synchronized (map) {
                        map.put("af_deeplink_r", hashMap);
                        map.put("af_deeplink", uri.toString());
                    }
                    AppsFlyerLibCore.getInstance().handleDeepLinkCallback(context, map, str != null ? Uri.parse(str) : uri);
                    AFDeepLinkManager.f12677 = false;
                }
            });
        } else {
            AppsFlyerLibCore.getInstance().handleDeepLinkCallback(context, map, uri);
        }
        trampolineUri = null;
    }

    /* renamed from: Ι */
    public static boolean m38164(String str) {
        if (f12678 != null && !str.contains("af_tranid=")) {
            StringBuilder sb = new StringBuilder("Validate ESP URLs :");
            sb.append(Arrays.asList(f12678));
            AFLogger.afRDLog(sb.toString());
            try {
                return Arrays.asList(f12678).contains(new URL(str).getHost());
            } catch (MalformedURLException e) {
                return false;
            }
        }
        return false;
    }

    public void collectIntentsFromActivities(Intent intent) {
        if (((intent == null || !"android.intent.action.VIEW".equals(intent.getAction())) ? null : intent.getData()) == null || intent.getData() == trampolineUri) {
            return;
        }
        trampolineUri = intent.getData();
    }

    /* renamed from: ɩ */
    public final void m38165(Intent intent, Context context, Map<String, Object> map) {
        Uri data = (intent == null || !"android.intent.action.VIEW".equals(intent.getAction())) ? null : intent.getData();
        Intent intent2 = AppsFlyerLibCore.getInstance().pluginDeeplinkIntent;
        Uri uri = null;
        if (intent2 != null) {
            uri = null;
            if ("android.intent.action.VIEW".equals(intent2.getAction())) {
                uri = intent2.getData();
            }
        }
        if (data != null) {
            if (!intent.hasExtra("af_consumed")) {
                intent.putExtra("af_consumed", System.currentTimeMillis());
                m38167(context, map, data);
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
            m38167(context, map, trampolineUri);
        } else if (uri == null) {
            AFLogger.afDebugLog("No deep link detected");
        } else if (intent2.hasExtra("af_consumed")) {
            StringBuilder sb3 = new StringBuilder("skipping re-use of previously consumed plugin deep link: ");
            sb3.append(uri.toString());
            sb3.append(" w/af_consumed");
            AFLogger.afInfoLog(sb3.toString());
        } else {
            intent2.putExtra("af_consumed", System.currentTimeMillis());
            StringBuilder sb4 = new StringBuilder("using Plugin Intent fallback with URI: ");
            sb4.append(uri.toString());
            AFLogger.afInfoLog(sb4.toString());
            m38167(context, map, uri);
        }
    }
}
