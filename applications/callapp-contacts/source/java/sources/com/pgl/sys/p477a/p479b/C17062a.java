package com.pgl.sys.p477a.p479b;

import com.amazonaws.services.p101s3.util.Mimetypes;
import com.mopub.common.Constants;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
/* renamed from: com.pgl.sys.a.b.a */
/* loaded from: classes4-dex2jar.jar:com/pgl/sys/a/b/a.class */
public final class C17062a {

    /* renamed from: a */
    private static boolean f60587a = false;

    /* renamed from: a */
    public static String m5943a(String str, byte[] bArr) {
        URL url;
        try {
            url = new URL(str);
        } catch (Throwable th) {
            url = null;
        }
        return m5942a(url, bArr, Mimetypes.MIMETYPE_OCTET_STREAM);
    }

    /* renamed from: a */
    private static String m5942a(URL url, byte[] bArr, String str) {
        URLConnection openConnection;
        try {
            if (!Constants.HTTPS.equals(url.getProtocol().toLowerCase()) || !f60587a) {
                openConnection = url.openConnection();
            } else {
                HttpsURLConnection.setDefaultSSLSocketFactory(SSLContext.getInstance("TLS").getSocketFactory());
                openConnection = url.openConnection(Proxy.NO_PROXY);
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
            httpURLConnection.setRequestProperty("Content-Type", str);
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setReadTimeout(5000);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setRequestMethod("POST");
            OutputStream outputStream = httpURLConnection.getOutputStream();
            outputStream.write(bArr);
            outputStream.flush();
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode != 200) {
                return String.format("{\"code\":%d}", Integer.valueOf(responseCode));
            }
            InputStream inputStream = httpURLConnection.getInputStream();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "utf-8"));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    inputStream.close();
                    outputStream.close();
                    return sb.toString();
                }
                sb.append(readLine);
            }
        } catch (Throwable th) {
            return "";
        }
    }
}
