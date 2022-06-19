package org.bouncycastle.x509;

import java.security.cert.CertPath;
import java.util.Collection;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/x509/PKIXAttrCertChecker.class */
public abstract class PKIXAttrCertChecker implements Cloneable {
    public abstract void check(X509AttributeCertificate x509AttributeCertificate, CertPath certPath, CertPath certPath2, Collection collection);

    public abstract Object clone();

    public abstract Set getSupportedExtensions();
}
