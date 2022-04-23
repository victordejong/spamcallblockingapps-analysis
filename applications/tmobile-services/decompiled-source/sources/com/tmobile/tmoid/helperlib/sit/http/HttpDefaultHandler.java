package com.tmobile.tmoid.helperlib.sit.http;

import android.net.Network;
import android.os.Build;
import android.text.TextUtils;
import com.facebook.stetho.common.Utf8Charset;
import com.facebook.stetho.server.http.HttpHeaders;
import com.google.firebase.crashlytics.internal.common.AbstractSpiCall;
import com.tmobile.tmoid.helperlib.sit.SitErrorType;
import com.tmobile.tmoid.helperlib.sit.SitServerCommunicationErrorException;
import com.tmobile.tmoid.helperlib.util.Log;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManagerFactory;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/http/HttpDefaultHandler.class */
public class HttpDefaultHandler extends HttpHandler {

    /* renamed from: c */
    private static SSLContext f14798c;

    /* renamed from: b */
    private HttpURLConnection f14799b;

    public HttpDefaultHandler(Network network, String str) throws SitServerCommunicationErrorException {
        this(network, str, "noservicename");
    }

    public HttpDefaultHandler(Network network, String str, String str2) throws SitServerCommunicationErrorException {
        if (TextUtils.isEmpty(str2)) {
            this.f14800a = "cnam";
            Log.m4654d("TMO-Agent:HttpDefaultHandler", "HttpDefaultHandler url = " + str + ", serviceName [DEFAULT] = " + this.f14800a);
        } else {
            this.f14800a = str2;
            Log.m4654d("TMO-Agent:HttpDefaultHandler", "HttpDefaultHandler url = " + str + ", serviceName = " + this.f14800a);
        }
        if (network != null) {
            try {
                if (Build.VERSION.SDK_INT >= 21) {
                    this.f14799b = (HttpURLConnection) network.openConnection(new URL(str));
                    m4953a();
                }
            } catch (IOException e) {
                throw new SitServerCommunicationErrorException(SitErrorType.OTHER, e);
            }
        }
        this.f14799b = (HttpURLConnection) new URL(str).openConnection();
        m4953a();
    }

    /* renamed from: a */
    private void m4953a() {
        synchronized (this) {
            if (f14798c == null) {
                if (this.f14799b instanceof HttpsURLConnection) {
                    try {
                        try {
                            Log.m4654d("TMO-Agent:HttpDefaultHandler", "Loading the AndroidCAStore trusted certificates");
                            KeyStore instance = KeyStore.getInstance("AndroidCAStore");
                            instance.load(null, null);
                            TrustManagerFactory instance2 = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                            instance2.init(instance);
                            SSLContext instance3 = SSLContext.getInstance("TLS");
                            f14798c = instance3;
                            instance3.init(null, instance2.getTrustManagers(), null);
                        } catch (IOException e) {
                            Log.m4653d("TMO-Agent:HttpDefaultHandler", "Error: IOException", e);
                        }
                    } catch (GeneralSecurityException e2) {
                        Log.m4653d("TMO-Agent:HttpDefaultHandler", "Error: GeneralSecurityException", e2);
                    }
                } else {
                    Log.m4654d("TMO-Agent:HttpDefaultHandler", "Info: This is not a HTTPS instance");
                }
            }
        }
    }

