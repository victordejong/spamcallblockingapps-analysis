package org.bouncycastle.crypto.tls;

import org.bouncycastle.asn1.x509.X509CertificateStructure;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/tls/AlwaysValidVerifyer.class */
public class AlwaysValidVerifyer implements CertificateVerifyer {
    @Override // org.bouncycastle.crypto.tls.CertificateVerifyer
    public boolean isValid(X509CertificateStructure[] x509CertificateStructureArr) {
        return true;
    }
}
