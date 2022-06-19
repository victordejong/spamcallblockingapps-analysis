package org.bouncycastle.asn1.p009x9;

import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;
/* renamed from: org.bouncycastle.asn1.x9.X9FieldID */
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/x9/X9FieldID.class */
public class X9FieldID extends ASN1Encodable implements X9ObjectIdentifiers {

    /* renamed from: id */
    private DERObjectIdentifier f7289id;
    private DERObject parameters;

    public X9FieldID(int i, int i2, int i3, int i4) {
        this.f7289id = X9ObjectIdentifiers.characteristic_two_field;
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(new DERInteger(i));
        if (i3 == 0) {
            aSN1EncodableVector.add(X9ObjectIdentifiers.tpBasis);
            aSN1EncodableVector.add(new DERInteger(i2));
        } else {
            aSN1EncodableVector.add(X9ObjectIdentifiers.ppBasis);
            ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
            aSN1EncodableVector2.add(new DERInteger(i2));
            aSN1EncodableVector2.add(new DERInteger(i3));
            aSN1EncodableVector2.add(new DERInteger(i4));
            aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector2));
        }
        this.parameters = new DERSequence(aSN1EncodableVector);
    }

    public X9FieldID(BigInteger bigInteger) {
        this.f7289id = X9ObjectIdentifiers.prime_field;
        this.parameters = new DERInteger(bigInteger);
    }

    public X9FieldID(ASN1Sequence aSN1Sequence) {
        this.f7289id = (DERObjectIdentifier) aSN1Sequence.getObjectAt(0);
        this.parameters = (DERObject) aSN1Sequence.getObjectAt(1);
    }

    public DERObjectIdentifier getIdentifier() {
        return this.f7289id;
    }

    public DERObject getParameters() {
        return this.parameters;
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.f7289id);
        aSN1EncodableVector.add(this.parameters);
        return new DERSequence(aSN1EncodableVector);
    }
}
