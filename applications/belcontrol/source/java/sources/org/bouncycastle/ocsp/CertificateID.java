package org.bouncycastle.ocsp;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.cert.X509Certificate;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERNull;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.ocsp.CertID;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.jce.PrincipalUtil;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/ocsp/CertificateID.class */
public class CertificateID {
    public static final String HASH_SHA1 = "1.3.14.3.2.26";

    /* renamed from: id */
    private final CertID f7677id;

    public CertificateID(String str, X509Certificate x509Certificate, BigInteger bigInteger) {
        this(str, x509Certificate, bigInteger, "BC");
    }

    public CertificateID(String str, X509Certificate x509Certificate, BigInteger bigInteger, String str2) {
        this.f7677id = createCertID(new AlgorithmIdentifier(new DERObjectIdentifier(str), DERNull.INSTANCE), x509Certificate, new DERInteger(bigInteger), str2);
    }

    public CertificateID(CertID certID) {
        if (certID != null) {
            this.f7677id = certID;
            return;
        }
        throw new IllegalArgumentException("'id' cannot be null");
    }

    private static CertID createCertID(AlgorithmIdentifier algorithmIdentifier, X509Certificate x509Certificate, DERInteger dERInteger, String str) {
        try {
            MessageDigest createDigestInstance = OCSPUtil.createDigestInstance(algorithmIdentifier.getAlgorithm().getId(), str);
            createDigestInstance.update(PrincipalUtil.getSubjectX509Principal(x509Certificate).getEncoded());
            DEROctetString dEROctetString = new DEROctetString(createDigestInstance.digest());
            createDigestInstance.update(SubjectPublicKeyInfo.getInstance(new ASN1InputStream(x509Certificate.getPublicKey().getEncoded()).readObject()).getPublicKeyData().getBytes());
            return new CertID(algorithmIdentifier, dEROctetString, new DEROctetString(createDigestInstance.digest()), dERInteger);
        } catch (Exception e) {
            throw new OCSPException("problem creating ID: " + e, e);
        }
    }

    public static CertificateID deriveCertificateID(CertificateID certificateID, BigInteger bigInteger) {
        return new CertificateID(new CertID(certificateID.f7677id.getHashAlgorithm(), certificateID.f7677id.getIssuerNameHash(), certificateID.f7677id.getIssuerKeyHash(), new DERInteger(bigInteger)));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof CertificateID)) {
            return false;
        }
        return this.f7677id.getDERObject().equals(((CertificateID) obj).f7677id.getDERObject());
    }

    public String getHashAlgOID() {
        return this.f7677id.getHashAlgorithm().getObjectId().getId();
    }

    public byte[] getIssuerKeyHash() {
        return this.f7677id.getIssuerKeyHash().getOctets();
    }

    public byte[] getIssuerNameHash() {
        return this.f7677id.getIssuerNameHash().getOctets();
    }

    public BigInteger getSerialNumber() {
        return this.f7677id.getSerialNumber().getValue();
    }

    public int hashCode() {
        return this.f7677id.getDERObject().hashCode();
    }

    public boolean matchesIssuer(X509Certificate x509Certificate, String str) {
        return createCertID(this.f7677id.getHashAlgorithm(), x509Certificate, this.f7677id.getSerialNumber(), str).equals(this.f7677id);
    }

    public CertID toASN1Object() {
        return this.f7677id;
    }
}
