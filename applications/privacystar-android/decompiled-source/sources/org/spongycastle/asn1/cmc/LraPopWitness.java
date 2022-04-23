package org.spongycastle.asn1.cmc;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/cmc/LraPopWitness.class */
public class LraPopWitness extends ASN1Object {
    private final ASN1Sequence bodyIds;
    private final BodyPartID pkiDataBodyid;

    private LraPopWitness(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.size() != 2) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.pkiDataBodyid = BodyPartID.getInstance(aSN1Sequence.getObjectAt(0));
        this.bodyIds = ASN1Sequence.getInstance(aSN1Sequence.getObjectAt(1));
    }

    public LraPopWitness(BodyPartID bodyPartID, ASN1Sequence aSN1Sequence) {
        this.pkiDataBodyid = bodyPartID;
        this.bodyIds = aSN1Sequence;
    }

    public static LraPopWitness getInstance(Object obj) {
        if (obj instanceof LraPopWitness) {
            return (LraPopWitness) obj;
        }
        if (obj != null) {
            return new LraPopWitness(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public BodyPartID[] getBodyIds() {
        BodyPartID[] bodyPartIDArr = new BodyPartID[this.bodyIds.size()];
        for (int i = 0; i != this.bodyIds.size(); i++) {
            bodyPartIDArr[i] = BodyPartID.getInstance(this.bodyIds.getObjectAt(i));
        }
        return bodyPartIDArr;
    }

    public BodyPartID getPkiDataBodyid() {
        return this.pkiDataBodyid;
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.pkiDataBodyid);
        aSN1EncodableVector.add(this.bodyIds);
        return new DERSequence(aSN1EncodableVector);
    }
}
