package org.spongycastle.pkcs;

import java.io.IOException;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSet;
import org.spongycastle.asn1.pkcs.Attribute;
import org.spongycastle.asn1.pkcs.CertBag;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.pkcs.SafeBag;
import org.spongycastle.asn1.x509.Certificate;
import org.spongycastle.asn1.x509.CertificateList;
import org.spongycastle.cert.X509CRLHolder;
import org.spongycastle.cert.X509CertificateHolder;
import org.spongycastle.operator.OutputEncryptor;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pkcs/PKCS12SafeBagBuilder.class */
public class PKCS12SafeBagBuilder {
    private ASN1EncodableVector bagAttrs;
    private ASN1ObjectIdentifier bagType;
    private ASN1Encodable bagValue;

    public PKCS12SafeBagBuilder(PrivateKeyInfo privateKeyInfo) {
        this.bagAttrs = new ASN1EncodableVector();
        this.bagType = PKCSObjectIdentifiers.keyBag;
        this.bagValue = privateKeyInfo;
    }

    public PKCS12SafeBagBuilder(PrivateKeyInfo privateKeyInfo, OutputEncryptor outputEncryptor) {
        this.bagAttrs = new ASN1EncodableVector();
        this.bagType = PKCSObjectIdentifiers.pkcs8ShroudedKeyBag;
        this.bagValue = new PKCS8EncryptedPrivateKeyInfoBuilder(privateKeyInfo).build(outputEncryptor).toASN1Structure();
    }

    public PKCS12SafeBagBuilder(Certificate certificate) throws IOException {
        this.bagAttrs = new ASN1EncodableVector();
        this.bagType = PKCSObjectIdentifiers.certBag;
        this.bagValue = new CertBag(PKCSObjectIdentifiers.x509Certificate, new DEROctetString(certificate.getEncoded()));
    }

    public PKCS12SafeBagBuilder(CertificateList certificateList) throws IOException {
        this.bagAttrs = new ASN1EncodableVector();
        this.bagType = PKCSObjectIdentifiers.crlBag;
        this.bagValue = new CertBag(PKCSObjectIdentifiers.x509Crl, new DEROctetString(certificateList.getEncoded()));
    }

    public PKCS12SafeBagBuilder(X509CRLHolder x509CRLHolder) throws IOException {
        this(x509CRLHolder.toASN1Structure());
    }

    public PKCS12SafeBagBuilder(X509CertificateHolder x509CertificateHolder) throws IOException {
        this(x509CertificateHolder.toASN1Structure());
    }

    public PKCS12SafeBagBuilder addBagAttribute(ASN1ObjectIdentifier aSN1ObjectIdentifier, ASN1Encodable aSN1Encodable) {
        this.bagAttrs.add(new Attribute(aSN1ObjectIdentifier, new DERSet(aSN1Encodable)));
        return this;
    }

    public PKCS12SafeBag build() {
        return new PKCS12SafeBag(new SafeBag(this.bagType, this.bagValue, new DERSet(this.bagAttrs)));
    }
}
