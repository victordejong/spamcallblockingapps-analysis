package com.huawei.updatesdk.p097a.p098a.p099b;

import android.content.Context;
import com.huawei.secure.android.common.ssl.SecureSSLSocketFactoryNew;
import com.huawei.secure.android.common.ssl.hostname.StrictHostnameVerifier;
import com.huawei.updatesdk.p097a.p098a.p100c.p101a.p102a.C2515a;
import com.huawei.updatesdk.p097a.p098a.p103d.AbstractC2519d;
import com.huawei.updatesdk.p097a.p098a.p103d.C2517b;
import com.mopub.mobileads.AdData;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.zip.GZIPOutputStream;
import javax.net.ssl.HttpsURLConnection;
/* renamed from: com.huawei.updatesdk.a.a.b.b */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/a/a/b/b.class */
public class C2513b {

    /* renamed from: a */
    private HttpURLConnection f8180a = null;

    /* renamed from: com.huawei.updatesdk.a.a.b.b$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/a/a/b/b$a.class */
    public static class C2514a {

        /* renamed from: a */
        private String f8181a;

        /* renamed from: b */
        private int f8182b;

        /* renamed from: a */
        public int m36853a() {
            return this.f8182b;
        }

        /* renamed from: b */
        public String m36850b() {
            return this.f8181a;
        }
    }

    /* renamed from: a */
    public static HttpURLConnection m36856a(String str, Context context) {
        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL(str).openConnection();
        httpsURLConnection.setSSLSocketFactory(SecureSSLSocketFactoryNew.getInstance(context));
        httpsURLConnection.setHostnameVerifier(new StrictHostnameVerifier());
        return httpsURLConnection;
    }

    /* renamed from: a */
    private byte[] m36854a(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream;
        Throwable th;
        DataOutputStream dataOutputStream;
        IOException e;
        ByteArrayOutputStream byteArrayOutputStream2;
        ByteArrayOutputStream byteArrayOutputStream3 = null;
        try {
            try {
                try {
                    byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        dataOutputStream = new DataOutputStream(new GZIPOutputStream(byteArrayOutputStream, bArr.length));
                    } catch (IOException e2) {
                        dataOutputStream = null;
                        byteArrayOutputStream2 = byteArrayOutputStream;
                        e = e2;
                    }
                } catch (IOException e3) {
                    C2515a.m36848a("HttpsUtil", "gzip error!", e3);
                    byteArrayOutputStream = byteArrayOutputStream3;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e4) {
            e = e4;
            byteArrayOutputStream2 = null;
            dataOutputStream = null;
        }
        try {
            dataOutputStream.write(bArr, 0, bArr.length);
            dataOutputStream.flush();
            byteArrayOutputStream3 = byteArrayOutputStream;
            dataOutputStream.close();
        } catch (IOException e5) {
            byteArrayOutputStream2 = byteArrayOutputStream;
            e = e5;
            byteArrayOutputStream3 = dataOutputStream;
            C2515a.m36848a("HttpsUtil", "gzip error!", e);
            byteArrayOutputStream = byteArrayOutputStream2;
            if (dataOutputStream != null) {
                byteArrayOutputStream3 = byteArrayOutputStream2;
                dataOutputStream.close();
                byteArrayOutputStream = byteArrayOutputStream2;
            }
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th3) {
            th = th3;
            byteArrayOutputStream3 = dataOutputStream;
            if (byteArrayOutputStream3 != null) {
                try {
                    byteArrayOutputStream3.close();
                } catch (IOException e6) {
                    C2515a.m36848a("HttpsUtil", "gzip error!", e6);
                }
            }
            throw th;
        }
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: a */
    public C2514a m36855a(String str, String str2, String str3, String str4, Context context) {
        BufferedInputStream bufferedInputStream;
        Throwable th;
        DataOutputStream dataOutputStream;
        C2514a c2514a = new C2514a();
        try {
            HttpURLConnection m36856a = m36856a(str, context);
            this.f8180a = m36856a;
            m36856a.setDoInput(true);
            this.f8180a.setDoOutput(true);
            this.f8180a.setUseCaches(false);
            this.f8180a.setConnectTimeout(AdData.DEFAULT_DURATION_FOR_REWARDED_IMAGE_CLOSE_BUTTON_MILLIS);
            this.f8180a.setReadTimeout(10000);
            this.f8180a.setRequestMethod("POST");
            this.f8180a.setRequestProperty("Content-Type", "application/x-gzip");
            this.f8180a.setRequestProperty("Content-Encoding", "gzip");
            this.f8180a.setRequestProperty("Connection", "Keep-Alive");
            this.f8180a.setRequestProperty("User-Agent", str4);
            DataOutputStream dataOutputStream2 = new DataOutputStream(this.f8180a.getOutputStream());
            BufferedInputStream bufferedInputStream2 = null;
            try {
                dataOutputStream2.write(m36854a(str2.getBytes(str3)));
                dataOutputStream2.flush();
                int responseCode = this.f8180a.getResponseCode();
                c2514a.f8182b = responseCode;
                BufferedInputStream bufferedInputStream3 = responseCode == 200 ? new BufferedInputStream(this.f8180a.getInputStream()) : new BufferedInputStream(this.f8180a.getErrorStream());
                C2517b c2517b = new C2517b();
                byte[] m36860a = C2512a.m36858b().m36860a();
                while (true) {
                    int read = bufferedInputStream3.read(m36860a);
                    if (read == -1) {
                        break;
                    }
                    c2517b.m36840a(m36860a, read);
                }
                C2512a.m36858b().m36859a(m36860a);
                bufferedInputStream2 = bufferedInputStream3;
                c2514a.f8181a = c2517b.m36842a();
                HttpURLConnection httpURLConnection = this.f8180a;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                AbstractC2519d.m36838a(dataOutputStream2);
                AbstractC2519d.m36838a(bufferedInputStream3);
                return c2514a;
            } catch (Throwable th2) {
                th = th2;
                bufferedInputStream = bufferedInputStream2;
                dataOutputStream = dataOutputStream2;
                HttpURLConnection httpURLConnection2 = this.f8180a;
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
                AbstractC2519d.m36838a(dataOutputStream);
                AbstractC2519d.m36838a(bufferedInputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            dataOutputStream = null;
            bufferedInputStream = null;
        }
    }

    /* renamed from: a */
    public void m36857a() {
        HttpURLConnection httpURLConnection = this.f8180a;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }
}
