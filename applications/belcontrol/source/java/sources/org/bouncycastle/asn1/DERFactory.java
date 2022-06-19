package org.bouncycastle.asn1;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/DERFactory.class */
public class DERFactory {
    public static final DERSequence EMPTY_SEQUENCE = new DERSequence();
    public static final DERSet EMPTY_SET = new DERSet();

    public static DERSequence createSequence(ASN1EncodableVector aSN1EncodableVector) {
        return aSN1EncodableVector.size() < 1 ? EMPTY_SEQUENCE : new DERSequence(aSN1EncodableVector);
    }

    public static DERSet createSet(ASN1EncodableVector aSN1EncodableVector) {
        return aSN1EncodableVector.size() < 1 ? EMPTY_SET : new DERSet(aSN1EncodableVector);
    }

    public static DERSet createSet(ASN1EncodableVector aSN1EncodableVector, boolean z) {
        return aSN1EncodableVector.size() < 1 ? EMPTY_SET : new DERSet(aSN1EncodableVector, z);
    }
}
