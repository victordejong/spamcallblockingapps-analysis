package org.bouncycastle.asn1;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/ASN1TaggedObject.class */
public abstract class ASN1TaggedObject extends ASN1Object implements ASN1TaggedObjectParser {
    public boolean empty = false;
    public boolean explicit;
    public DEREncodable obj;
    public int tagNo;

    public ASN1TaggedObject(int i, DEREncodable dEREncodable) {
        this.explicit = true;
        this.obj = null;
        this.explicit = true;
        this.tagNo = i;
        this.obj = dEREncodable;
    }

    public ASN1TaggedObject(boolean z, int i, DEREncodable dEREncodable) {
        this.explicit = true;
        this.obj = null;
        if (dEREncodable instanceof ASN1Choice) {
            this.explicit = true;
        } else {
            this.explicit = z;
        }
        this.tagNo = i;
        this.obj = dEREncodable;
    }

    public static ASN1TaggedObject getInstance(Object obj) {
        if (obj == null || (obj instanceof ASN1TaggedObject)) {
            return (ASN1TaggedObject) obj;
        }
        throw new IllegalArgumentException("unknown object in getInstance: " + obj.getClass().getName());
    }

    public static ASN1TaggedObject getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        if (z) {
            return (ASN1TaggedObject) aSN1TaggedObject.getObject();
        }
        throw new IllegalArgumentException("implicitly tagged tagged object");
    }

    @Override // org.bouncycastle.asn1.ASN1Object
    public boolean asn1Equals(DERObject dERObject) {
        if (!(dERObject instanceof ASN1TaggedObject)) {
            return false;
        }
        ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) dERObject;
        if (this.tagNo != aSN1TaggedObject.tagNo || this.empty != aSN1TaggedObject.empty || this.explicit != aSN1TaggedObject.explicit) {
            return false;
        }
        DEREncodable dEREncodable = this.obj;
        return dEREncodable == null ? aSN1TaggedObject.obj == null : dEREncodable.getDERObject().equals(aSN1TaggedObject.obj.getDERObject());
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.DERObject
    public abstract void encode(DEROutputStream dEROutputStream);

    @Override // org.bouncycastle.asn1.InMemoryRepresentable
    public DERObject getLoadedObject() {
        return getDERObject();
    }

    public DERObject getObject() {
        DEREncodable dEREncodable = this.obj;
        if (dEREncodable != null) {
            return dEREncodable.getDERObject();
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public DEREncodable getObjectParser(int i, boolean z) {
        if (i != 4) {
            if (i == 16) {
                return ASN1Sequence.getInstance(this, z).parser();
            }
            if (i == 17) {
                return ASN1Set.getInstance(this, z).parser();
            }
            if (z) {
                return getObject();
            }
            throw new RuntimeException("implicit tagging not implemented for tag: " + i);
        }
        return ASN1OctetString.getInstance(this, z).parser();
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public int getTagNo() {
        return this.tagNo;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.DERObject, org.bouncycastle.asn1.ASN1Encodable
    public int hashCode() {
        int i = this.tagNo;
        DEREncodable dEREncodable = this.obj;
        int i2 = i;
        if (dEREncodable != null) {
            i2 = i ^ dEREncodable.hashCode();
        }
        return i2;
    }

    public boolean isEmpty() {
        return this.empty;
    }

    public boolean isExplicit() {
        return this.explicit;
    }

    public String toString() {
        return "[" + this.tagNo + "]" + this.obj;
    }
}
