package com.criteo.sync.sdk;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import me.leolin.shortcutbadger.impl.NovaHomeBadger;
/* loaded from: classes-dex2jar.jar:com/criteo/sync/sdk/ErrorReporting.class */
public class ErrorReporting {
    public static void Report(Throwable th, Context context, Config config, boolean z) {
        try {
            String StringifyThrowable = StringifyThrowable(th);
            CrtoLog.m35514e("Caught throwable");
            CrtoLog.m35514e(StringifyThrowable);
            if (Math.random() * 100.0d <= config.getErrorSamplingPercent()) {
                SendToCsm(StringifyThrowable, new String[]{"app-" + DeviceInfo.getBundleName(context), "android-v-" + DeviceInfo.getAndroidVersion(), "sdk-v-" + DeviceInfo.getSDKVersion(), "manufacturer-" + DeviceInfo.getManufacturer(), "model-" + DeviceInfo.getModel(), z ? "handled" : "unhandled"}, config.getErrorReportingEndpoint());
            }
        } catch (Throwable th2) {
            CrtoLog.m35514e("Failed to send error");
            CrtoLog.m35514e(th2.getMessage());
        }
    }

    public static void SendToCsm(String str, String[] strArr, String str2) {
        final Uri.Builder buildUpon = Uri.parse(str2).buildUpon();
        for (String str3 : strArr) {
            if (!TextUtils.isEmpty(str3)) {
                buildUpon.appendQueryParameter(NovaHomeBadger.TAG, str3);
            }
        }
        buildUpon.appendQueryParameter(NotificationCompat.CATEGORY_MESSAGE, str);
        new Thread(new Runnable() { // from class: com.criteo.sync.sdk.ErrorReporting.1
            @Override // java.lang.Runnable
            public void run() {
                HttpURLConnection createHTTPConnection;
                HttpURLConnection httpURLConnection = null;
                HttpURLConnection httpURLConnection2 = null;
                try {
                    try {
                        String builder = buildUpon.toString();
                        createHTTPConnection = IOUtils.createHTTPConnection(new URL(builder.substring(0, Math.min(4110, builder.length()))));
                        httpURLConnection2 = createHTTPConnection;
                        httpURLConnection = createHTTPConnection;
                        IOUtils.read(createHTTPConnection.getInputStream());
                    } catch (Exception e) {
                        httpURLConnection2 = httpURLConnection;
                        CrtoLog.m35514e(ErrorReporting.StringifyThrowable(e));
                        if (httpURLConnection == null) {
                            return;
                        }
                    }
                    if (createHTTPConnection != null) {
                        httpURLConnection = createHTTPConnection;
                        httpURLConnection.disconnect();
                    }
                } catch (Throwable th) {
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                    throw th;
                }
            }
        }).start();
    }

    public static String StringifyThrowable(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }
}