    /* renamed from: b */
    public String m4952b(HttpURLConnection httpURLConnection, String str) throws SitServerCommunicationErrorException {
        Log.m4654d("TMO-Agent:HttpDefaultHandler", "library version: 3.2.6");
        Log.m4654d("TMO-Agent:HttpDefaultHandler", "URL: " + httpURLConnection.getURL());
        if (this.f14799b instanceof HttpsURLConnection) {
            Log.m4654d("TMO-Agent:HttpDefaultHandler", "Setting the SSL socket factory");
            ((HttpsURLConnection) this.f14799b).setSSLSocketFactory(f14798c.getSocketFactory());
        } else {
            Log.m4654d("TMO-Agent:HttpDefaultHandler", "Info: This is not a HTTPS instance");
        }
        try {
            try {
                httpURLConnection.setConnectTimeout(60000);
                httpURLConnection.setReadTimeout(60000);
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setDoInput(true);
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setRequestProperty(AbstractSpiCall.HEADER_ACCEPT, "*/*");
                httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
                httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, AbstractSpiCall.ACCEPT_JSON_VALUE);
                if (!"noservicename".equals(this.f14800a)) {
                    httpURLConnection.setRequestProperty("X-application-category", this.f14800a);
                    Log.m4654d("TMO-Agent:HttpDefaultHandler", "HttpDefaultHandler: Adding Application Category Header: " + this.f14800a);
                } else {
                    Log.m4654d("TMO-Agent:HttpDefaultHandler", "HttpDefaultHandler: Not adding any Application Category Header: " + this.f14800a);
                }
                Log.m4654d("TMO-Agent:HttpDefaultHandler", "HttpSocketHandler Headers: ");
                for (String str2 : httpURLConnection.getRequestProperties().keySet()) {
                    if (str2 != null) {
                        for (String str3 : httpURLConnection.getRequestProperties().get(str2)) {
                            Log.m4654d("TMO-Agent:HttpDefaultHandler", str2 + ": " + str3);
                        }
                    }
                }
                Log.m4654d("TMO-Agent:HttpDefaultHandler", "Preparing output stream...");
                OutputStream outputStream = httpURLConnection.getOutputStream();
                Log.m4654d("TMO-Agent:HttpDefaultHandler", "Writing JSON object: " + str);
                DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
                dataOutputStream.write(Util.m4859a(str.getBytes(Charset.forName(Utf8Charset.NAME))));
                dataOutputStream.flush();
                dataOutputStream.close();
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode == 200) {
                    InputStream inputStream = httpURLConnection.getInputStream();
                    StringBuilder sb = new StringBuilder();
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                    while (true) {
                        String readLine = bufferedReader.readLine();
                        if (readLine != null) {
                            sb.append(readLine);
                        } else {
                            inputStream.close();
                            String sb2 = sb.toString();
                            Log.m4654d("TMO-Agent:HttpDefaultHandler", "HTTP response string: \n" + sb2);
                            httpURLConnection.disconnect();
                            return sb2;
                        }
                    }
                } else {
                    Log.m4654d("TMO-Agent:HttpDefaultHandler", "HTTP connection error code: " + responseCode);
                    throw new SitServerCommunicationErrorException(SitErrorType.HTTP, responseCode);
                }
            } catch (IOException e) {
                Log.m4653d("TMO-Agent:HttpDefaultHandler", "Exception: ", e);
                throw new SitServerCommunicationErrorException(SitErrorType.IO_ERROR, e);
            }
        } catch (Throwable th) {
            httpURLConnection.disconnect();
            throw th;
        }
    }

    /* renamed from: c */
    public <T> T m4951c(BaseRequest baseRequest, Class<T> cls) throws SitServerCommunicationErrorException {
        return (T) m4950d(this.f14799b, baseRequest, cls);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ba  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> T m4950d(java.net.HttpURLConnection r5, com.tmobile.tmoid.helperlib.sit.http.BaseRequest r6, java.lang.Class<T> r7) throws com.tmobile.tmoid.helperlib.sit.SitServerCommunicationErrorException {
        /*
            r4 = this;
            r0 = r4
            r1 = r5
            r2 = r6
            java.lang.String r2 = r2.mo4892a()
            java.lang.String r0 = r0.m4952b(r1, r2)
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x00b2
            org.json.JSONArray r0 = new org.json.JSONArray     // Catch: JSONException -> 0x0079, IllegalAccessException -> 0x008c, InstantiationException -> 0x009f
            r5 = r0
            r0 = r5
            r1 = r6
            r0.<init>(r1)     // Catch: JSONException -> 0x0079, IllegalAccessException -> 0x008c, InstantiationException -> 0x009f
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: JSONException -> 0x0079, IllegalAccessException -> 0x008c, InstantiationException -> 0x009f
            r6 = r0
            r0 = r6
            r0.<init>()     // Catch: JSONException -> 0x0079, IllegalAccessException -> 0x008c, InstantiationException -> 0x009f
            r0 = 0
            r8 = r0
        L_0x0022:
            r0 = r8
            r1 = r5
            int r1 = r1.length()     // Catch: JSONException -> 0x0079, IllegalAccessException -> 0x008c, InstantiationException -> 0x009f
            if (r0 >= r1) goto L_0x003f
            r0 = r6
            r1 = r5
            r2 = r8
            org.json.JSONObject r1 = r1.getJSONObject(r2)     // Catch: JSONException -> 0x0079, IllegalAccessException -> 0x008c, InstantiationException -> 0x009f
            java.lang.String r1 = r1.toString()     // Catch: JSONException -> 0x0079, IllegalAccessException -> 0x008c, InstantiationException -> 0x009f
            boolean r0 = r0.add(r1)     // Catch: JSONException -> 0x0079, IllegalAccessException -> 0x008c, InstantiationException -> 0x009f
            int r8 = r8 + 1
            goto L_0x0022
        L_0x003f:
            java.lang.Class<com.tmobile.tmoid.helperlib.sit.http.MultiResponse> r0 = com.tmobile.tmoid.helperlib.sit.http.MultiResponse.class
            r1 = r7
            boolean r0 = r0.isAssignableFrom(r1)     // Catch: JSONException -> 0x0079, IllegalAccessException -> 0x008c, InstantiationException -> 0x009f
            if (r0 == 0) goto L_0x0059
            r0 = r7
            java.lang.Object r0 = r0.newInstance()     // Catch: JSONException -> 0x0079, IllegalAccessException -> 0x008c, InstantiationException -> 0x009f
            r5 = r0
            r0 = r5
            com.tmobile.tmoid.helperlib.sit.http.MultiResponse r0 = (com.tmobile.tmoid.helperlib.sit.http.MultiResponse) r0     // Catch: JSONException -> 0x0079, IllegalAccessException -> 0x008c, InstantiationException -> 0x009f
            r1 = r6
            r0.mo4881c(r1)     // Catch: JSONException -> 0x0079, IllegalAccessException -> 0x008c, InstantiationException -> 0x009f
            goto L_0x00b4
        L_0x0059:
            r0 = r6
            int r0 = r0.size()     // Catch: JSONException -> 0x0079, IllegalAccessException -> 0x008c, InstantiationException -> 0x009f
            if (r0 <= 0) goto L_0x00b2
            com.google.gson.Gson r0 = new com.google.gson.Gson     // Catch: JSONException -> 0x0079, IllegalAccessException -> 0x008c, InstantiationException -> 0x009f
            r5 = r0
            r0 = r5
            r0.<init>()     // Catch: JSONException -> 0x0079, IllegalAccessException -> 0x008c, InstantiationException -> 0x009f
            r0 = r5
            r1 = r6
            r2 = 0
            java.lang.Object r1 = r1.get(r2)     // Catch: JSONException -> 0x0079, IllegalAccessException -> 0x008c, InstantiationException -> 0x009f
            java.lang.String r1 = (java.lang.String) r1     // Catch: JSONException -> 0x0079, IllegalAccessException -> 0x008c, InstantiationException -> 0x009f
            r2 = r7
            java.lang.Object r0 = r0.m8426i(r1, r2)     // Catch: JSONException -> 0x0079, IllegalAccessException -> 0x008c, InstantiationException -> 0x009f
            r5 = r0
            goto L_0x00b4
        L_0x0079:
            r5 = move-exception
            java.lang.String r0 = "TMO-Agent:HttpDefaultHandler"
            java.lang.String r1 = "request failed with exception: "
            r2 = r5
            com.tmobile.tmoid.helperlib.util.Log.m4653d(r0, r1, r2)
            com.tmobile.tmoid.helperlib.sit.SitServerCommunicationErrorException r0 = new com.tmobile.tmoid.helperlib.sit.SitServerCommunicationErrorException
            r1 = r0
            r2 = r5
            r1.<init>(r2)
            throw r0
        L_0x008c:
            r5 = move-exception
            java.lang.String r0 = "TMO-Agent:HttpDefaultHandler"
            java.lang.String r1 = "request failed with exception: "
            r2 = r5
            com.tmobile.tmoid.helperlib.util.Log.m4653d(r0, r1, r2)
            com.tmobile.tmoid.helperlib.sit.SitServerCommunicationErrorException r0 = new com.tmobile.tmoid.helperlib.sit.SitServerCommunicationErrorException
            r1 = r0
            r2 = r5
            r1.<init>(r2)
            throw r0
        L_0x009f:
            r5 = move-exception
            java.lang.String r0 = "TMO-Agent:HttpDefaultHandler"
            java.lang.String r1 = "request failed with exception: "
            r2 = r5
            com.tmobile.tmoid.helperlib.util.Log.m4653d(r0, r1, r2)
            com.tmobile.tmoid.helperlib.sit.SitServerCommunicationErrorException r0 = new com.tmobile.tmoid.helperlib.sit.SitServerCommunicationErrorException
            r1 = r0
            r2 = r5
            r1.<init>(r2)
            throw r0
        L_0x00b2:
            r0 = 0
            r5 = r0
        L_0x00b4:
            r0 = r5
            if (r0 == 0) goto L_0x00ba
            r0 = r5
            return r0
        L_0x00ba:
            com.tmobile.tmoid.helperlib.sit.SitServerCommunicationErrorException r0 = new com.tmobile.tmoid.helperlib.sit.SitServerCommunicationErrorException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.tmoid.helperlib.sit.http.HttpDefaultHandler.m4950d(java.net.HttpURLConnection, com.tmobile.tmoid.helperlib.sit.http.BaseRequest, java.lang.Class):java.lang.Object");
    }
}
