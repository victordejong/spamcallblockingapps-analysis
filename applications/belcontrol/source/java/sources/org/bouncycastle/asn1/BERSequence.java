package org.bouncycastle.asn1;

import java.util.Enumeration;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/BERSequence.class */
public class BERSequence extends DERSequence {
    public BERSequence() {
    }

    public BERSequence(ASN1EncodableVector aSN1EncodableVector) {
        super(aSN1EncodableVector);
    }

    public BERSequence(DEREncodable dEREncodable) {
        super(dEREncodable);
    }

    @Override // org.bouncycastle.asn1.DERSequence, org.bouncycastle.asn1.ASN1Sequence, org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.DERObject
    public void encode(DEROutputStream dEROutputStream) {
        if (!(dEROutputStream instanceof ASN1OutputStream) && !(dEROutputStream instanceof BEROutputStream)) {
            super.encode(dEROutputStream);
            return;
        }
        dEROutputStream.write(48);
        dEROutputStream.write(128);
        Enumeration objects = getObjects();
        while (objects.hasMoreElements()) {
            dEROutputStream.writeObject(objects.nextElement());
        }
        dEROutputStream.write(0);
        dEROutputStream.write(0);
    }
}
