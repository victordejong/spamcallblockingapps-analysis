package org.bouncycastle.asn1;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/DERNull.class */
public class DERNull extends ASN1Null {
    public static final DERNull INSTANCE = new DERNull();
    public byte[] zeroBytes = new byte[0];

    @Override // org.bouncycastle.asn1.ASN1Null, org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.DERObject
    public void encode(DEROutputStream dEROutputStream) {
        dEROutputStream.writeEncoded(5, this.zeroBytes);
    }
}
