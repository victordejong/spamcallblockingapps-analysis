package org.spongycastle.openssl;

import java.io.IOException;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.cert.X509CertificateHolder;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openssl/X509TrustedCertificateBlock.class */
public class X509TrustedCertificateBlock {
    private final X509CertificateHolder certificateHolder;
    private final CertificateTrustBlock trustBlock;

    public X509TrustedCertificateBlock(X509CertificateHolder x509CertificateHolder, CertificateTrustBlock certificateTrustBlock) {
        this.certificateHolder = x509CertificateHolder;
        this.trustBlock = certificateTrustBlock;
    }

    public X509TrustedCertificateBlock(byte[] bArr) throws IOException {
        ASN1InputStream aSN1InputStream = new ASN1InputStream(bArr);
        this.certificateHolder = new X509CertificateHolder(aSN1InputStream.readObject().getEncoded());
        this.trustBlock = new CertificateTrustBlock(aSN1InputStream.readObject().getEncoded());
    }

    public X509CertificateHolder getCertificateHolder() {
        return this.certificateHolder;
    }

    public byte[] getEncoded() throws IOException {
        return Arrays.concatenate(this.certificateHolder.getEncoded(), this.trustBlock.toASN1Sequence().getEncoded());
    }

    public CertificateTrustBlock getTrustBlock() {
        return this.trustBlock;
    }
}
