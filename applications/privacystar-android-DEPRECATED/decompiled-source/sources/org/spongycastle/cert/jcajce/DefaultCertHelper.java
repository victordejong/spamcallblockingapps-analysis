package org.spongycastle.cert.jcajce;

import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/jcajce/DefaultCertHelper.class */
class DefaultCertHelper extends CertHelper {
    @Override // org.spongycastle.cert.jcajce.CertHelper
    protected CertificateFactory createCertificateFactory(String str) throws CertificateException {
        return CertificateFactory.getInstance(str);
    }
}
