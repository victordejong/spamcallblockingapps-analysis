package com.appsflyer.internal;

import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerProperties;
import com.huawei.hms.framework.common.hianalytics.HianalyticsBaseData;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.appsflyer.internal.aj */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/aj.class */
public final class C0739aj {
    private static C0739aj AFInAppEventParameterName;
    private static String valueOf = "https://%smonitorsdk.%s/remote-debug?app_id=";
    private JSONObject AFInAppEventType;
    private int AFLogger$LogLevel;
    private boolean AppsFlyer2dXConversionCallback;
    public boolean values;
    private boolean AFKeystoreWrapper = true;
    private final List<String> AFVersionDeclaration = new ArrayList();
    private String getLevel = "-1";
    private boolean init = false;

    private C0739aj() {
        this.AFLogger$LogLevel = 0;
        boolean z = AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.DPM, false);
        this.AppsFlyer2dXConversionCallback = z;
        this.values = true ^ z;
        this.AFLogger$LogLevel = 0;
    }

    public static C0739aj AFInAppEventParameterName() {
        if (AFInAppEventParameterName == null) {
            AFInAppEventParameterName = new C0739aj();
        }
        return AFInAppEventParameterName;
    }

    public static void AFInAppEventParameterName(String str, PackageManager packageManager) {
        try {
            if (AFInAppEventParameterName == null) {
                AFInAppEventParameterName = new C0739aj();
            }
            AFInAppEventParameterName.AFInAppEventType(str, packageManager);
            if (AFInAppEventParameterName == null) {
                AFInAppEventParameterName = new C0739aj();
            }
            String AFVersionDeclaration = AFInAppEventParameterName.AFVersionDeclaration();
            bz bzVar = new bz();
            bzVar.onInstallConversionDataLoadedNative = AFVersionDeclaration;
            bzVar.onConversionDataSuccess = AppsFlyerLib.getInstance().isStopped();
            StringBuilder sb = new StringBuilder();
            sb.append(String.format(valueOf, AppsFlyerLib.getInstance().getHostPrefix(), C0726ai.valueOf().getHostName()));
            sb.append(str);
            new Thread(new RunnableC0725ah((AbstractC0783bu) bzVar.valueOf(sb.toString()))).start();
        } catch (Throwable th) {
            AFLogger.valueOf(th);
        }
    }

    private void AFInAppEventType(String str, PackageManager packageManager) {
        synchronized (this) {
            AppsFlyerProperties appsFlyerProperties = AppsFlyerProperties.getInstance();
            C0726ai valueOf2 = C0726ai.valueOf();
            String string = appsFlyerProperties.getString("remote_debug_static_data");
            if (string != null) {
                try {
                    this.AFInAppEventType = new JSONObject(string);
                } catch (Throwable th) {
                }
            } else {
                this.AFInAppEventType = new JSONObject();
                values(Build.BRAND, Build.MODEL, Build.VERSION.RELEASE, appsFlyerProperties.getString("advertiserId"), valueOf2.AFVersionDeclaration, valueOf2.getLevel);
                StringBuilder sb = new StringBuilder("6.4.0.");
                sb.append(C0726ai.AFInAppEventParameterName);
                AFKeystoreWrapper(sb.toString(), appsFlyerProperties.getString(AppsFlyerProperties.AF_KEY), appsFlyerProperties.getString("KSAppsFlyerId"), appsFlyerProperties.getString("uid"));
                try {
                    AFInAppEventType(str, String.valueOf(packageManager.getPackageInfo(str, 0).versionCode), appsFlyerProperties.getString(AppsFlyerProperties.CHANNEL), appsFlyerProperties.getString("preInstallName"));
                } catch (Throwable th2) {
                }
                appsFlyerProperties.set("remote_debug_static_data", this.AFInAppEventType.toString());
            }
            try {
                this.AFInAppEventType.put("launch_counter", this.getLevel);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    private void AFInAppEventType(String str, String str2, String str3, String str4) {
        synchronized (this) {
            if (str != null) {
                try {
                    if (str.length() > 0) {
                        this.AFInAppEventType.put(HiAnalyticsConstant.BI_KEY_APP_ID, str);
                    }
                } catch (Throwable th) {
                    return;
                }
            }
            if (str2 != null && str2.length() > 0) {
                this.AFInAppEventType.put("app_version", str2);
            }
            if (str3 != null && str3.length() > 0) {
                this.AFInAppEventType.put(AppsFlyerProperties.CHANNEL, str3);
            }
            if (str4 != null && str4.length() > 0) {
                this.AFInAppEventType.put("preInstall", str4);
            }
        }
    }

    public static String[] AFInAppEventType(String str, StackTraceElement[] stackTraceElementArr) {
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

    private void AFKeystoreWrapper(String str, String str2, String str3, String str4) {
        synchronized (this) {
            try {
                this.AFInAppEventType.put(HianalyticsBaseData.SDK_VERSION, str);
                if (str2 != null && str2.length() > 0) {
                    this.AFInAppEventType.put("devkey", str2);
                }
                if (str3 != null && str3.length() > 0) {
                    this.AFInAppEventType.put("originalAppsFlyerId", str3);
                }
                if (str4 != null && str4.length() > 0) {
                    this.AFInAppEventType.put("uid", str4);
                }
            } catch (Throwable th) {
            }
        }
    }

    private boolean AFLogger$LogLevel() {
        if (this.values) {
            return this.AFKeystoreWrapper || this.init;
        }
        return false;
    }

    private String AFVersionDeclaration() {
        String str;
        synchronized (this) {
            try {
                this.AFInAppEventType.put(RemoteMessageConst.DATA, new JSONArray((Collection) this.AFVersionDeclaration));
                str = this.AFInAppEventType.toString();
                try {
                    init();
                } catch (JSONException e) {
                }
            } catch (JSONException e2) {
                str = null;
            }
        }
        return str;
    }

    private void init() {
        synchronized (this) {
            this.AFVersionDeclaration.clear();
            this.AFLogger$LogLevel = 0;
        }
    }

    private void values(String str, String str2, String str3, String str4, String str5, String str6) {
        synchronized (this) {
            try {
                this.AFInAppEventType.put("brand", str);
                this.AFInAppEventType.put("model", str2);
                this.AFInAppEventType.put("platform", AnalyticsConstants.ANDROID);
                this.AFInAppEventType.put("platform_version", str3);
                if (str4 != null && str4.length() > 0) {
                    this.AFInAppEventType.put("advertiserId", str4);
                }
                if (str5 != null && str5.length() > 0) {
                    this.AFInAppEventType.put("imei", str5);
                }
                if (str6 != null && str6.length() > 0) {
                    this.AFInAppEventType.put(AnalyticsConstants.ANDROID_ID, str6);
                }
            } catch (Throwable th) {
            }
        }
    }

    public final void AFInAppEventType() {
        synchronized (this) {
            this.init = true;
            AFInAppEventType("r_debugging_on", new SimpleDateFormat("yyyy-MM-dd HH:mm:ssZ", Locale.ENGLISH).format(Long.valueOf(System.currentTimeMillis())), new String[0]);
        }
    }

    public final void AFInAppEventType(String str) {
        synchronized (this) {
            this.getLevel = str;
        }
    }

    public final void AFInAppEventType(String str, String str2, String... strArr) {
        String str3;
        synchronized (this) {
            if (AFLogger$LogLevel()) {
                if (this.AFLogger$LogLevel < 98304) {
                    try {
                        long currentTimeMillis = System.currentTimeMillis();
                        String join = TextUtils.join(", ", strArr);
                        if (str != null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(currentTimeMillis);
                            sb.append(StringConstant.SPACE);
                            sb.append(Thread.currentThread().getId());
                            sb.append(" _/AppsFlyer_6.4.0 [");
                            sb.append(str);
                            sb.append("] ");
                            sb.append(str2);
                            sb.append(StringConstant.SPACE);
                            sb.append(join);
                            str3 = sb.toString();
                        } else {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(currentTimeMillis);
                            sb2.append(StringConstant.SPACE);
                            sb2.append(Thread.currentThread().getId());
                            sb2.append(StringConstant.SPACE);
                            sb2.append(str2);
                            sb2.append("/AppsFlyer_6.4.0 ");
                            sb2.append(join);
                            str3 = sb2.toString();
                        }
                        this.AFVersionDeclaration.add(str3);
                        this.AFLogger$LogLevel += str3.length() << 1;
                    } catch (Throwable th) {
                    }
                }
            }
        }
    }

    public final void AFKeystoreWrapper() {
        synchronized (this) {
            this.AFInAppEventType = null;
            AFInAppEventParameterName = null;
        }
    }

    public final boolean getLevel() {
        return this.init;
    }

    public final void valueOf() {
        synchronized (this) {
            this.AFKeystoreWrapper = false;
            init();
        }
    }

    public final void values() {
        synchronized (this) {
            AFInAppEventType("r_debugging_off", new SimpleDateFormat("yyyy-MM-dd HH:mm:ssZ", Locale.ENGLISH).format(Long.valueOf(System.currentTimeMillis())), new String[0]);
            this.init = false;
            this.AFKeystoreWrapper = false;
        }
    }
}
