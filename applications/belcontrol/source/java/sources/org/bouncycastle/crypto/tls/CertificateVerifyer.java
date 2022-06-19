package org.bouncycastle.crypto.tls;

import org.bouncycastle.asn1.x509.X509CertificateStructure;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/tls/CertificateVerifyer.class */
public interface CertificateVerifyer {
    boolean isValid(X509CertificateStructure[] x509CertificateStructureArr);
}
