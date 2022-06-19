package org.bouncycastle.asn1;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/BERFactory.class */
public class BERFactory {
    public static final BERSequence EMPTY_SEQUENCE = new BERSequence();
    public static final BERSet EMPTY_SET = new BERSet();

    public static BERSequence createSequence(ASN1EncodableVector aSN1EncodableVector) {
        return aSN1EncodableVector.size() < 1 ? EMPTY_SEQUENCE : new BERSequence(aSN1EncodableVector);
    }

    public static BERSet createSet(ASN1EncodableVector aSN1EncodableVector) {
        return aSN1EncodableVector.size() < 1 ? EMPTY_SET : new BERSet(aSN1EncodableVector);
    }

    public static BERSet createSet(ASN1EncodableVector aSN1EncodableVector, boolean z) {
        return aSN1EncodableVector.size() < 1 ? EMPTY_SET : new BERSet(aSN1EncodableVector, z);
    }
}
