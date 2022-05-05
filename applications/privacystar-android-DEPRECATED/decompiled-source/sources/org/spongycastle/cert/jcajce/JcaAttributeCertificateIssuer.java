package org.spongycastle.cert.jcajce;

import java.security.cert.X509Certificate;
import javax.security.auth.x500.X500Principal;
import org.spongycastle.asn1.x500.X500Name;
import org.spongycastle.cert.AttributeCertificateIssuer;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/jcajce/JcaAttributeCertificateIssuer.class */
public class JcaAttributeCertificateIssuer extends AttributeCertificateIssuer {
    public JcaAttributeCertificateIssuer(X509Certificate x509Certificate) {
        this(x509Certificate.getIssuerX500Principal());
    }

    public JcaAttributeCertificateIssuer(X500Principal x500Principal) {
        super(X500Name.getInstance(x500Principal.getEncoded()));
    }
}
