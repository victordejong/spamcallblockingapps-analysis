package com.huawei.hms.opendevice;

import android.content.Context;
import android.text.TextUtils;
import com.amazon.device.ads.MraidCloseCommand;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.secure.android.common.ssl.SecureSSLSocketFactory;
import com.huawei.secure.android.common.util.IOUtil;
import com.tenor.android.core.constant.StringConstant;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.security.GeneralSecurityException;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
/* renamed from: com.huawei.hms.opendevice.d */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/opendevice/d.class */
public abstract class AbstractC2406d {

    /* renamed from: com.huawei.hms.opendevice.d$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/opendevice/d$a.class */
    public enum EnumC2407a {
        GET("GET"),
        POST("POST");
        

        /* renamed from: d */
        public String f7635d;

        EnumC2407a(String str) {
            this.f7635d = str;
        }

        /* renamed from: a */
        public String m37427a() {
            return this.f7635d;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 15, insn: 0x032e: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r15 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:111:0x032e */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r6v19, types: [java.io.OutputStream, java.io.FilterOutputStream, java.io.BufferedOutputStream] */
    /* renamed from: a */
    public static String m37430a(Context context, String str, String str2, Map<String, String> map) {
        InputStream inputStream;
        Throwable th;
        InputStream inputStream2;
        Map<String, String> map2;
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2;
        HttpURLConnection httpURLConnection3;
        BufferedInputStream bufferedInputStream;
        OutputStream outputStream;
        BufferedInputStream bufferedInputStream2;
        OutputStream outputStream2;
        BufferedInputStream bufferedInputStream3;
        OutputStream outputStream3;
        OutputStream outputStream4;
        BufferedInputStream bufferedInputStream4;
        OutputStream outputStream5;
        OutputStream outputStream6;
        BufferedInputStream bufferedInputStream5;
        OutputStream outputStream7;
        ?? bufferedOutputStream;
        int i;
        int i2;
        int i3;
        if (str2 == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        int i4 = -1;
        try {
            try {
                httpURLConnection = m37429a(context, str, map, EnumC2407a.POST.m37427a());
                if (httpURLConnection == null) {
                    IOUtil.closeSecure((OutputStream) null);
                    IOUtil.closeSecure((InputStream) null);
                    IOUtil.closeSecure((InputStream) null);
                    AbstractC2421s.m37383a(httpURLConnection);
                    HMSLog.m37193i("PushHttpClient", "close connection");
                    return null;
                }
                try {
                    bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
                    i = -1;
                    i2 = -1;
                    i3 = -1;
                } catch (IOException e) {
                    outputStream3 = null;
                    bufferedInputStream3 = null;
                    httpURLConnection3 = httpURLConnection;
                    bufferedInputStream2 = bufferedInputStream3;
                    outputStream2 = outputStream3;
                    bufferedInputStream = bufferedInputStream3;
                    HttpURLConnection httpURLConnection4 = httpURLConnection3;
                    StringBuilder sb = new StringBuilder();
                    HttpURLConnection httpURLConnection5 = httpURLConnection3;
                    sb.append("http execute encounter IOException - http code:");
                    HttpURLConnection httpURLConnection6 = httpURLConnection3;
                    sb.append(i4);
                    HttpURLConnection httpURLConnection7 = httpURLConnection3;
                    HMSLog.m37192w("PushHttpClient", sb.toString());
                    outputStream = outputStream2;
                    IOUtil.closeSecure(outputStream);
                    IOUtil.closeSecure(bufferedInputStream);
                    IOUtil.closeSecure((InputStream) bufferedInputStream2);
                    AbstractC2421s.m37383a(httpURLConnection3);
                    HMSLog.m37193i("PushHttpClient", "close connection");
                    return null;
                } catch (RuntimeException e2) {
                    outputStream5 = null;
                    bufferedInputStream4 = null;
                    httpURLConnection3 = httpURLConnection;
                    bufferedInputStream2 = bufferedInputStream4;
                    outputStream4 = outputStream5;
                    bufferedInputStream = bufferedInputStream4;
                    HttpURLConnection httpURLConnection8 = httpURLConnection3;
                    StringBuilder sb2 = new StringBuilder();
                    HttpURLConnection httpURLConnection9 = httpURLConnection3;
                    sb2.append("http execute encounter RuntimeException - http code:");
                    HttpURLConnection httpURLConnection10 = httpURLConnection3;
                    sb2.append(i4);
                    HttpURLConnection httpURLConnection11 = httpURLConnection3;
                    HMSLog.m37192w("PushHttpClient", sb2.toString());
                    outputStream = outputStream4;
                    IOUtil.closeSecure(outputStream);
                    IOUtil.closeSecure(bufferedInputStream);
                    IOUtil.closeSecure((InputStream) bufferedInputStream2);
                    AbstractC2421s.m37383a(httpURLConnection3);
                    HMSLog.m37193i("PushHttpClient", "close connection");
                    return null;
                } catch (Exception e3) {
                    outputStream7 = null;
                    bufferedInputStream5 = null;
                    httpURLConnection3 = httpURLConnection;
                    bufferedInputStream2 = bufferedInputStream5;
                    outputStream6 = outputStream7;
                    bufferedInputStream = bufferedInputStream5;
                    HttpURLConnection httpURLConnection12 = httpURLConnection3;
                    StringBuilder sb3 = new StringBuilder();
                    HttpURLConnection httpURLConnection13 = httpURLConnection3;
                    sb3.append("http execute encounter unknown exception - http code:");
                    HttpURLConnection httpURLConnection14 = httpURLConnection3;
                    sb3.append(i4);
                    HttpURLConnection httpURLConnection15 = httpURLConnection3;
                    HMSLog.m37192w("PushHttpClient", sb3.toString());
                    outputStream = outputStream6;
                    IOUtil.closeSecure(outputStream);
                    IOUtil.closeSecure(bufferedInputStream);
                    IOUtil.closeSecure((InputStream) bufferedInputStream2);
                    AbstractC2421s.m37383a(httpURLConnection3);
                    HMSLog.m37193i("PushHttpClient", "close connection");
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    inputStream2 = null;
                    inputStream = null;
                    map2 = null;
                }
                try {
                    bufferedOutputStream.write(str2.getBytes(StringConstant.UTF8));
                    bufferedOutputStream.flush();
                    i4 = httpURLConnection.getResponseCode();
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("http post response code: ");
                    sb4.append(i4);
                    HMSLog.m37198d("PushHttpClient", sb4.toString());
                    if (i4 >= 400) {
                        i = i4;
                        i2 = i4;
                        i3 = i4;
                        inputStream2 = httpURLConnection.getErrorStream();
                    } else {
                        i = i4;
                        i2 = i4;
                        i3 = i4;
                        inputStream2 = httpURLConnection.getInputStream();
                    }
                } catch (IOException e4) {
                    bufferedInputStream3 = null;
                    i4 = i3;
                    httpURLConnection3 = httpURLConnection;
                    outputStream3 = bufferedOutputStream;
                    bufferedInputStream2 = bufferedInputStream3;
                    outputStream2 = outputStream3;
                    bufferedInputStream = bufferedInputStream3;
                    HttpURLConnection httpURLConnection42 = httpURLConnection3;
                    StringBuilder sb5 = new StringBuilder();
                    HttpURLConnection httpURLConnection52 = httpURLConnection3;
                    sb5.append("http execute encounter IOException - http code:");
                    HttpURLConnection httpURLConnection62 = httpURLConnection3;
                    sb5.append(i4);
                    HttpURLConnection httpURLConnection72 = httpURLConnection3;
                    HMSLog.m37192w("PushHttpClient", sb5.toString());
                    outputStream = outputStream2;
                    IOUtil.closeSecure(outputStream);
                    IOUtil.closeSecure(bufferedInputStream);
                    IOUtil.closeSecure((InputStream) bufferedInputStream2);
                    AbstractC2421s.m37383a(httpURLConnection3);
                    HMSLog.m37193i("PushHttpClient", "close connection");
                    return null;
                } catch (RuntimeException e5) {
                    bufferedInputStream4 = null;
                    i4 = i2;
                    httpURLConnection3 = httpURLConnection;
                    outputStream5 = bufferedOutputStream;
                    bufferedInputStream2 = bufferedInputStream4;
                    outputStream4 = outputStream5;
                    bufferedInputStream = bufferedInputStream4;
                    HttpURLConnection httpURLConnection82 = httpURLConnection3;
                    StringBuilder sb22 = new StringBuilder();
                    HttpURLConnection httpURLConnection92 = httpURLConnection3;
                    sb22.append("http execute encounter RuntimeException - http code:");
                    HttpURLConnection httpURLConnection102 = httpURLConnection3;
                    sb22.append(i4);
                    HttpURLConnection httpURLConnection112 = httpURLConnection3;
                    HMSLog.m37192w("PushHttpClient", sb22.toString());
                    outputStream = outputStream4;
                    IOUtil.closeSecure(outputStream);
                    IOUtil.closeSecure(bufferedInputStream);
                    IOUtil.closeSecure((InputStream) bufferedInputStream2);
                    AbstractC2421s.m37383a(httpURLConnection3);
                    HMSLog.m37193i("PushHttpClient", "close connection");
                    return null;
                } catch (Exception e6) {
                    bufferedInputStream5 = null;
                    i4 = i;
                    httpURLConnection3 = httpURLConnection;
                    outputStream7 = bufferedOutputStream;
                    bufferedInputStream2 = bufferedInputStream5;
                    outputStream6 = outputStream7;
                    bufferedInputStream = bufferedInputStream5;
                    HttpURLConnection httpURLConnection122 = httpURLConnection3;
                    StringBuilder sb32 = new StringBuilder();
                    HttpURLConnection httpURLConnection132 = httpURLConnection3;
                    sb32.append("http execute encounter unknown exception - http code:");
                    HttpURLConnection httpURLConnection142 = httpURLConnection3;
                    sb32.append(i4);
                    HttpURLConnection httpURLConnection152 = httpURLConnection3;
                    HMSLog.m37192w("PushHttpClient", sb32.toString());
                    outputStream = outputStream6;
                    IOUtil.closeSecure(outputStream);
                    IOUtil.closeSecure(bufferedInputStream);
                    IOUtil.closeSecure((InputStream) bufferedInputStream2);
                    AbstractC2421s.m37383a(httpURLConnection3);
                    HMSLog.m37193i("PushHttpClient", "close connection");
                    return null;
                } catch (Throwable th3) {
                    th = th3;
                    inputStream = null;
                    inputStream2 = null;
                    map2 = bufferedOutputStream;
                }
                try {
                    BufferedInputStream bufferedInputStream6 = new BufferedInputStream(inputStream2);
                    try {
                        String m37385a = AbstractC2421s.m37385a((InputStream) bufferedInputStream6);
                        IOUtil.closeSecure((OutputStream) bufferedOutputStream);
                        IOUtil.closeSecure(inputStream2);
                        IOUtil.closeSecure((InputStream) bufferedInputStream6);
                        AbstractC2421s.m37383a(httpURLConnection);
                        HMSLog.m37193i("PushHttpClient", "close connection");
                        return m37385a;
                    } catch (IOException e7) {
                        httpURLConnection3 = httpURLConnection;
                        bufferedInputStream2 = bufferedInputStream6;
                        outputStream2 = bufferedOutputStream;
                        bufferedInputStream = inputStream2;
                        HttpURLConnection httpURLConnection422 = httpURLConnection3;
                        StringBuilder sb52 = new StringBuilder();
                        HttpURLConnection httpURLConnection522 = httpURLConnection3;
                        sb52.append("http execute encounter IOException - http code:");
                        HttpURLConnection httpURLConnection622 = httpURLConnection3;
                        sb52.append(i4);
                        HttpURLConnection httpURLConnection722 = httpURLConnection3;
                        HMSLog.m37192w("PushHttpClient", sb52.toString());
                        outputStream = outputStream2;
                        IOUtil.closeSecure(outputStream);
                        IOUtil.closeSecure(bufferedInputStream);
                        IOUtil.closeSecure((InputStream) bufferedInputStream2);
                        AbstractC2421s.m37383a(httpURLConnection3);
                        HMSLog.m37193i("PushHttpClient", "close connection");
                        return null;
                    } catch (RuntimeException e8) {
                        httpURLConnection3 = httpURLConnection;
                        bufferedInputStream2 = bufferedInputStream6;
                        outputStream4 = bufferedOutputStream;
                        bufferedInputStream = inputStream2;
                        HttpURLConnection httpURLConnection822 = httpURLConnection3;
                        StringBuilder sb222 = new StringBuilder();
                        HttpURLConnection httpURLConnection922 = httpURLConnection3;
                        sb222.append("http execute encounter RuntimeException - http code:");
                        HttpURLConnection httpURLConnection1022 = httpURLConnection3;
                        sb222.append(i4);
                        HttpURLConnection httpURLConnection1122 = httpURLConnection3;
                        HMSLog.m37192w("PushHttpClient", sb222.toString());
                        outputStream = outputStream4;
                        IOUtil.closeSecure(outputStream);
                        IOUtil.closeSecure(bufferedInputStream);
                        IOUtil.closeSecure((InputStream) bufferedInputStream2);
                        AbstractC2421s.m37383a(httpURLConnection3);
                        HMSLog.m37193i("PushHttpClient", "close connection");
                        return null;
                    } catch (Exception e9) {
                        httpURLConnection3 = httpURLConnection;
                        bufferedInputStream2 = bufferedInputStream6;
                        outputStream6 = bufferedOutputStream;
                        bufferedInputStream = inputStream2;
                        HttpURLConnection httpURLConnection1222 = httpURLConnection3;
                        StringBuilder sb322 = new StringBuilder();
                        HttpURLConnection httpURLConnection1322 = httpURLConnection3;
                        sb322.append("http execute encounter unknown exception - http code:");
                        HttpURLConnection httpURLConnection1422 = httpURLConnection3;
                        sb322.append(i4);
                        HttpURLConnection httpURLConnection1522 = httpURLConnection3;
                        HMSLog.m37192w("PushHttpClient", sb322.toString());
                        outputStream = outputStream6;
                        IOUtil.closeSecure(outputStream);
                        IOUtil.closeSecure(bufferedInputStream);
                        IOUtil.closeSecure((InputStream) bufferedInputStream2);
                        AbstractC2421s.m37383a(httpURLConnection3);
                        HMSLog.m37193i("PushHttpClient", "close connection");
                        return null;
                    }
                } catch (IOException e10) {
                    httpURLConnection3 = httpURLConnection;
                    bufferedInputStream2 = null;
                    outputStream2 = bufferedOutputStream;
                    bufferedInputStream = inputStream2;
                } catch (RuntimeException e11) {
                    httpURLConnection3 = httpURLConnection;
                    bufferedInputStream2 = null;
                    outputStream4 = bufferedOutputStream;
                    bufferedInputStream = inputStream2;
                } catch (Exception e12) {
                    httpURLConnection3 = httpURLConnection;
                    bufferedInputStream2 = null;
                    outputStream6 = bufferedOutputStream;
                    bufferedInputStream = inputStream2;
                } catch (Throwable th4) {
                    th = th4;
                    inputStream = null;
                    map2 = bufferedOutputStream;
                    IOUtil.closeSecure((OutputStream) map2);
                    IOUtil.closeSecure(inputStream2);
                    IOUtil.closeSecure(inputStream);
                    AbstractC2421s.m37383a(httpURLConnection);
                    HMSLog.m37193i("PushHttpClient", "close connection");
                    throw th;
                }
            } catch (Throwable th5) {
                httpURLConnection = httpURLConnection2;
                inputStream2 = null;
                map2 = map;
                th = th5;
            }
        } catch (IOException e13) {
            httpURLConnection = null;
        } catch (RuntimeException e14) {
            httpURLConnection = null;
        } catch (Exception e15) {
            httpURLConnection = null;
        } catch (Throwable th6) {
            th = th6;
            map2 = null;
            inputStream2 = null;
            inputStream = null;
            httpURLConnection = null;
        }
    }

    /* renamed from: a */
    public static HttpURLConnection m37429a(Context context, String str, Map<String, String> map, String str2) throws Exception {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        m37428a(context, httpURLConnection);
        httpURLConnection.setRequestMethod(str2);
        httpURLConnection.setConnectTimeout(15000);
        httpURLConnection.setReadTimeout(15000);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setRequestProperty("Content-type", "application/json; charset=UTF-8");
        httpURLConnection.setRequestProperty("Connection", MraidCloseCommand.NAME);
        if (map != null && map.size() >= 1) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                if (key != null && !TextUtils.isEmpty(key)) {
                    httpURLConnection.setRequestProperty(key, URLEncoder.encode(entry.getValue() == null ? "" : entry.getValue(), StringConstant.UTF8));
                }
            }
        }
        return httpURLConnection;
    }

