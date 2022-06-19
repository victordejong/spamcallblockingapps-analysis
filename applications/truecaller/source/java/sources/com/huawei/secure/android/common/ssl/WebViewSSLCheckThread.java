package com.huawei.secure.android.common.ssl;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.SslErrorHandler;
import com.huawei.secure.android.common.ssl.hostname.StrictHostnameVerifier;
import com.huawei.secure.android.common.ssl.util.C2493g;
import java.io.IOException;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import org.apache.http.conn.ssl.X509HostnameVerifier;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
import u3.e0;
import u3.g0;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/ssl/WebViewSSLCheckThread.class */
public class WebViewSSLCheckThread extends Thread {

    /* renamed from: i */
    private static final String f8049i = WebViewSSLCheckThread.class.getSimpleName();

    /* renamed from: a */
    private SSLSocketFactory f8050a;

    /* renamed from: b */
    private HostnameVerifier f8051b;

    /* renamed from: c */
    private org.apache.http.conn.ssl.SSLSocketFactory f8052c;

    /* renamed from: d */
    private X509HostnameVerifier f8053d;

    /* renamed from: e */
    private SslErrorHandler f8054e;

    /* renamed from: f */
    private String f8055f;

    /* renamed from: g */
    private Callback f8056g;

    /* renamed from: h */
    private Context f8057h;

    /* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/ssl/WebViewSSLCheckThread$Callback.class */
    public interface Callback {
        void onCancel(Context context, String str);

        void onProceed(Context context, String str);
    }

    public WebViewSSLCheckThread() {
    }

    public WebViewSSLCheckThread(SslErrorHandler sslErrorHandler, String str, Context context) throws CertificateException, NoSuchAlgorithmException, IOException, KeyManagementException, KeyStoreException, IllegalAccessException {
        setSslErrorHandler(sslErrorHandler);
        setUrl(str);
        setContext(context);
        setSslSocketFactory(new SecureSSLSocketFactoryNew(new C2484c(context)));
        setHostnameVerifier(new StrictHostnameVerifier());
        try {
            setApacheSSLSocketFactory(new SecureApacheSSLSocketFactory((KeyStore) null, new C2484c(context)));
        } catch (UnrecoverableKeyException e) {
            String str2 = f8049i;
            StringBuilder m8728C = C22128a.m8728C("WebViewSSLCheckThread: UnrecoverableKeyException : ");
            m8728C.append(e.getMessage());
            C2493g.m36956b(str2, m8728C.toString());
        }
        setApacheHostnameVerifier(SecureApacheSSLSocketFactory.STRICT_HOSTNAME_VERIFIER);
    }

    @Deprecated
    public WebViewSSLCheckThread(SslErrorHandler sslErrorHandler, String str, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier) {
        setSslErrorHandler(sslErrorHandler);
        setUrl(str);
        setSslSocketFactory(sSLSocketFactory);
        setHostnameVerifier(hostnameVerifier);
    }

    @Deprecated
    public WebViewSSLCheckThread(SslErrorHandler sslErrorHandler, String str, org.apache.http.conn.ssl.SSLSocketFactory sSLSocketFactory, X509HostnameVerifier x509HostnameVerifier) {
        setSslErrorHandler(sslErrorHandler);
        setUrl(str);
        setApacheSSLSocketFactory(sSLSocketFactory);
        setApacheHostnameVerifier(x509HostnameVerifier);
    }

    @Deprecated
    public WebViewSSLCheckThread(SslErrorHandler sslErrorHandler, String str, org.apache.http.conn.ssl.SSLSocketFactory sSLSocketFactory, X509HostnameVerifier x509HostnameVerifier, Callback callback, Context context) {
        this.f8054e = sslErrorHandler;
        this.f8055f = str;
        this.f8052c = sSLSocketFactory;
        this.f8053d = x509HostnameVerifier;
        this.f8056g = callback;
        this.f8057h = context;
    }

    /* renamed from: b */
    private void m37021b() {
        String str = f8049i;
        C2493g.m36955c(str, "callbackCancel: ");
        Callback callback = this.f8056g;
        if (callback != null) {
            callback.onCancel(this.f8057h, this.f8055f);
        } else if (this.f8054e == null) {
        } else {
            C2493g.m36955c(str, "callbackCancel 2: ");
            this.f8054e.cancel();
        }
    }

