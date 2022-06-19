package org.bouncycastle.x509;

import java.io.IOException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.x509.CertificatePair;
import org.bouncycastle.asn1.x509.X509CertificateStructure;
import org.bouncycastle.jce.provider.X509CertificateObject;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/x509/X509CertificatePair.class */
public class X509CertificatePair {
    private X509Certificate forward;
    private X509Certificate reverse;

    public X509CertificatePair(X509Certificate x509Certificate, X509Certificate x509Certificate2) {
        this.forward = x509Certificate;
        this.reverse = x509Certificate2;
    }

    public X509CertificatePair(CertificatePair certificatePair) {
        if (certificatePair.getForward() != null) {
            this.forward = new X509CertificateObject(certificatePair.getForward());
        }
        if (certificatePair.getReverse() != null) {
            this.reverse = new X509CertificateObject(certificatePair.getReverse());
        }
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof X509CertificatePair)) {
            X509CertificatePair x509CertificatePair = (X509CertificatePair) obj;
            X509Certificate x509Certificate = this.forward;
            boolean equals = x509Certificate != null ? x509Certificate.equals(x509CertificatePair.forward) : x509CertificatePair.forward == null;
            X509Certificate x509Certificate2 = this.reverse;
            X509Certificate x509Certificate3 = x509CertificatePair.reverse;
            boolean equals2 = x509Certificate2 != null ? x509Certificate2.equals(x509Certificate3) : x509Certificate3 == null;
            boolean z = false;
            if (equals) {
                z = false;
                if (equals2) {
                    z = true;
                }
            }
            return z;
        }
        return false;
    }

    public byte[] getEncoded() {
        X509CertificateStructure x509CertificateStructure;
        try {
            X509CertificateStructure x509CertificateStructure2 = null;
            if (this.forward != null) {
                x509CertificateStructure = X509CertificateStructure.getInstance(new ASN1InputStream(this.forward.getEncoded()).readObject());
                if (x509CertificateStructure == null) {
                    throw new CertificateEncodingException("unable to get encoding for forward");
                }
            } else {
                x509CertificateStructure = null;
            }
            if (this.reverse != null) {
                x509CertificateStructure2 = X509CertificateStructure.getInstance(new ASN1InputStream(this.reverse.getEncoded()).readObject());
                if (x509CertificateStructure2 == null) {
                    throw new CertificateEncodingException("unable to get encoding for reverse");
                }
            }
            return new CertificatePair(x509CertificateStructure, x509CertificateStructure2).getDEREncoded();
        } catch (IOException e) {
            throw new ExtCertificateEncodingException(e.toString(), e);
        } catch (IllegalArgumentException e2) {
            throw new ExtCertificateEncodingException(e2.toString(), e2);
        }
    }

    public X509Certificate getForward() {
        return this.forward;
    }

    public X509Certificate getReverse() {
        return this.reverse;
    }

    public int hashCode() {
        X509Certificate x509Certificate = this.forward;
        int i = -1;
        if (x509Certificate != null) {
            i = (-1) ^ x509Certificate.hashCode();
        }
        X509Certificate x509Certificate2 = this.reverse;
        int i2 = i;
        if (x509Certificate2 != null) {
            i2 = (i * 17) ^ x509Certificate2.hashCode();
        }
        return i2;
    }
}
