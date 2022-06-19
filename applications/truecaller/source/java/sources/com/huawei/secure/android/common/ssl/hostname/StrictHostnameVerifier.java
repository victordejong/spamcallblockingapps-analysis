package com.huawei.secure.android.common.ssl.hostname;

import com.huawei.secure.android.common.ssl.util.C2493g;
import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/ssl/hostname/StrictHostnameVerifier.class */
public class StrictHostnameVerifier implements HostnameVerifier {
    @Override // javax.net.ssl.HostnameVerifier
    public final boolean verify(String str, SSLSession sSLSession) {
        try {
            X509Certificate x509Certificate = (X509Certificate) sSLSession.getPeerCertificates()[0];
            C2493g.m36958a("", "verify: certificate is : " + x509Certificate.getSubjectDN().getName());
            C2486b.m37009a(str, x509Certificate, true);
            return true;
        } catch (SSLException e) {
            StringBuilder m8728C = C22128a.m8728C("SSLException : ");
            m8728C.append(e.getMessage());
            C2493g.m36956b("", m8728C.toString());
            return false;
        }
    }
}
