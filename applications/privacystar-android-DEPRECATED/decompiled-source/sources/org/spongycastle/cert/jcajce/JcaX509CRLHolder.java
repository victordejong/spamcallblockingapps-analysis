package org.spongycastle.cert.jcajce;

import java.security.cert.CRLException;
import java.security.cert.X509CRL;
import org.spongycastle.asn1.x509.CertificateList;
import org.spongycastle.cert.X509CRLHolder;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/jcajce/JcaX509CRLHolder.class */
public class JcaX509CRLHolder extends X509CRLHolder {
    public JcaX509CRLHolder(X509CRL x509crl) throws CRLException {
        super(CertificateList.getInstance(x509crl.getEncoded()));
    }
}
