package org.spongycastle.cert.jcajce;

import java.security.NoSuchProviderException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/jcajce/NamedCertHelper.class */
class NamedCertHelper extends CertHelper {
    private final String providerName;

    /* JADX INFO: Access modifiers changed from: package-private */
    public NamedCertHelper(String str) {
        this.providerName = str;
    }

    @Override // org.spongycastle.cert.jcajce.CertHelper
    protected CertificateFactory createCertificateFactory(String str) throws CertificateException, NoSuchProviderException {
        return CertificateFactory.getInstance(str, this.providerName);
    }
}
