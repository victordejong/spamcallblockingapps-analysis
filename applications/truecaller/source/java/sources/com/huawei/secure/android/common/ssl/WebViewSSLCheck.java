package com.huawei.secure.android.common.ssl;

import android.content.Context;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import com.huawei.secure.android.common.ssl.WebViewSSLCheckThread;
import com.huawei.secure.android.common.ssl.util.C2488b;
import com.huawei.secure.android.common.ssl.util.C2493g;
import com.huawei.secure.android.common.ssl.util.C2496j;
import java.security.cert.X509Certificate;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/ssl/WebViewSSLCheck.class */
public class WebViewSSLCheck {

    /* renamed from: a */
    private static final String f8048a = "WebViewSSLCheck";

    public static void checkServerCertificateNew(SslErrorHandler sslErrorHandler, SslError sslError, Context context) {
        checkServerCertificateNew(sslErrorHandler, sslError, null, context, null);
    }

    public static void checkServerCertificateNew(SslErrorHandler sslErrorHandler, SslError sslError, String str, Context context, WebViewSSLCheckThread.Callback callback) {
        String str2 = f8048a;
        StringBuilder m8728C = C22128a.m8728C(" error type : ");
        m8728C.append(sslError.getPrimaryError());
        m8728C.append(" , cn is : ");
        m8728C.append(sslError.getCertificate().getIssuedTo().getCName());
        C2493g.m36955c(str2, m8728C.toString());
        X509Certificate m36989a = C2488b.m36989a(sslError.getCertificate());
        X509Certificate m36941a = new C2496j(context).m36941a();
        C2493g.m36958a(str2, "checkServerCertificateNew: error certificate is : " + m36989a);
        if (C2488b.m36985a(m36941a, m36989a)) {
            C2493g.m36955c(str2, "checkServerCertificateNew: proceed");
            if (callback != null) {
                callback.onProceed(context, str);
                return;
            } else {
                sslErrorHandler.proceed();
                return;
            }
        }
        C2493g.m36956b(str2, "checkServerCertificateNew: cancel");
        if (callback != null) {
            callback.onCancel(context, str);
        } else {
            sslErrorHandler.cancel();
        }
    }

    public static boolean checkServerCertificateNew(String str, SslError sslError) {
        return checkServerCertificateNew(C2488b.m36988a(str), sslError);
    }

    public static boolean checkServerCertificateNew(X509Certificate x509Certificate, SslError sslError) {
        return C2488b.m36985a(x509Certificate, C2488b.m36989a(sslError.getCertificate()));
    }
}
