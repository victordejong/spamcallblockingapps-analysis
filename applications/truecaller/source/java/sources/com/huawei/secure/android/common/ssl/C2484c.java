package com.huawei.secure.android.common.ssl;

import android.content.Context;
import com.huawei.secure.android.common.ssl.util.C2488b;
import com.huawei.secure.android.common.ssl.util.C2489c;
import com.huawei.secure.android.common.ssl.util.C2493g;
import com.huawei.secure.android.common.ssl.util.C2496j;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SignatureException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import javax.net.ssl.X509TrustManager;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.secure.android.common.ssl.c */
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/ssl/c.class */
public class C2484c implements X509TrustManager {

    /* renamed from: c */
    private static final String f8066c = "WebViewX509TrustManger";

    /* renamed from: a */
    private X509Certificate f8067a;

    /* renamed from: b */
    private List<X509TrustManager> f8068b = new ArrayList();

    public C2484c(Context context) {
        Objects.requireNonNull(context, "WebViewX509TrustManger context is null");
        C2489c.m36978a(context);
        X509Certificate m36939b = new C2496j(context).m36939b();
        this.f8067a = m36939b;
        Objects.requireNonNull(m36939b, "WebViewX509TrustManger cannot get cbg root ca");
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        C2493g.m36955c(f8066c, "checkClientTrusted");
        if (!this.f8068b.isEmpty()) {
            this.f8068b.get(0).checkClientTrusted(x509CertificateArr, str);
            return;
        }
        throw new CertificateException("checkClientTrusted CertificateException");
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        boolean z;
        C2493g.m36955c(f8066c, "checkServerTrusted");
        for (int i = 0; i < x509CertificateArr.length; i++) {
            StringBuilder m8720E = C22128a.m8720E("checkServerTrusted ", i, " : ");
            m8720E.append(x509CertificateArr[i].getIssuerDN().getName());
            C2493g.m36958a(f8066c, m8720E.toString());
        }
        X509Certificate[] x509CertificateArr2 = new X509Certificate[x509CertificateArr.length];
        for (int i2 = 0; i2 < x509CertificateArr.length; i2++) {
            x509CertificateArr2[i2] = x509CertificateArr[(x509CertificateArr.length - 1) - i2];
        }
        CertificateException e = new CertificateException("CBG root CA CertificateException");
        try {
            z = C2488b.m36984a(this.f8067a, x509CertificateArr2);
        } catch (InvalidKeyException e2) {
            StringBuilder m8728C = C22128a.m8728C("checkServerTrusted InvalidKeyException: ");
            m8728C.append(e2.getMessage());
            C2493g.m36956b(f8066c, m8728C.toString());
            z = false;
        } catch (NoSuchAlgorithmException e3) {
            StringBuilder m8728C2 = C22128a.m8728C("checkServerTrusted NoSuchAlgorithmException: ");
            m8728C2.append(e3.getMessage());
            C2493g.m36956b(f8066c, m8728C2.toString());
            z = false;
        } catch (NoSuchProviderException e4) {
            StringBuilder m8728C3 = C22128a.m8728C("checkServerTrusted NoSuchProviderException: ");
            m8728C3.append(e4.getMessage());
            C2493g.m36956b(f8066c, m8728C3.toString());
            z = false;
        } catch (SignatureException e5) {
            StringBuilder m8728C4 = C22128a.m8728C("checkServerTrusted SignatureException: ");
            m8728C4.append(e5.getMessage());
            C2493g.m36956b(f8066c, m8728C4.toString());
            z = false;
        } catch (CertificateException e6) {
            e = e6;
            StringBuilder m8728C5 = C22128a.m8728C("checkServerTrusted CertificateException: ");
            m8728C5.append(e.getMessage());
            C2493g.m36956b(f8066c, m8728C5.toString());
            z = false;
        }
        if (z) {
            return;
        }
        throw e;
    }

    @Override // javax.net.ssl.X509TrustManager
    public X509Certificate[] getAcceptedIssuers() {
        try {
            ArrayList arrayList = new ArrayList();
            for (X509TrustManager x509TrustManager : this.f8068b) {
                arrayList.addAll(Arrays.asList(x509TrustManager.getAcceptedIssuers()));
            }
            return (X509Certificate[]) arrayList.toArray(new X509Certificate[arrayList.size()]);
        } catch (Exception e) {
            StringBuilder m8728C = C22128a.m8728C("getAcceptedIssuers exception : ");
            m8728C.append(e.getMessage());
            C2493g.m36956b(f8066c, m8728C.toString());
            return new X509Certificate[0];
        }
    }
}
