package org.bouncycastle.asn1;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/BERNull.class */
public class BERNull extends DERNull {
    public static final BERNull INSTANCE = new BERNull();

    @Override // org.bouncycastle.asn1.DERNull, org.bouncycastle.asn1.ASN1Null, org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.DERObject
    public void encode(DEROutputStream dEROutputStream) {
        if ((dEROutputStream instanceof ASN1OutputStream) || (dEROutputStream instanceof BEROutputStream)) {
            dEROutputStream.write(5);
        } else {
            super.encode(dEROutputStream);
        }
    }
}
