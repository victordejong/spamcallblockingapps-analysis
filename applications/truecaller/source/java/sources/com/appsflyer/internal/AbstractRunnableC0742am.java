package com.appsflyer.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.PointF;
import android.os.Build;
import android.text.TextUtils;
import android.view.ViewConfiguration;
import com.appsflyer.AppsFlyerProperties;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.razorpay.AnalyticsConstants;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONException;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.appsflyer.internal.am */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/am.class */
public abstract class AbstractRunnableC0742am implements Runnable {
    private static long AFLogger$LogLevel = 0;
    private static char[] getLevel;
    public static String values;
    private final C0726ai AFInAppEventParameterName;
    public String AFInAppEventType;
    private final Context init;
    public final String valueOf;
    private static String AFKeystoreWrapper = "v2";
    private static int onInstallConversionDataLoadedNative = 1;
    private static int onDeepLinkingNative = (onInstallConversionDataLoadedNative + 121) % 128;
    public final String AppsFlyer2dXConversionCallback = UUID.randomUUID().toString();
    public final Map<String, Object> AFVersionDeclaration = AFKeystoreWrapper();

    static {
        AFInAppEventType();
        StringBuilder sb = new StringBuilder("https://%sonelink.%s/shortlink-sdk/");
        sb.append(AFKeystoreWrapper);
        values = sb.toString();
    }

    public AbstractRunnableC0742am(C0726ai c0726ai, Context context, String str) {
        this.AFInAppEventParameterName = c0726ai;
        this.init = context;
        this.valueOf = str;
    }

    public static void AFInAppEventType() {
        getLevel = new char[]{1452, 43551, 23272, 2818, 48084, 26734, 6395, 51328, 31033, 10668, 56919, 36564};
        AFLogger$LogLevel = -2488149479668928620L;
    }

    private Map<String, Object> AFKeystoreWrapper() {
        HashMap m8667T = C22128a.m8667T("build_number", "6.4.0");
        m8667T.put("counter", Integer.valueOf(C0726ai.AFInAppEventParameterName(C0726ai.values(this.init), "appsFlyerCount", false)));
        m8667T.put("model", Build.MODEL);
        m8667T.put("brand", Build.BRAND);
        m8667T.put(AnalyticsConstants.SDK, Integer.toString(Build.VERSION.SDK_INT));
        try {
            m8667T.put("app_version_name", this.init.getPackageManager().getPackageInfo(this.init.getPackageName(), 0).versionName);
            onInstallConversionDataLoadedNative = (onDeepLinkingNative + 109) % 128;
        } catch (PackageManager.NameNotFoundException e) {
        }
        m8667T.put(HiAnalyticsConstant.BI_KEY_APP_ID, this.init.getPackageName());
        m8667T.put("platformextension", new C0743an().AFKeystoreWrapper());
        onDeepLinkingNative = (onInstallConversionDataLoadedNative + 91) % 128;
        return m8667T;
    }

    private static String valueOf(int i, int i2, char c) {
        char[] cArr = new char[i2];
        onInstallConversionDataLoadedNative = (onDeepLinkingNative + 103) % 128;
        int i3 = 0;
        while (true) {
            if (!(i3 < i2 ? true : true)) {
                break;
            }
            cArr[i3] = (char) ((getLevel[i + i3] ^ (i3 * AFLogger$LogLevel)) ^ c);
            i3++;
        }
        String str = new String(cArr);
        int i4 = onDeepLinkingNative + 53;
        onInstallConversionDataLoadedNative = i4 % 128;
        if (i4 % 2 != 0) {
            return str;
        }
        throw new ArithmeticException("divide by zero");
    }

    public abstract void AFKeystoreWrapper(HttpsURLConnection httpsURLConnection) throws JSONException, IOException;

    /* JADX WARN: Removed duplicated region for block: B:20:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x014f  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 353
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AbstractRunnableC0742am.run():void");
    }

    public abstract String valueOf();

    public abstract void values();

    public abstract void values(String str);

    public final void values(HttpsURLConnection httpsURLConnection, String... strArr) {
        ArrayList arrayList = new ArrayList(Arrays.asList(strArr));
        arrayList.add(1, AFKeystoreWrapper);
        String join = TextUtils.join("\u2063", arrayList.toArray());
        StringBuilder sb = new StringBuilder();
        sb.append(AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_KEY));
        sb.append(this.AppsFlyer2dXConversionCallback);
        sb.append(AFKeystoreWrapper);
        boolean z = false;
        httpsURLConnection.setRequestProperty(valueOf((ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) - 1, (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)) + 12, (char) (1516 - TextUtils.lastIndexOf("", '0', 0, 0))).intern(), RunnableC0725ah.valueOf(join, sb.toString()));
        int i = onInstallConversionDataLoadedNative + 41;
        onDeepLinkingNative = i % 128;
        if (i % 2 != 0) {
            z = true;
        }
        if (!z) {
            return;
        }
        throw null;
    }
}
