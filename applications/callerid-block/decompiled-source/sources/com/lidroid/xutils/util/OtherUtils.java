package com.lidroid.xutils.util;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import com.lidroid.xutils.http.client.multipart.MIME;
import java.io.File;
import java.nio.charset.Charset;
import java.security.cert.X509Certificate;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.methods.HttpRequestBase;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/util/OtherUtils.class */
public class OtherUtils {
    private static final int STRING_BUFFER_LENGTH = 100;
    private static SSLSocketFactory sslSocketFactory;

    private OtherUtils() {
    }

    public static long getAvailableSpace(File file) {
        try {
            StatFs statFs = new StatFs(file.getPath());
            return statFs.getBlockSize() * statFs.getAvailableBlocks();
        } catch (Throwable th) {
            LogUtils.m2008e(th.getMessage(), th);
            return -1L;
        }
    }

    public static StackTraceElement getCallerStackTraceElement() {
        return Thread.currentThread().getStackTrace()[4];
    }

    public static Charset getCharsetFromHttpRequest(HttpRequestBase httpRequestBase) {
        String str;
        Charset charset = null;
        if (httpRequestBase == null) {
            return null;
        }
        Header firstHeader = httpRequestBase.getFirstHeader(MIME.CONTENT_TYPE);
        if (firstHeader != null) {
            for (HeaderElement headerElement : firstHeader.getElements()) {
                NameValuePair parameterByName = headerElement.getParameterByName("charset");
                if (parameterByName != null) {
                    str = parameterByName.getValue();
                    break;
                }
            }
        }
        str = null;
        boolean z = false;
        if (!TextUtils.isEmpty(str)) {
            try {
                z = Charset.isSupported(str);
            } catch (Throwable th) {
                z = false;
            }
        }
        if (z) {
            charset = Charset.forName(str);
        }
        return charset;
    }

    public static StackTraceElement getCurrentStackTraceElement() {
        return Thread.currentThread().getStackTrace()[3];
    }

    public static String getDiskCacheDir(Context context, String str) {
        File externalCacheDir;
        String path = (!"mounted".equals(Environment.getExternalStorageState()) || (externalCacheDir = context.getExternalCacheDir()) == null) ? null : externalCacheDir.getPath();
        String str2 = path;
        if (path == null) {
            File cacheDir = context.getCacheDir();
            str2 = path;
            if (cacheDir != null) {
                str2 = path;
                if (cacheDir.exists()) {
                    str2 = cacheDir.getPath();
                }
            }
        }
        return str2 + File.separator + str;
    }

    public static String getFileNameFromHttpResponse(HttpResponse httpResponse) {
        if (httpResponse == null) {
            return null;
        }
        Header firstHeader = httpResponse.getFirstHeader(MIME.CONTENT_DISPOSITION);
        String str = null;
        if (firstHeader != null) {
            HeaderElement[] elements = firstHeader.getElements();
            int length = elements.length;
            int i = 0;
            while (true) {
                str = null;
                if (i >= length) {
                    break;
                }
                NameValuePair parameterByName = elements[i].getParameterByName("filename");
                if (parameterByName != null) {
                    String value = parameterByName.getValue();
                    str = CharsetUtils.toCharset(value, "UTF-8", value.length());
                    break;
                }
                i++;
            }
        }
        return str;
    }

    public static String getSubString(String str, int i, int i2) {
        return new String(str.substring(i, i2));
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00be  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getUserAgent(android.content.Context r6) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lidroid.xutils.util.OtherUtils.getUserAgent(android.content.Context):java.lang.String");
    }

    public static boolean isSupportRange(HttpResponse httpResponse) {
        if (httpResponse == null) {
            return false;
        }
        Header firstHeader = httpResponse.getFirstHeader("Accept-Ranges");
        if (firstHeader != null) {
            return "bytes".equals(firstHeader.getValue());
        }
        Header firstHeader2 = httpResponse.getFirstHeader("Content-Range");
        boolean z = false;
        if (firstHeader2 != null) {
            String value = firstHeader2.getValue();
            z = false;
            if (value != null) {
                z = false;
                if (value.startsWith("bytes")) {
                    z = true;
                }
            }
        }
        return z;
    }

    public static long sizeOfString(String str, String str2) {
        long j = 0;
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        int length = str.length();
        if (length < 100) {
            return str.getBytes(str2).length;
        }
        int i = 0;
        while (i < length) {
            int i2 = i + 100;
            j += getSubString(str, i, i2 < length ? i2 : length).getBytes(str2).length;
            i = i2;
        }
        return j;
    }

    public static void trustAllHttpsURLConnection() {
        if (sslSocketFactory == null) {
            X509TrustManager x509TrustManager = new X509TrustManager() { // from class: com.lidroid.xutils.util.OtherUtils.1
                @Override // javax.net.ssl.X509TrustManager
                public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
                }

                @Override // javax.net.ssl.X509TrustManager
                public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
                }

                @Override // javax.net.ssl.X509TrustManager
                public X509Certificate[] getAcceptedIssuers() {
                    return null;
                }
            };
            try {
                SSLContext instance = SSLContext.getInstance("TLS");
                instance.init(null, new TrustManager[]{x509TrustManager}, null);
                sslSocketFactory = instance.getSocketFactory();
            } catch (Throwable th) {
                LogUtils.m2008e(th.getMessage(), th);
            }
        }
        SSLSocketFactory sSLSocketFactory = sslSocketFactory;
        if (sSLSocketFactory != null) {
            HttpsURLConnection.setDefaultSSLSocketFactory(sSLSocketFactory);
            HttpsURLConnection.setDefaultHostnameVerifier(org.apache.http.conn.ssl.SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
        }
    }
}
