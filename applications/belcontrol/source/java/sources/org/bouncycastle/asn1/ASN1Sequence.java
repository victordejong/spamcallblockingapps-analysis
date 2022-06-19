package org.bouncycastle.asn1;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Vector;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/ASN1Sequence.class */
public abstract class ASN1Sequence extends ASN1Object {
    private Vector seq = new Vector();

    public static ASN1Sequence getInstance(Object obj) {
        if (obj == null || (obj instanceof ASN1Sequence)) {
            return (ASN1Sequence) obj;
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("unknown object in getInstance: " + obj.getClass().getName());
        }
        try {
            return getInstance(ASN1Object.fromByteArray((byte[]) obj));
        } catch (IOException e) {
            throw new IllegalArgumentException("failed to construct sequence from byte[]: " + e.getMessage());
        }
    }

    public static ASN1Sequence getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        if (z) {
            if (!aSN1TaggedObject.isExplicit()) {
                throw new IllegalArgumentException("object implicit - explicit expected.");
            }
        } else if (aSN1TaggedObject.isExplicit()) {
            return aSN1TaggedObject instanceof BERTaggedObject ? new BERSequence(aSN1TaggedObject.getObject()) : new DERSequence(aSN1TaggedObject.getObject());
        } else if (!(aSN1TaggedObject.getObject() instanceof ASN1Sequence)) {
            throw new IllegalArgumentException("unknown object in getInstance: " + aSN1TaggedObject.getClass().getName());
        }
        return (ASN1Sequence) aSN1TaggedObject.getObject();
    }

    private DEREncodable getNext(Enumeration enumeration) {
        DEREncodable dEREncodable = (DEREncodable) enumeration.nextElement();
        DERNull dERNull = dEREncodable;
        if (dEREncodable == null) {
            dERNull = DERNull.INSTANCE;
        }
        return dERNull;
    }

    public void addObject(DEREncodable dEREncodable) {
        this.seq.addElement(dEREncodable);
    }

    @Override // org.bouncycastle.asn1.ASN1Object
    public boolean asn1Equals(DERObject dERObject) {
        if (!(dERObject instanceof ASN1Sequence)) {
            return false;
        }
        ASN1Sequence aSN1Sequence = (ASN1Sequence) dERObject;
        if (size() != aSN1Sequence.size()) {
            return false;
        }
        Enumeration objects = getObjects();
        Enumeration objects2 = aSN1Sequence.getObjects();
        while (objects.hasMoreElements()) {
            DEREncodable next = getNext(objects);
            DEREncodable next2 = getNext(objects2);
            DERObject dERObject2 = next.getDERObject();
            DERObject dERObject3 = next2.getDERObject();
            if (dERObject2 != dERObject3 && !dERObject2.equals(dERObject3)) {
                return false;
            }
        }
        return true;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.DERObject
    public abstract void encode(DEROutputStream dEROutputStream);

    public DEREncodable getObjectAt(int i) {
        return (DEREncodable) this.seq.elementAt(i);
    }

    public Enumeration getObjects() {
        return this.seq.elements();
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.DERObject, org.bouncycastle.asn1.ASN1Encodable
    public int hashCode() {
        Enumeration objects = getObjects();
        int size = size();
        while (true) {
            int i = size;
            if (objects.hasMoreElements()) {
                size = (i * 17) ^ getNext(objects).hashCode();
            } else {
                return i;
            }
        }
    }

    public ASN1SequenceParser parser() {
        return new ASN1SequenceParser() { // from class: org.bouncycastle.asn1.ASN1Sequence.1
            private int index;
            private final int max;

            {
                ASN1Sequence.this = this;
                this.max = this.size();
            }

            @Override // org.bouncycastle.asn1.DEREncodable
            public DERObject getDERObject() {
                return this;
            }

            @Override // org.bouncycastle.asn1.InMemoryRepresentable
            public DERObject getLoadedObject() {
                return this;
            }

            @Override // org.bouncycastle.asn1.ASN1SequenceParser
            public DEREncodable readObject() {
                int i = this.index;
                if (i == this.max) {
                    return null;
                }
                ASN1Sequence aSN1Sequence = ASN1Sequence.this;
                this.index = i + 1;
                DEREncodable objectAt = aSN1Sequence.getObjectAt(i);
                if (objectAt instanceof ASN1Sequence) {
                    return ((ASN1Sequence) objectAt).parser();
                }
                ASN1SetParser aSN1SetParser = objectAt;
                if (objectAt instanceof ASN1Set) {
                    aSN1SetParser = ((ASN1Set) objectAt).parser();
                }
                return aSN1SetParser;
            }
        };
    }

    public int size() {
        return this.seq.size();
    }

    public String toString() {
        return this.seq.toString();
    }
}
