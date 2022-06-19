package org.bouncycastle.asn1;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/DEROctetString.class */
public class DEROctetString extends ASN1OctetString {
    public DEROctetString(DEREncodable dEREncodable) {
        super(dEREncodable);
    }

    public DEROctetString(byte[] bArr) {
        super(bArr);
    }

    public static void encode(DEROutputStream dEROutputStream, byte[] bArr) {
        dEROutputStream.writeEncoded(4, bArr);
    }

    @Override // org.bouncycastle.asn1.ASN1OctetString, org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.DERObject
    public void encode(DEROutputStream dEROutputStream) {
        dEROutputStream.writeEncoded(4, this.string);
    }
}
