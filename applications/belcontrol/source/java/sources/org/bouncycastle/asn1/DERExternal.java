package org.bouncycastle.asn1;

import java.io.ByteArrayOutputStream;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/DERExternal.class */
public class DERExternal extends ASN1Object {
    private ASN1Object dataValueDescriptor;
    private DERObjectIdentifier directReference;
    private int encoding;
    private DERObject externalContent;
    private DERInteger indirectReference;

    public DERExternal(ASN1EncodableVector aSN1EncodableVector) {
        int i = 0;
        DERObject objFromVector = getObjFromVector(aSN1EncodableVector, 0);
        DERObject dERObject = objFromVector;
        if (objFromVector instanceof DERObjectIdentifier) {
            this.directReference = (DERObjectIdentifier) objFromVector;
            dERObject = getObjFromVector(aSN1EncodableVector, 1);
            i = 1;
        }
        int i2 = i;
        DERObject dERObject2 = dERObject;
        if (dERObject instanceof DERInteger) {
            this.indirectReference = (DERInteger) dERObject;
            i2 = i + 1;
            dERObject2 = getObjFromVector(aSN1EncodableVector, i2);
        }
        int i3 = i2;
        DERObject dERObject3 = dERObject2;
        if (!(dERObject2 instanceof DERTaggedObject)) {
            this.dataValueDescriptor = (ASN1Object) dERObject2;
            i3 = i2 + 1;
            dERObject3 = getObjFromVector(aSN1EncodableVector, i3);
        }
        if (aSN1EncodableVector.size() == i3 + 1) {
            if (!(dERObject3 instanceof DERTaggedObject)) {
                throw new IllegalArgumentException("No tagged object found in vector. Structure doesn't seem to be of type External");
            }
            DERTaggedObject dERTaggedObject = (DERTaggedObject) dERObject3;
            setEncoding(dERTaggedObject.getTagNo());
            this.externalContent = dERTaggedObject.getObject();
            return;
        }
        throw new IllegalArgumentException("input vector too large");
    }

    public DERExternal(DERObjectIdentifier dERObjectIdentifier, DERInteger dERInteger, ASN1Object aSN1Object, int i, DERObject dERObject) {
        setDirectReference(dERObjectIdentifier);
        setIndirectReference(dERInteger);
        setDataValueDescriptor(aSN1Object);
        setEncoding(i);
        setExternalContent(dERObject.getDERObject());
    }

    public DERExternal(DERObjectIdentifier dERObjectIdentifier, DERInteger dERInteger, ASN1Object aSN1Object, DERTaggedObject dERTaggedObject) {
        this(dERObjectIdentifier, dERInteger, aSN1Object, dERTaggedObject.getTagNo(), dERTaggedObject.getDERObject());
    }

    private DERObject getObjFromVector(ASN1EncodableVector aSN1EncodableVector, int i) {
        if (aSN1EncodableVector.size() > i) {
            return aSN1EncodableVector.get(i).getDERObject();
        }
        throw new IllegalArgumentException("too few objects in input vector");
    }

    private void setDataValueDescriptor(ASN1Object aSN1Object) {
        this.dataValueDescriptor = aSN1Object;
    }

    private void setDirectReference(DERObjectIdentifier dERObjectIdentifier) {
        this.directReference = dERObjectIdentifier;
    }

    private void setEncoding(int i) {
        if (i >= 0 && i <= 2) {
            this.encoding = i;
            return;
        }
        throw new IllegalArgumentException("invalid encoding value: " + i);
    }

    private void setExternalContent(DERObject dERObject) {
        this.externalContent = dERObject;
    }

    private void setIndirectReference(DERInteger dERInteger) {
        this.indirectReference = dERInteger;
    }

    @Override // org.bouncycastle.asn1.ASN1Object
    public boolean asn1Equals(DERObject dERObject) {
        ASN1Object aSN1Object;
        DERInteger dERInteger;
        DERObjectIdentifier dERObjectIdentifier;
        if (!(dERObject instanceof DERExternal)) {
            return false;
        }
        if (this == dERObject) {
            return true;
        }
        DERExternal dERExternal = (DERExternal) dERObject;
        DERObjectIdentifier dERObjectIdentifier2 = this.directReference;
        if (dERObjectIdentifier2 != null && ((dERObjectIdentifier = dERExternal.directReference) == null || !dERObjectIdentifier.equals(dERObjectIdentifier2))) {
            return false;
        }
        DERInteger dERInteger2 = this.indirectReference;
        if (dERInteger2 != null && ((dERInteger = dERExternal.indirectReference) == null || !dERInteger.equals(dERInteger2))) {
            return false;
        }
        ASN1Object aSN1Object2 = this.dataValueDescriptor;
        if (aSN1Object2 != null && ((aSN1Object = dERExternal.dataValueDescriptor) == null || !aSN1Object.equals(aSN1Object2))) {
            return false;
        }
        return this.externalContent.equals(dERExternal.externalContent);
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.DERObject
    public void encode(DEROutputStream dEROutputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DERObjectIdentifier dERObjectIdentifier = this.directReference;
        if (dERObjectIdentifier != null) {
            byteArrayOutputStream.write(dERObjectIdentifier.getDEREncoded());
        }
        DERInteger dERInteger = this.indirectReference;
        if (dERInteger != null) {
            byteArrayOutputStream.write(dERInteger.getDEREncoded());
        }
        ASN1Object aSN1Object = this.dataValueDescriptor;
        if (aSN1Object != null) {
            byteArrayOutputStream.write(aSN1Object.getDEREncoded());
        }
        byteArrayOutputStream.write(new DERTaggedObject(this.encoding, this.externalContent).getDEREncoded());
        dEROutputStream.writeEncoded(32, 8, byteArrayOutputStream.toByteArray());
    }

    public ASN1Object getDataValueDescriptor() {
        return this.dataValueDescriptor;
    }

    public DERObjectIdentifier getDirectReference() {
        return this.directReference;
    }

    public int getEncoding() {
        return this.encoding;
    }

    public DERObject getExternalContent() {
        return this.externalContent;
    }

    public DERInteger getIndirectReference() {
        return this.indirectReference;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.DERObject, org.bouncycastle.asn1.ASN1Encodable
    public int hashCode() {
        DERObjectIdentifier dERObjectIdentifier = this.directReference;
        int hashCode = dERObjectIdentifier != null ? dERObjectIdentifier.hashCode() : 0;
        DERInteger dERInteger = this.indirectReference;
        int i = hashCode;
        if (dERInteger != null) {
            i = hashCode ^ dERInteger.hashCode();
        }
        ASN1Object aSN1Object = this.dataValueDescriptor;
        int i2 = i;
        if (aSN1Object != null) {
            i2 = i ^ aSN1Object.hashCode();
        }
        return i2 ^ this.externalContent.hashCode();
    }
}
