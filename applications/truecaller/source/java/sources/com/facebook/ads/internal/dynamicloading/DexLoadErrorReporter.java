package com.facebook.ads.internal.dynamicloading;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import com.amazon.device.ads.DtbConstants;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.mopub.common.Constants;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/facebook/ads/internal/dynamicloading/DexLoadErrorReporter.class */
public class DexLoadErrorReporter {
    public static final double SAMPLING = 0.1d;

    /* renamed from: a */
    public static final AtomicBoolean f2584a = new AtomicBoolean();

    /* renamed from: com.facebook.ads.internal.dynamicloading.DexLoadErrorReporter$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/ads/internal/dynamicloading/DexLoadErrorReporter$a.class */
    public class C0937a extends Thread {

        /* renamed from: a */
        public final /* synthetic */ Context f2585a;

        /* renamed from: b */
        public final /* synthetic */ String f2586b;

        public C0937a(Context context, String str) {
            this.f2585a = context;
            this.f2586b = str;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            HttpURLConnection httpURLConnection;
            InputStream inputStream;
            String jSONObject;
            DataOutputStream dataOutputStream;
            super.run();
            DataOutputStream dataOutputStream2 = null;
            try {
                httpURLConnection = (HttpURLConnection) new URL("https://www.facebook.com/adnw_logging/").openConnection();
                try {
                    httpURLConnection.setRequestMethod("POST");
                    httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded;charset=UTF-8");
                    httpURLConnection.setRequestProperty("Accept", "application/json");
                    httpURLConnection.setRequestProperty("Accept-Charset", StringConstant.UTF8);
                    httpURLConnection.setRequestProperty("user-agent", "[FBAN/AudienceNetworkForAndroid;FBSN/Android]");
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setDoInput(true);
                    httpURLConnection.connect();
                    String uuid = UUID.randomUUID().toString();
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("attempt", DtbConstants.NETWORK_TYPE_UNKNOWN);
                    DexLoadErrorReporter.m41980a(this.f2585a, jSONObject2, uuid);
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("subtype", "generic");
                    jSONObject3.put("subtype_code", "1320");
                    jSONObject3.put("caught_exception", "1");
                    jSONObject3.put("stacktrace", this.f2586b);
                    JSONObject jSONObject4 = new JSONObject();
                    jSONObject4.put("id", UUID.randomUUID().toString());
                    jSONObject4.put("type", "debug");
                    jSONObject4.put("session_time", "" + (System.currentTimeMillis() / 1000));
                    jSONObject4.put("time", "" + (System.currentTimeMillis() / 1000));
                    jSONObject4.put("session_id", uuid);
                    jSONObject4.put(RemoteMessageConst.DATA, jSONObject3);
                    jSONObject4.put("attempt", DtbConstants.NETWORK_TYPE_UNKNOWN);
                    DexLoadErrorReporter.m41980a(this.f2585a, jSONObject3, uuid);
                    JSONArray jSONArray = new JSONArray();
                    jSONArray.put(jSONObject4);
                    JSONObject jSONObject5 = new JSONObject();
                    jSONObject5.put(RemoteMessageConst.DATA, jSONObject2);
                    jSONObject5.put("events", jSONArray);
                    jSONObject = jSONObject5.toString();
                    dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
                    inputStream = null;
                } catch (Throwable th) {
                    inputStream = null;
                }
            } catch (Throwable th2) {
                inputStream = null;
                httpURLConnection = null;
            }
            try {
                StringBuilder sb = new StringBuilder();
                sb.append("payload=");
                sb.append(URLEncoder.encode(jSONObject, StringConstant.UTF8));
                dataOutputStream.writeBytes(sb.toString());
                dataOutputStream.flush();
                byte[] bArr = new byte[16384];
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                InputStream inputStream2 = httpURLConnection.getInputStream();
                while (true) {
                    int read = inputStream2.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
                inputStream = inputStream2;
                byteArrayOutputStream.flush();
                try {
                    dataOutputStream.close();
                } catch (Exception e) {
                }
                try {
                    inputStream2.close();
                } catch (Exception e2) {
                }
            } catch (Throwable th3) {
                dataOutputStream2 = dataOutputStream;
                if (dataOutputStream2 != null) {
                    try {
                        dataOutputStream2.close();
                    } catch (Exception e3) {
                    }
                }
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Exception e4) {
                    }
                }
                if (httpURLConnection == null) {
                    return;
                }
                httpURLConnection.disconnect();
            }
            httpURLConnection.disconnect();
        }
    }

    /* renamed from: a */
    public static void m41980a(Context context, JSONObject jSONObject, String str) throws JSONException, PackageManager.NameNotFoundException {
        String packageName = context.getPackageName();
        jSONObject.put("APPBUILD", context.getPackageManager().getPackageInfo(packageName, 0).versionCode);
        jSONObject.put("APPNAME", context.getPackageManager().getApplicationLabel(context.getPackageManager().getApplicationInfo(packageName, 0)));
        jSONObject.put("APPVERS", context.getPackageManager().getPackageInfo(packageName, 0).versionName);
        jSONObject.put("OSVERS", Build.VERSION.RELEASE);
        jSONObject.put("SDK", Constants.ANDROID_PLATFORM);
        jSONObject.put("SESSION_ID", str);
        jSONObject.put("MODEL", Build.MODEL);
        jSONObject.put("BUNDLE", packageName);
        jSONObject.put("SDK_VERSION", BuildConfigApi.getVersionName(context));
        jSONObject.put("OS", AnalyticsConstants.ANDROID);
    }

    public static void reportDexLoadingIssue(Context context, String str, double d) {
        AtomicBoolean atomicBoolean = f2584a;
        if (atomicBoolean.get() || Math.random() >= d) {
            return;
        }
        atomicBoolean.set(true);
        new C0937a(context, str).start();
    }
}
