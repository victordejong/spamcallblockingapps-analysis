package org.bouncycastle.x509.extension;

import java.security.InvalidKeyException;
import java.security.PublicKey;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.x509.SubjectKeyIdentifier;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/x509/extension/SubjectKeyIdentifierStructure.class */
public class SubjectKeyIdentifierStructure extends SubjectKeyIdentifier {
    public SubjectKeyIdentifierStructure(PublicKey publicKey) {
        super(fromPublicKey(publicKey));
    }

    public SubjectKeyIdentifierStructure(byte[] bArr) {
        super((ASN1OctetString) X509ExtensionUtil.fromExtensionValue(bArr));
    }

    private static ASN1OctetString fromPublicKey(PublicKey publicKey) {
        try {
            return (ASN1OctetString) new SubjectKeyIdentifier(SubjectPublicKeyInfo.getInstance(publicKey.getEncoded())).toASN1Object();
        } catch (Exception e) {
            throw new InvalidKeyException("Exception extracting key details: " + e.toString());
        }
    }
}
