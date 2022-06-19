package org.xutils.http.app;

import java.security.cert.X509Certificate;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.xutils.common.util.KeyValue;
import org.xutils.common.util.LogUtil;
import org.xutils.http.RequestParams;
import org.xutils.http.annotation.HttpRequest;
/* loaded from: classes2-dex2jar.jar:org/xutils/http/app/DefaultParamsBuilder.class */
public class DefaultParamsBuilder implements ParamsBuilder {

    /* renamed from: a */
    private static SSLSocketFactory f40729a;

    /* renamed from: org.xutils.http.app.DefaultParamsBuilder$a */
    /* loaded from: classes2-dex2jar.jar:org/xutils/http/app/DefaultParamsBuilder$a.class */
    public static final class C9652a implements X509TrustManager {
        C9652a() {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
            LogUtil.m261d("checkClientTrusted:" + str);
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
            LogUtil.m261d("checkServerTrusted:" + str);
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return new X509Certificate[0];
        }
    }

    public static SSLSocketFactory getTrustAllSSLSocketFactory() {
        if (f40729a == null) {
            synchronized (DefaultParamsBuilder.class) {
                try {
                    if (f40729a == null) {
                        C9652a c9652a = new C9652a();
                        SSLContext sSLContext = SSLContext.getInstance("TLS");
                        sSLContext.init(null, new TrustManager[]{c9652a}, null);
                        f40729a = sSLContext.getSocketFactory();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f40729a;
    }

    @Override // org.xutils.http.app.ParamsBuilder
    public String buildCacheKey(RequestParams requestParams, String[] strArr) {
        StringBuilder sb = new StringBuilder();
        if (strArr != null && strArr.length > 0) {
            sb.append(requestParams.getUri());
            sb.append("?");
            for (String str : strArr) {
                List<KeyValue> params = requestParams.getParams(str);
                if (params != null && !params.isEmpty()) {
                    for (KeyValue keyValue : params) {
                        String valueStrOrNull = keyValue.getValueStrOrNull();
                        if (valueStrOrNull != null) {
                            sb.append(str);
                            sb.append("=");
                            sb.append(valueStrOrNull);
                            sb.append("&");
                        }
                    }
                }
            }
        }
        return sb.toString();
    }

    @Override // org.xutils.http.app.ParamsBuilder
    public void buildParams(RequestParams requestParams) {
    }

    @Override // org.xutils.http.app.ParamsBuilder
    public void buildSign(RequestParams requestParams, String[] strArr) {
    }

    @Override // org.xutils.http.app.ParamsBuilder
    public String buildUri(RequestParams requestParams, HttpRequest httpRequest) {
        return httpRequest.host() + "/" + httpRequest.path();
    }

    @Override // org.xutils.http.app.ParamsBuilder
    public SSLSocketFactory getSSLSocketFactory() {
        return getTrustAllSSLSocketFactory();
    }
}
