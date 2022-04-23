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
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ae.class */
public final class ae {

    /* renamed from: ı  reason: contains not printable characters */
    private static String f181 = "https://%smonitorsdk.%s/remote-debug?app_id=";

    /* renamed from: Ι  reason: contains not printable characters */
    private static ae f182;

    /* renamed from: Ɩ  reason: contains not printable characters */
    private int f183;

    /* renamed from: ɩ  reason: contains not printable characters */
    private JSONObject f185;

    /* renamed from: ι  reason: contains not printable characters */
    public boolean f187;

    /* renamed from: Ӏ  reason: contains not printable characters */
    private boolean f190;

    /* renamed from: ǃ  reason: contains not printable characters */
    private boolean f184 = true;

    /* renamed from: ɹ  reason: contains not printable characters */
    private final List<String> f186 = new ArrayList();

    /* renamed from: і  reason: contains not printable characters */
    private String f189 = "-1";

    /* renamed from: І  reason: contains not printable characters */
    private boolean f188 = false;

    private ae() {
        this.f183 = 0;
        boolean z = AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.DPM, false);
        this.f190 = z;
        this.f187 = true ^ z;
        this.f183 = 0;
    }

    /* renamed from: ı  reason: contains not printable characters */
    public static void m936(String str, PackageManager packageManager) {
        try {
            if (f182 == null) {
                f182 = new ae();
            }
            f182.m941(str, packageManager);
            if (f182 == null) {
                f182 = new ae();
            }
            BackgroundEvent trackingStopped = new ProxyEvent().body(f182.m937()).trackingStopped(AppsFlyerLib.getInstance().isTrackingStopped());
            StringBuilder sb = new StringBuilder();
            sb.append(ServerConfigHandler.getUrl(f181));
            sb.append(str);
            new Thread(new w((BackgroundEvent) trackingStopped.urlString(sb.toString()))).start();
        } catch (Throwable th) {
            AFLogger.afErrorLog(th);
        }
    }

    /* renamed from: Ɩ  reason: contains not printable characters */
    private String m937() {
        String str;
        synchronized (this) {
            try {
                this.f185.put("data", new JSONArray((Collection) this.f186));
                str = this.f185.toString();
                try {
                    m940();
                } catch (JSONException e) {
                }
            } catch (JSONException e2) {
                str = null;
            }
        }
        return str;
    }

    /* renamed from: ǃ  reason: contains not printable characters */
    public static ae m938() {
        if (f182 == null) {
            f182 = new ae();
        }
        return f182;
    }

    /* renamed from: ɩ  reason: contains not printable characters */
    private void m939(String str, String str2, String str3, String str4) {
        synchronized (this) {
            try {
                this.f185.put("sdk_version", str);
                if (str2 != null && str2.length() > 0) {
                    this.f185.put("devkey", str2);
                }
                if (str3 != null && str3.length() > 0) {
                    this.f185.put("originalAppsFlyerId", str3);
                }
                if (str4 != null && str4.length() > 0) {
                    this.f185.put("uid", str4);
                }
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: ɹ  reason: contains not printable characters */
    private void m940() {
        synchronized (this) {
            this.f186.clear();
            this.f183 = 0;
        }
    }

    /* renamed from: Ι  reason: contains not printable characters */
    private void m941(String str, PackageManager packageManager) {
        synchronized (this) {
            AppsFlyerProperties instance = AppsFlyerProperties.getInstance();
            AppsFlyerLibCore instance2 = AppsFlyerLibCore.getInstance();
            String string = instance.getString("remote_debug_static_data");
            if (string != null) {
                try {
                    this.f185 = new JSONObject(string);
                } catch (Throwable th) {
                }
            } else {
                this.f185 = new JSONObject();
                m942(Build.BRAND, Build.MODEL, Build.VERSION.RELEASE, instance.getString(ServerParameters.ADVERTISING_ID_PARAM), instance2.f104, instance2.f95);
                StringBuilder sb = new StringBuilder("5.4.6.");
                sb.append(AppsFlyerLibCore.f82);
                m939(sb.toString(), instance.getString(AppsFlyerProperties.AF_KEY), instance.getString("KSAppsFlyerId"), instance.getString("uid"));
                try {
                    m943(str, String.valueOf(packageManager.getPackageInfo(str, 0).versionCode), instance.getString(AppsFlyerProperties.CHANNEL), instance.getString("preInstallName"));
                } catch (Throwable th2) {
                }
                instance.set("remote_debug_static_data", this.f185.toString());
            }
            try {
                this.f185.put("launch_counter", this.f189);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: Ι  reason: contains not printable characters */
    private void m942(String str, String str2, String str3, String str4, String str5, String str6) {
        synchronized (this) {
            try {
                this.f185.put("brand", str);
                this.f185.put("model", str2);
                this.f185.put("platform", "Android");
                this.f185.put("platform_version", str3);
                if (str4 != null && str4.length() > 0) {
                    this.f185.put(ServerParameters.ADVERTISING_ID_PARAM, str4);
                }
                if (str5 != null && str5.length() > 0) {
                    this.f185.put("imei", str5);
                }
                if (str6 != null && str6.length() > 0) {
                    this.f185.put("android_id", str6);
                }
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: ι  reason: contains not printable characters */
    private void m943(String str, String str2, String str3, String str4) {
        synchronized (this) {
            if (str != null) {
                try {
                    if (str.length() > 0) {
                        this.f185.put(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, str);
                    }
                } catch (Throwable th) {
                    return;
                }
            }
            if (str2 != null && str2.length() > 0) {
                this.f185.put(ImpressionData.APP_VERSION, str2);
            }
            if (str3 != null && str3.length() > 0) {
                this.f185.put(AppsFlyerProperties.CHANNEL, str3);
            }
            if (str4 != null && str4.length() > 0) {
                this.f185.put("preInstall", str4);
            }
        }
    }

    /* renamed from: ι  reason: contains not printable characters */
    public static String[] m944(String str, StackTraceElement[] stackTraceElementArr) {
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

    /* renamed from: і  reason: contains not printable characters */
    private boolean m945() {
        if (this.f187) {
            return this.f184 || this.f188;
        }
        return false;
    }

    /* renamed from: ı  reason: contains not printable characters */
    public final void m946() {
        synchronized (this) {
            this.f185 = null;
            f182 = null;
        }
    }

    /* renamed from: ı  reason: contains not printable characters */
    public final void m947(String str) {
        synchronized (this) {
            this.f189 = str;
        }
    }

    /* renamed from: ǃ  reason: contains not printable characters */
    public final void m948(String str, String str2, String... strArr) {
        String str3;
        synchronized (this) {
            if (m945()) {
                if (this.f183 < 98304) {
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
                        this.f186.add(str3);
                        this.f183 += str3.length() << 1;
                    } catch (Throwable th) {
                    }
                }
            }
        }
    }

    /* renamed from: ɩ  reason: contains not printable characters */
    public final void m949() {
        synchronized (this) {
            this.f184 = false;
            m940();
        }
    }

    /* renamed from: Ι  reason: contains not printable characters */
    public final void m950() {
        synchronized (this) {
            this.f188 = true;
            m948("r_debugging_on", new SimpleDateFormat("yyyy-MM-dd HH:mm:ssZ", Locale.ENGLISH).format(Long.valueOf(System.currentTimeMillis())), new String[0]);
        }
    }

    /* renamed from: ι  reason: contains not printable characters */
    public final void m951() {
        synchronized (this) {
            m948("r_debugging_off", new SimpleDateFormat("yyyy-MM-dd HH:mm:ssZ", Locale.ENGLISH).format(Long.valueOf(System.currentTimeMillis())), new String[0]);
            this.f188 = false;
            this.f184 = false;
        }
    }

    /* renamed from: Ӏ  reason: contains not printable characters */
    public final boolean m952() {
        return this.f188;
    }
}
