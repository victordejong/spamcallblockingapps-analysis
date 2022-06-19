package org.bouncycastle.asn1;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Vector;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/ASN1Set.class */
public abstract class ASN1Set extends ASN1Object {
    public Vector set = new Vector();

    private byte[] getEncoded(DEREncodable dEREncodable) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            new ASN1OutputStream(byteArrayOutputStream).writeObject(dEREncodable);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            throw new IllegalArgumentException("cannot encode object added to SET");
        }
    }

    public static ASN1Set getInstance(Object obj) {
        if (obj == null || (obj instanceof ASN1Set)) {
            return (ASN1Set) obj;
        }
        throw new IllegalArgumentException("unknown object in getInstance: " + obj.getClass().getName());
    }

    public static ASN1Set getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        if (z) {
            if (!aSN1TaggedObject.isExplicit()) {
                throw new IllegalArgumentException("object implicit - explicit expected.");
            }
            return (ASN1Set) aSN1TaggedObject.getObject();
        } else if (aSN1TaggedObject.isExplicit()) {
            return new DERSet(aSN1TaggedObject.getObject());
        } else {
            if (aSN1TaggedObject.getObject() instanceof ASN1Set) {
                return (ASN1Set) aSN1TaggedObject.getObject();
            }
            ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
            if (aSN1TaggedObject.getObject() instanceof ASN1Sequence) {
                Enumeration objects = ((ASN1Sequence) aSN1TaggedObject.getObject()).getObjects();
                while (objects.hasMoreElements()) {
                    aSN1EncodableVector.add((DEREncodable) objects.nextElement());
                }
                return new DERSet(aSN1EncodableVector, false);
            }
            throw new IllegalArgumentException("unknown object in getInstance: " + aSN1TaggedObject.getClass().getName());
        }
    }

    private DEREncodable getNext(Enumeration enumeration) {
        DEREncodable dEREncodable = (DEREncodable) enumeration.nextElement();
        DERNull dERNull = dEREncodable;
        if (dEREncodable == null) {
            dERNull = DERNull.INSTANCE;
        }
        return dERNull;
    }

    private boolean lessThanOrEqual(byte[] bArr, byte[] bArr2) {
        int min = Math.min(bArr.length, bArr2.length);
        boolean z = false;
        for (int i = 0; i != min; i++) {
            if (bArr[i] != bArr2[i]) {
                if ((bArr[i] & 255) < (bArr2[i] & 255)) {
                    z = true;
                }
                return z;
            }
        }
        boolean z2 = false;
        if (min == bArr.length) {
            z2 = true;
        }
        return z2;
    }

    public void addObject(DEREncodable dEREncodable) {
        this.set.addElement(dEREncodable);
    }

    @Override // org.bouncycastle.asn1.ASN1Object
    public boolean asn1Equals(DERObject dERObject) {
        if (!(dERObject instanceof ASN1Set)) {
            return false;
        }
        ASN1Set aSN1Set = (ASN1Set) dERObject;
        if (size() != aSN1Set.size()) {
            return false;
        }
        Enumeration objects = getObjects();
        Enumeration objects2 = aSN1Set.getObjects();
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
        return (DEREncodable) this.set.elementAt(i);
    }

    public Enumeration getObjects() {
        return this.set.elements();
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

    public ASN1SetParser parser() {
        return new ASN1SetParser() { // from class: org.bouncycastle.asn1.ASN1Set.1
            private int index;
            private final int max;

            {
                ASN1Set.this = this;
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

            @Override // org.bouncycastle.asn1.ASN1SetParser
            public DEREncodable readObject() {
                int i = this.index;
                if (i == this.max) {
                    return null;
                }
                ASN1Set aSN1Set = ASN1Set.this;
                this.index = i + 1;
                DEREncodable objectAt = aSN1Set.getObjectAt(i);
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
        return this.set.size();
    }

    public void sort() {
        if (this.set.size() > 1) {
            int size = this.set.size() - 1;
            boolean z = true;
            while (z) {
                int i = 0;
                byte[] encoded = getEncoded((DEREncodable) this.set.elementAt(0));
                z = false;
                int i2 = 0;
                while (true) {
                    int i3 = i2;
                    if (i3 != size) {
                        int i4 = i3 + 1;
                        byte[] encoded2 = getEncoded((DEREncodable) this.set.elementAt(i4));
                        if (lessThanOrEqual(encoded, encoded2)) {
                            encoded = encoded2;
                        } else {
                            Object elementAt = this.set.elementAt(i3);
                            Vector vector = this.set;
                            vector.setElementAt(vector.elementAt(i4), i3);
                            this.set.setElementAt(elementAt, i4);
                            i = i3;
                            z = true;
                        }
                        i2 = i4;
                    }
                }
                size = i;
            }
        }
    }

    public ASN1Encodable[] toArray() {
        ASN1Encodable[] aSN1EncodableArr = new ASN1Encodable[size()];
        for (int i = 0; i != size(); i++) {
            aSN1EncodableArr[i] = (ASN1Encodable) getObjectAt(i);
        }
        return aSN1EncodableArr;
    }

    public String toString() {
        return this.set.toString();
    }
}