    /* renamed from: c */
    private void m37020c() {
        C2493g.m36955c(f8049i, "callbackProceed: ");
        Callback callback = this.f8056g;
        if (callback != null) {
            callback.onProceed(this.f8057h, this.f8055f);
            return;
        }
        SslErrorHandler sslErrorHandler = this.f8054e;
        if (sslErrorHandler == null) {
            return;
        }
        sslErrorHandler.proceed();
    }

    public static void checkServerCertificateWithOK(SslErrorHandler sslErrorHandler, String str, Context context) {
        checkServerCertificateWithOK(sslErrorHandler, str, context, null);
    }

    public static void checkServerCertificateWithOK(SslErrorHandler sslErrorHandler, String str, Context context, Callback callback) {
        if (sslErrorHandler == null || TextUtils.isEmpty(str) || context == null) {
            C2493g.m36956b(f8049i, "checkServerCertificateWithOK: handler or url or context is null");
            return;
        }
        e0.a aVar = new e0.a();
        try {
            SecureSSLSocketFactoryNew secureSSLSocketFactoryNew = new SecureSSLSocketFactoryNew(new C2484c(context));
            secureSSLSocketFactoryNew.setContext(context);
            aVar.c(secureSSLSocketFactoryNew, new C2484c(context));
            StrictHostnameVerifier strictHostnameVerifier = new StrictHostnameVerifier();
            l.f(strictHostnameVerifier, "hostnameVerifier");
            if (!l.a(strictHostnameVerifier, aVar.u)) {
                aVar.D = null;
            }
            aVar.u = strictHostnameVerifier;
            g0.a aVar2 = new g0.a();
            aVar2.i(str);
            new e0(aVar).a(aVar2.b()).M1(new a(callback, context, str, sslErrorHandler));
        } catch (Exception e) {
            String str2 = f8049i;
            StringBuilder m8728C = C22128a.m8728C("checkServerCertificateWithOK: exception : ");
            m8728C.append(e.getMessage());
            C2493g.m36956b(str2, m8728C.toString());
            sslErrorHandler.cancel();
        }
    }

    public X509HostnameVerifier getApacheHostnameVerifier() {
        return this.f8053d;
    }

    public org.apache.http.conn.ssl.SSLSocketFactory getApacheSSLSocketFactory() {
        return this.f8052c;
    }

    public Callback getCallback() {
        return this.f8056g;
    }

    public Context getContext() {
        return this.f8057h;
    }

    public HostnameVerifier getHostnameVerifier() {
        return this.f8051b;
    }

    public SslErrorHandler getSslErrorHandler() {
        return this.f8054e;
    }

    public SSLSocketFactory getSslSocketFactory() {
        return this.f8050a;
    }

    public String getUrl() {
        return this.f8055f;
    }

    /* JADX WARN: Removed duplicated region for block: B:82:0x0214  */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 543
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.secure.android.common.ssl.WebViewSSLCheckThread.run():void");
    }

    public void setApacheHostnameVerifier(X509HostnameVerifier x509HostnameVerifier) {
        this.f8053d = x509HostnameVerifier;
    }

    public void setApacheSSLSocketFactory(org.apache.http.conn.ssl.SSLSocketFactory sSLSocketFactory) {
        this.f8052c = sSLSocketFactory;
    }

    public void setCallback(Callback callback) {
        this.f8056g = callback;
    }

    public void setContext(Context context) {
        this.f8057h = context;
    }

    public void setHostnameVerifier(HostnameVerifier hostnameVerifier) {
        this.f8051b = hostnameVerifier;
    }

    public void setSslErrorHandler(SslErrorHandler sslErrorHandler) {
        this.f8054e = sslErrorHandler;
    }

    public void setSslSocketFactory(SSLSocketFactory sSLSocketFactory) {
        this.f8050a = sSLSocketFactory;
    }

    public void setUrl(String str) {
        this.f8055f = str;
    }
}
