package com.razorpay;

import android.os.AsyncTask;
import com.tenor.android.core.constant.StringConstant;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
/* loaded from: classes3-dex2jar.jar:com/razorpay/p$_5$.class */
public final class p$_5$ extends AsyncTask<String, Void, ResponseObject> {

    /* renamed from: a */
    private Callback f9468a;

    /* renamed from: b */
    private String f9469b = null;

    /* renamed from: c */
    private Map<String, String> f9470c = new HashMap();

    /* renamed from: d */
    private String f9471d = null;

    private p$_5$(Callback callback) {
        this.f9468a = callback;
    }

    /* renamed from: a */
    public static AsyncTask m36064a(String str, Callback callback) {
        p$_5$ p__5_ = new p$_5$(callback);
        p__5_.f9469b = "GET";
        return p__5_.execute(str);
    }

    /* renamed from: a */
    public static AsyncTask m36063a(String str, String str2, Map<String, String> map, Callback callback) {
        p$_5$ p__5_ = new p$_5$(callback);
        p__5_.f9469b = "POST";
        p__5_.f9471d = str2;
        p__5_.f9470c = map;
        return p__5_.execute(str);
    }

    /* renamed from: a */
    public static AsyncTask m36062a(String str, Map<String, String> map, Callback callback) {
        p$_5$ p__5_ = new p$_5$(callback);
        p__5_.f9469b = "GET";
        p__5_.f9470c = map;
        return p__5_.execute(str);
    }

    /* renamed from: a */
    public ResponseObject doInBackground(String... strArr) {
        InputStream errorStream;
        ResponseObject responseObject = new ResponseObject();
        InputStream inputStream = null;
        InputStream inputStream2 = null;
        try {
            try {
                try {
                    HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL(strArr[0]).openConnection();
                    for (Map.Entry<String, String> entry : this.f9470c.entrySet()) {
                        httpsURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
                    }
                    httpsURLConnection.setRequestMethod(this.f9469b);
                    if (this.f9471d != null) {
                        httpsURLConnection.setDoOutput(true);
                        httpsURLConnection.getOutputStream().write(this.f9471d.getBytes(StandardCharsets.UTF_8));
                    }
                    httpsURLConnection.setConnectTimeout(15000);
                    httpsURLConnection.setReadTimeout(20000);
                    httpsURLConnection.connect();
                    int responseCode = httpsURLConnection.getResponseCode();
                    responseObject.setResponseCode(responseCode);
                    errorStream = responseCode >= 400 ? httpsURLConnection.getErrorStream() : httpsURLConnection.getInputStream();
                    InputStream inputStream3 = errorStream;
                    responseObject.setHeaders(httpsURLConnection.getHeaderFields());
                    inputStream = errorStream;
                    inputStream2 = errorStream;
                    responseObject.setResponseResult(m36065a(errorStream));
                } catch (Exception e) {
                    e.getLocalizedMessage();
                    inputStream = inputStream2;
                    AnalyticsUtil.reportError(e, "error", e.getMessage());
                    if (inputStream2 != null) {
                        inputStream2.close();
                    }
                }
                if (errorStream != null) {
                    errorStream.close();
                }
            } catch (Throwable th) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Exception e2) {
                        AnalyticsUtil.reportError(e2, "error", e2.getMessage());
                    }
                }
                throw th;
            }
        } catch (Exception e3) {
            AnalyticsUtil.reportError(e3, "error", e3.getMessage());
        }
        return responseObject;
    }

    /* renamed from: a */
    private static String m36065a(InputStream inputStream) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, StringConstant.UTF8));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                bufferedReader.close();
                return sb.toString();
            }
            sb.append(readLine);
        }
    }

    @Override // android.os.AsyncTask
    public final /* synthetic */ void onPostExecute(ResponseObject responseObject) {
        ResponseObject responseObject2 = responseObject;
        Callback callback = this.f9468a;
        if (callback != null) {
            callback.run(responseObject2);
        }
    }
}
