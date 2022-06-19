package com.appsflyer.internal;

import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerLibCore;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.ServerConfigHandler;
import com.appsflyer.ServerParameters;
import com.appsflyer.internal.model.event.BackgroundEvent;
import com.appsflyer.internal.model.event.ProxyEvent;
import com.mopub.mobileads.PangleAdapterConfiguration;
import com.mopub.network.ImpressionData;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import org.apache.commons.lang3.StringUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.appsflyer.internal.ae */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ae.class */
public final class C3406ae {

    /* renamed from: ı */
    private static String f12857 = "https://%smonitorsdk.%s/remote-debug?app_id=";

    /* renamed from: Ι */
    private static C3406ae f12858;

    /* renamed from: Ɩ */
    private int f12859;

    /* renamed from: ɩ */
    private JSONObject f12861;

    /* renamed from: ι */
    public boolean f12863;

    /* renamed from: Ӏ */
    private boolean f12866;

    /* renamed from: ǃ */
    private boolean f12860 = true;

    /* renamed from: ɹ */
    private final List<String> f12862 = new ArrayList();

    /* renamed from: і */
    private String f12865 = "-1";

    /* renamed from: І */
    private boolean f12864 = false;

    private C3406ae() {
        this.f12859 = 0;
        boolean z = AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.DPM, false);
        this.f12866 = z;
        this.f12863 = true ^ z;
        this.f12859 = 0;
    }

    /* renamed from: ı */
    public static void m38021(String str, PackageManager packageManager) {
        try {
            if (f12858 == null) {
                f12858 = new C3406ae();
            }
            f12858.m38013(str, packageManager);
            if (f12858 == null) {
                f12858 = new C3406ae();
            }
            BackgroundEvent trackingStopped = new ProxyEvent().body(f12858.m38020()).trackingStopped(AppsFlyerLib.getInstance().isTrackingStopped());
            StringBuilder sb = new StringBuilder();
            sb.append(ServerConfigHandler.getUrl(f12857));
            sb.append(str);
            new Thread(new RunnableC3446w((BackgroundEvent) trackingStopped.urlString(sb.toString()))).start();
        } catch (Throwable th) {
            AFLogger.afErrorLog(th);
        }
    }

    /* renamed from: Ɩ */
    private String m38020() {
        String str;
        synchronized (this) {
            try {
                this.f12861.put("data", new JSONArray((Collection) this.f12862));
                str = this.f12861.toString();
                try {
                    m38015();
                } catch (JSONException e) {
                }
            } catch (JSONException e2) {
                str = null;
            }
        }
        return str;
    }

    /* renamed from: ǃ */
    public static C3406ae m38019() {
        if (f12858 == null) {
            f12858 = new C3406ae();
        }
        return f12858;
    }

    /* renamed from: ɩ */
    private void m38016(String str, String str2, String str3, String str4) {
        synchronized (this) {
            try {
                this.f12861.put("sdk_version", str);
                if (str2 != null && str2.length() > 0) {
                    this.f12861.put("devkey", str2);
                }
                if (str3 != null && str3.length() > 0) {
                    this.f12861.put("originalAppsFlyerId", str3);
                }
                if (str4 != null && str4.length() > 0) {
                    this.f12861.put("uid", str4);
                }
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: ɹ */
    private void m38015() {
        synchronized (this) {
            this.f12862.clear();
            this.f12859 = 0;
        }
    }

    /* renamed from: Ι */
    private void m38013(String str, PackageManager packageManager) {
        synchronized (this) {
            AppsFlyerProperties appsFlyerProperties = AppsFlyerProperties.getInstance();
            AppsFlyerLibCore appsFlyerLibCore = AppsFlyerLibCore.getInstance();
            String string = appsFlyerProperties.getString("remote_debug_static_data");
            if (string != null) {
                try {
                    this.f12861 = new JSONObject(string);
                } catch (Throwable th) {
                }
            } else {
                this.f12861 = new JSONObject();
                m38012(Build.BRAND, Build.MODEL, Build.VERSION.RELEASE, appsFlyerProperties.getString(ServerParameters.ADVERTISING_ID_PARAM), appsFlyerLibCore.f12780, appsFlyerLibCore.f12771);
                StringBuilder sb = new StringBuilder("5.4.6.");
                sb.append(AppsFlyerLibCore.f12758);
                m38016(sb.toString(), appsFlyerProperties.getString(AppsFlyerProperties.AF_KEY), appsFlyerProperties.getString("KSAppsFlyerId"), appsFlyerProperties.getString("uid"));
                try {
                    m38010(str, String.valueOf(packageManager.getPackageInfo(str, 0).versionCode), appsFlyerProperties.getString(AppsFlyerProperties.CHANNEL), appsFlyerProperties.getString("preInstallName"));
                } catch (Throwable th2) {
                }
                appsFlyerProperties.set("remote_debug_static_data", this.f12861.toString());
            }
            try {
                this.f12861.put("launch_counter", this.f12865);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: Ι */
    private void m38012(String str, String str2, String str3, String str4, String str5, String str6) {
        synchronized (this) {
            try {
                this.f12861.put("brand", str);
                this.f12861.put("model", str2);
                this.f12861.put("platform", "Android");
                this.f12861.put("platform_version", str3);
                if (str4 != null && str4.length() > 0) {
                    this.f12861.put(ServerParameters.ADVERTISING_ID_PARAM, str4);
                }
                if (str5 != null && str5.length() > 0) {
                    this.f12861.put("imei", str5);
                }
                if (str6 != null && str6.length() > 0) {
                    this.f12861.put("android_id", str6);
                }
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: ι */
    private void m38010(String str, String str2, String str3, String str4) {
        synchronized (this) {
            if (str != null) {
                try {
                    if (str.length() > 0) {
                        this.f12861.put(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, str);
                    }
                } catch (Throwable th) {
                    return;
                }
            }
            if (str2 != null && str2.length() > 0) {
                this.f12861.put(ImpressionData.APP_VERSION, str2);
            }
            if (str3 != null && str3.length() > 0) {
                this.f12861.put(AppsFlyerProperties.CHANNEL, str3);
            }
            if (str4 != null && str4.length() > 0) {
                this.f12861.put("preInstall", str4);
            }
        }
    }

    /* renamed from: ι */
    public static String[] m38009(String str, StackTraceElement[] stackTraceElementArr) {
        if (stackTraceElementArr == null) {
            return new String[]{str};
        }
        String[] strArr = new String[stackTraceElementArr.length + 1];
        strArr[0] = str;
        for (int i = 1; i < stackTraceElementArr.length; i++) {
            strArr[i] = stackTraceElementArr[i].toString();
        }
        return strArr;
    }

    /* renamed from: і */
    private boolean m38008() {
        if (this.f12863) {
            return this.f12860 || this.f12864;
        }
        return false;
    }

    /* renamed from: ı */
    public final void m38023() {
        synchronized (this) {
            this.f12861 = null;
            f12858 = null;
        }
    }

    /* renamed from: ı */
    public final void m38022(String str) {
        synchronized (this) {
            this.f12865 = str;
        }
    }

    /* renamed from: ǃ */
    public final void m38018(String str, String str2, String... strArr) {
        String str3;
        synchronized (this) {
            if (m38008()) {
                if (this.f12859 < 98304) {
                    try {
                        long currentTimeMillis = System.currentTimeMillis();
                        String join = TextUtils.join(", ", strArr);
                        if (str != null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(currentTimeMillis);
                            sb.append(StringUtils.SPACE);
                            sb.append(Thread.currentThread().getId());
                            sb.append(" _/AppsFlyer_5.4.6 [");
                            sb.append(str);
                            sb.append("] ");
                            sb.append(str2);
                            sb.append(StringUtils.SPACE);
                            sb.append(join);
                            str3 = sb.toString();
                        } else {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(currentTimeMillis);
                            sb2.append(StringUtils.SPACE);
                            sb2.append(Thread.currentThread().getId());
                            sb2.append(StringUtils.SPACE);
                            sb2.append(str2);
                            sb2.append("/AppsFlyer_5.4.6 ");
                            sb2.append(join);
                            str3 = sb2.toString();
                        }
                        this.f12862.add(str3);
                        this.f12859 += str3.length() << 1;
                    } catch (Throwable th) {
                    }
                }
            }
        }
    }

    /* renamed from: ɩ */
    public final void m38017() {
        synchronized (this) {
            this.f12860 = false;
            m38015();
        }
    }

    /* renamed from: Ι */
    public final void m38014() {
        synchronized (this) {
            this.f12864 = true;
            m38018("r_debugging_on", new SimpleDateFormat("yyyy-MM-dd HH:mm:ssZ", Locale.ENGLISH).format(Long.valueOf(System.currentTimeMillis())), new String[0]);
        }
    }

    /* renamed from: ι */
    public final void m38011() {
        synchronized (this) {
            m38018("r_debugging_off", new SimpleDateFormat("yyyy-MM-dd HH:mm:ssZ", Locale.ENGLISH).format(Long.valueOf(System.currentTimeMillis())), new String[0]);
            this.f12864 = false;
            this.f12860 = false;
        }
    }

    /* renamed from: Ӏ */
    public final boolean m38007() {
        return this.f12864;
    }
}
