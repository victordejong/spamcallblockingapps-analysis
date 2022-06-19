package com.yanzhenjie.nohttp.ssl;

import android.os.Build;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/ssl/SSLUtils.class */
public class SSLUtils {
    private static final HostnameVerifier HOSTNAME_VERIFIER = new HostnameVerifier() { // from class: com.yanzhenjie.nohttp.ssl.SSLUtils.1
        @Override // javax.net.ssl.HostnameVerifier
        public boolean verify(String str, SSLSession sSLSession) {
            return true;
        }
    };

    public static HostnameVerifier defaultHostnameVerifier() {
        return HOSTNAME_VERIFIER;
    }

    public static SSLSocketFactory defaultSSLSocketFactory() {
        return new TLSSocketFactory();
    }

    public static SSLSocketFactory fixSSLLowerThanLollipop(SSLSocketFactory sSLSocketFactory) {
        TLSSocketFactory tLSSocketFactory = sSLSocketFactory;
        if (Build.VERSION.SDK_INT < 21) {
            tLSSocketFactory = sSLSocketFactory;
            if (!(sSLSocketFactory instanceof TLSSocketFactory)) {
                tLSSocketFactory = new TLSSocketFactory(sSLSocketFactory);
            }
        }
        return tLSSocketFactory;
    }
}
