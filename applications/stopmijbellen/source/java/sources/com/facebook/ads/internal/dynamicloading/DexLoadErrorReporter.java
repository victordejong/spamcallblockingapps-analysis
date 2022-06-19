package com.facebook.ads.internal.dynamicloading;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.google.ads.mediation.facebook.FacebookAdapter;
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
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/dynamicloading/DexLoadErrorReporter.class */
public class DexLoadErrorReporter {
    public static final double SAMPLING = 0.1d;

    /* renamed from: a */
    public static final AtomicBoolean f5989a = new AtomicBoolean();

    /* renamed from: com.facebook.ads.internal.dynamicloading.DexLoadErrorReporter$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/dynamicloading/DexLoadErrorReporter$a.class */
    public class C1617a extends Thread {

        /* renamed from: a */
        public final /* synthetic */ Context f5990a;

        /* renamed from: b */
        public final /* synthetic */ String f5991b;

        public C1617a(Context context, String str) {
            this.f5990a = context;
            this.f5991b = str;
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
                    httpURLConnection.setRequestProperty("Accept-Charset", "UTF-8");
                    httpURLConnection.setRequestProperty("user-agent", "[FBAN/AudienceNetworkForAndroid;FBSN/Android]");
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setDoInput(true);
                    httpURLConnection.connect();
                    String uuid = UUID.randomUUID().toString();
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("attempt", "0");
                    DexLoadErrorReporter.m4850a(this.f5990a, jSONObject2, uuid);
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("subtype", "generic");
                    jSONObject3.put("subtype_code", "1320");
                    jSONObject3.put("caught_exception", "1");
                    jSONObject3.put("stacktrace", this.f5991b);
                    JSONObject jSONObject4 = new JSONObject();
                    jSONObject4.put(FacebookAdapter.KEY_ID, UUID.randomUUID().toString());
                    jSONObject4.put("type", "debug");
                    jSONObject4.put("session_time", "" + (System.currentTimeMillis() / 1000));
                    jSONObject4.put("time", "" + (System.currentTimeMillis() / 1000));
                    jSONObject4.put("session_id", uuid);
                    jSONObject4.put("data", jSONObject3);
                    jSONObject4.put("attempt", "0");
                    DexLoadErrorReporter.m4850a(this.f5990a, jSONObject3, uuid);
                    JSONArray jSONArray = new JSONArray();
                    jSONArray.put(jSONObject4);
                    JSONObject jSONObject5 = new JSONObject();
                    jSONObject5.put("data", jSONObject2);
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
                sb.append(URLEncoder.encode(jSONObject, "UTF-8"));
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
    public static void m4850a(Context context, JSONObject jSONObject, String str) throws JSONException, PackageManager.NameNotFoundException {
        String packageName = context.getPackageName();
        jSONObject.put("APPBUILD", context.getPackageManager().getPackageInfo(packageName, 0).versionCode);
        jSONObject.put("APPNAME", context.getPackageManager().getApplicationLabel(context.getPackageManager().getApplicationInfo(packageName, 0)));
        jSONObject.put("APPVERS", context.getPackageManager().getPackageInfo(packageName, 0).versionName);
        jSONObject.put("OSVERS", Build.VERSION.RELEASE);
        jSONObject.put("SDK", "android");
        jSONObject.put("SESSION_ID", str);
        jSONObject.put("MODEL", Build.MODEL);
        jSONObject.put("BUNDLE", packageName);
        jSONObject.put("SDK_VERSION", BuildConfigApi.getVersionName(context));
        jSONObject.put("OS", "Android");
    }

    @SuppressLint({"CatchGeneralException"})
    public static void reportDexLoadingIssue(Context context, String str, double d) {
        AtomicBoolean atomicBoolean = f5989a;
        if (atomicBoolean.get() || Math.random() >= d) {
            return;
        }
        atomicBoolean.set(true);
        new C1617a(context, str).start();
    }
}
