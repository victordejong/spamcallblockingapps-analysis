package org.spongycastle.asn1;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/DERObjectIdentifier.class */
public class DERObjectIdentifier extends ASN1ObjectIdentifier {
    public DERObjectIdentifier(String str) {
        super(str);
    }

    DERObjectIdentifier(ASN1ObjectIdentifier aSN1ObjectIdentifier, String str) {
        super(aSN1ObjectIdentifier, str);
    }

    DERObjectIdentifier(byte[] bArr) {
        super(bArr);
    }
}
