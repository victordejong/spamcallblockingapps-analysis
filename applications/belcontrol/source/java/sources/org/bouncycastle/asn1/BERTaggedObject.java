package org.bouncycastle.asn1;

import java.util.Enumeration;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/BERTaggedObject.class */
public class BERTaggedObject extends DERTaggedObject {
    public BERTaggedObject(int i) {
        super(false, i, new BERSequence());
    }

    public BERTaggedObject(int i, DEREncodable dEREncodable) {
        super(i, dEREncodable);
    }

    public BERTaggedObject(boolean z, int i, DEREncodable dEREncodable) {
        super(z, i, dEREncodable);
    }

    @Override // org.bouncycastle.asn1.DERTaggedObject, org.bouncycastle.asn1.ASN1TaggedObject, org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.DERObject
    public void encode(DEROutputStream dEROutputStream) {
        Enumeration enumeration;
        if (!(dEROutputStream instanceof ASN1OutputStream) && !(dEROutputStream instanceof BEROutputStream)) {
            super.encode(dEROutputStream);
            return;
        }
        dEROutputStream.writeTag(160, this.tagNo);
        dEROutputStream.write(128);
        if (!this.empty) {
            if (!this.explicit) {
                DEREncodable dEREncodable = this.obj;
                if (dEREncodable instanceof ASN1OctetString) {
                    enumeration = dEREncodable instanceof BERConstructedOctetString ? ((BERConstructedOctetString) dEREncodable).getObjects() : new BERConstructedOctetString(((ASN1OctetString) dEREncodable).getOctets()).getObjects();
                } else if (dEREncodable instanceof ASN1Sequence) {
                    enumeration = ((ASN1Sequence) dEREncodable).getObjects();
                } else if (!(dEREncodable instanceof ASN1Set)) {
                    throw new RuntimeException("not implemented: " + this.obj.getClass().getName());
                } else {
                    enumeration = ((ASN1Set) dEREncodable).getObjects();
                }
                while (enumeration.hasMoreElements()) {
                    dEROutputStream.writeObject(enumeration.nextElement());
                }
            } else {
                dEROutputStream.writeObject(this.obj);
            }
        }
        dEROutputStream.write(0);
        dEROutputStream.write(0);
    }
}