    /* renamed from: a */
    public static void m37428a(Context context, HttpURLConnection httpURLConnection) throws Exception {
        SecureSSLSocketFactory secureSSLSocketFactory;
        if (httpURLConnection instanceof HttpsURLConnection) {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) httpURLConnection;
            try {
                secureSSLSocketFactory = SecureSSLSocketFactory.getInstance(context);
            } catch (IOException e) {
                HMSLog.m37192w("PushHttpClient", "Get SocketFactory IO Exception.");
                secureSSLSocketFactory = null;
            } catch (IllegalAccessException e2) {
                HMSLog.m37192w("PushHttpClient", "Get SocketFactory Illegal Access Exception.");
                secureSSLSocketFactory = null;
            } catch (IllegalArgumentException e3) {
                HMSLog.m37192w("PushHttpClient", "Get SocketFactory Illegal Argument Exception.");
                secureSSLSocketFactory = null;
            } catch (KeyStoreException e4) {
                HMSLog.m37192w("PushHttpClient", "Get SocketFactory Key Store exception.");
                secureSSLSocketFactory = null;
            } catch (NoSuchAlgorithmException e5) {
                HMSLog.m37192w("PushHttpClient", "Get SocketFactory Algorithm Exception.");
                secureSSLSocketFactory = null;
            } catch (GeneralSecurityException e6) {
                HMSLog.m37192w("PushHttpClient", "Get SocketFactory General Security Exception.");
                secureSSLSocketFactory = null;
            }
            if (secureSSLSocketFactory == null) {
                throw new Exception("No ssl socket factory set.");
            }
            httpsURLConnection.setSSLSocketFactory(secureSSLSocketFactory);
            httpsURLConnection.setHostnameVerifier(SecureSSLSocketFactory.STRICT_HOSTNAME_VERIFIER);
        }
    }
}
