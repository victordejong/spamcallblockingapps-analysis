package org.bouncycastle.asn1.esf;

import java.io.IOException;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/esf/OtherRevVals.class */
public class OtherRevVals extends ASN1Encodable {
    private DERObjectIdentifier otherRevValType;
    private ASN1Object otherRevVals;

    public OtherRevVals(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.size() == 2) {
            this.otherRevValType = (DERObjectIdentifier) aSN1Sequence.getObjectAt(0);
            try {
                this.otherRevVals = ASN1Object.fromByteArray(aSN1Sequence.getObjectAt(1).getDERObject().getDEREncoded());
                return;
            } catch (IOException e) {
                throw new IllegalStateException();
            }
        }
        throw new IllegalArgumentException("Bad sequence size: " + aSN1Sequence.size());
    }

    public OtherRevVals(DERObjectIdentifier dERObjectIdentifier, ASN1Object aSN1Object) {
        this.otherRevValType = dERObjectIdentifier;
        this.otherRevVals = aSN1Object;
    }

    public static OtherRevVals getInstance(Object obj) {
        return (obj == null || (obj instanceof OtherRevVals)) ? (OtherRevVals) obj : new OtherRevVals((ASN1Sequence) obj);
    }

    public DERObjectIdentifier getOtherRevValType() {
        return this.otherRevValType;
    }

    public ASN1Object getOtherRevVals() {
        return this.otherRevVals;
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.otherRevValType);
        aSN1EncodableVector.add(this.otherRevVals);
        return new DERSequence(aSN1EncodableVector);
    }
}
