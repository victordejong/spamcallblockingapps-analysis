package com.appsflyer.internal;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import com.appsflyer.AFLogger;
import com.appsflyer.deeplink.DeepLinkListener;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.appsflyer.internal.i */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/i.class */
public final class C0818i {
    @VisibleForTesting
    public static Intent AFInAppEventParameterName;
    public static final int AFInAppEventType = (int) TimeUnit.SECONDS.toMillis(2);
    public static String[] AFKeystoreWrapper;
    @VisibleForTesting
    private static C0818i AFVersionDeclaration;
    public static String[] AppsFlyer2dXConversionCallback;
    public static volatile boolean values;
    public String AFLogger$LogLevel;
    public Map<String, String> getLevel;
    @Nullable
    public List<List<String>> init = new ArrayList();
    public DeepLinkListener valueOf;

    /* JADX WARN: Removed duplicated region for block: B:62:0x00e0 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean AFInAppEventParameterName(android.content.Intent r6, android.content.Context r7, java.util.Map<java.lang.String, java.lang.Object> r8) {
        /*
            Method dump skipped, instructions count: 491
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.C0818i.AFInAppEventParameterName(android.content.Intent, android.content.Context, java.util.Map):boolean");
    }

    @VisibleForTesting
    @Nullable
    public static Uri AFKeystoreWrapper(Intent intent) {
        return (intent == null || !"android.intent.action.VIEW".equals(intent.getAction())) ? null : intent.getData();
    }

    public static boolean AFKeystoreWrapper(String str) {
        if (AFKeystoreWrapper != null && !str.contains("af_tranid=")) {
            StringBuilder sb = new StringBuilder("Validate if link ");
            sb.append(str);
            sb.append(" belongs to ESP domains: ");
            sb.append(Arrays.asList(AFKeystoreWrapper));
            AFLogger.AFInAppEventParameterName(sb.toString());
            try {
                return Arrays.asList(AFKeystoreWrapper).contains(new URL(str).getHost());
            } catch (MalformedURLException e) {
                return false;
            }
        }
        return false;
    }

    @Nullable
    private Uri valueOf(Object obj, Iterator<String> it) {
        while (obj != JSONObject.NULL) {
            if (!it.hasNext()) {
                Uri parse = Uri.parse(obj.toString());
                if (parse != null && parse.getScheme() != null && parse.getHost() != null) {
                    return parse;
                }
                return null;
            }
            try {
                obj = new JSONObject(obj.toString()).get(it.next());
            } catch (JSONException e) {
                return null;
            }
        }
        return null;
    }

    public static C0818i values() {
        if (AFVersionDeclaration == null) {
            AFVersionDeclaration = new C0818i();
        }
        return AFVersionDeclaration;
    }

    public final void AFKeystoreWrapper(final Context context, final Map<String, Object> map, final Uri uri) {
        if (AFKeystoreWrapper(uri.toString())) {
            values = true;
            if (C0821k.values == null) {
                C0821k.values = new C0821k();
            }
            C0821k c0821k = C0821k.values;
            if (c0821k.AFInAppEventParameterName == null) {
                c0821k.AFInAppEventParameterName = Executors.newSingleThreadScheduledExecutor(c0821k.AFInAppEventType);
            }
            c0821k.AFInAppEventParameterName.execute(new Runnable() { // from class: com.appsflyer.internal.i.2
                private static Map<String, Object> values(Uri uri2) {
                    HashMap hashMap = new HashMap();
                    try {
                        StringBuilder sb = new StringBuilder("ESP deeplink resolving is started: ");
                        sb.append(uri2.toString());
                        AFLogger.AFInAppEventType(sb.toString());
                        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(uri2.toString()).openConnection();
                        httpURLConnection.setInstanceFollowRedirects(false);
                        int i = C0818i.AFInAppEventType;
                        httpURLConnection.setReadTimeout(i);
                        httpURLConnection.setConnectTimeout(i);
                        httpURLConnection.setRequestProperty("User-agent", "Dalvik/2.1.0 (Linux; U; Android 6.0.1; Nexus 5 Build/M4B30Z)");
                        httpURLConnection.setRequestProperty("af-esp", "6.4.0");
                        int responseCode = httpURLConnection.getResponseCode();
                        hashMap.put(UpdateKey.STATUS, Integer.valueOf(responseCode));
                        if (300 <= responseCode && responseCode <= 305) {
                            hashMap.put("res", httpURLConnection.getHeaderField("Location"));
                        }
                        httpURLConnection.disconnect();
                        AFLogger.AFInAppEventType("ESP deeplink resolving is finished");
                    } catch (Throwable th) {
                        hashMap.put("error", th.getLocalizedMessage());
                        AFLogger.valueOf(th.getMessage(), th);
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
                    int i = 0;
                    String str2 = null;
                    while (true) {
                        str = obj;
                        if (i >= 5) {
                            break;
                        }
                        Map<String, Object> values2 = values(Uri.parse(obj));
                        obj = (String) values2.get("res");
                        num = (Integer) values2.get(UpdateKey.STATUS);
                        str2 = (String) values2.get("error");
                        if (obj == null || !C0818i.AFKeystoreWrapper(obj)) {
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
                    hashMap.put(UpdateKey.STATUS, Integer.valueOf(num2 != null ? num2.intValue() : -1));
                    if (str2 != null) {
                        hashMap.put("error", str2);
                    }
                    if (!arrayList.isEmpty()) {
                        hashMap.put("redirects", arrayList);
                    }
                    hashMap.put("latency", Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
                    synchronized (map) {
                        map.put("af_deeplink_r", hashMap);
                        map.put("af_deeplink", uri.toString());
                    }
                    C0726ai.valueOf().valueOf(context, map, str != null ? Uri.parse(str) : uri);
                    C0818i.values = false;
                }
            });
        } else {
            C0726ai.valueOf().valueOf(context, map, uri);
        }
        AFInAppEventParameterName = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00da  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void AFKeystoreWrapper(java.util.Map<java.lang.String, java.lang.Object> r7, com.appsflyer.internal.C0753au r8, android.content.Intent r9, android.content.Context r10) {
        /*
            Method dump skipped, instructions count: 245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.C0818i.AFKeystoreWrapper(java.util.Map, com.appsflyer.internal.au, android.content.Intent, android.content.Context):void");
    }
}
