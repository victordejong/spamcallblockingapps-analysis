package org.bouncycastle.asn1;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/ASN1ObjectIdentifier.class */
public class ASN1ObjectIdentifier extends DERObjectIdentifier {
    public ASN1ObjectIdentifier(String str) {
        super(str);
    }

    public ASN1ObjectIdentifier(byte[] bArr) {
        super(bArr);
    }

    public ASN1ObjectIdentifier branch(String str) {
        return new ASN1ObjectIdentifier(getId() + "." + str);
    }
}
