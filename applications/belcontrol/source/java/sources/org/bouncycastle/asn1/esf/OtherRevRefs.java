package org.bouncycastle.asn1.esf;

import java.io.IOException;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/esf/OtherRevRefs.class */
public class OtherRevRefs extends ASN1Encodable {
    private ASN1ObjectIdentifier otherRevRefType;
    private ASN1Object otherRevRefs;

    private OtherRevRefs(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.size() == 2) {
            this.otherRevRefType = new ASN1ObjectIdentifier(((DERObjectIdentifier) aSN1Sequence.getObjectAt(0)).getId());
            try {
                this.otherRevRefs = ASN1Object.fromByteArray(aSN1Sequence.getObjectAt(1).getDERObject().getDEREncoded());
                return;
            } catch (IOException e) {
                throw new IllegalStateException();
            }
        }
        throw new IllegalArgumentException("Bad sequence size: " + aSN1Sequence.size());
    }

    public static OtherRevRefs getInstance(Object obj) {
        if (obj instanceof OtherRevRefs) {
            return (OtherRevRefs) obj;
        }
        if (obj == null) {
            throw new IllegalArgumentException("null value in getInstance");
        }
        return new OtherRevRefs(ASN1Sequence.getInstance(obj));
    }

    public ASN1ObjectIdentifier getOtherRevRefType() {
        return this.otherRevRefType;
    }

    public ASN1Object getOtherRevRefs() {
        return this.otherRevRefs;
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.otherRevRefType);
        aSN1EncodableVector.add(this.otherRevRefs);
        return new DERSequence(aSN1EncodableVector);
    }
}
