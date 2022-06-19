package org.bouncycastle.asn1;

import java.util.Enumeration;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/BERSet.class */
public class BERSet extends DERSet {
    public BERSet() {
    }

    public BERSet(ASN1EncodableVector aSN1EncodableVector) {
        super(aSN1EncodableVector, false);
    }

    public BERSet(ASN1EncodableVector aSN1EncodableVector, boolean z) {
        super(aSN1EncodableVector, z);
    }

    public BERSet(DEREncodable dEREncodable) {
        super(dEREncodable);
    }

    @Override // org.bouncycastle.asn1.DERSet, org.bouncycastle.asn1.ASN1Set, org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.DERObject
    public void encode(DEROutputStream dEROutputStream) {
        if (!(dEROutputStream instanceof ASN1OutputStream) && !(dEROutputStream instanceof BEROutputStream)) {
            super.encode(dEROutputStream);
            return;
        }
        dEROutputStream.write(49);
        dEROutputStream.write(128);
        Enumeration objects = getObjects();
        while (objects.hasMoreElements()) {
            dEROutputStream.writeObject(objects.nextElement());
        }
        dEROutputStream.write(0);
        dEROutputStream.write(0);
    }
}
