package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.util.Strings;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/x509/CRLDistPoint.class */
public class CRLDistPoint extends ASN1Object {
    ASN1Sequence seq;

    private CRLDistPoint(ASN1Sequence aSN1Sequence) {
        this.seq = null;
        this.seq = aSN1Sequence;
    }

    public CRLDistPoint(DistributionPoint[] distributionPointArr) {
        this.seq = null;
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        for (int i = 0; i != distributionPointArr.length; i++) {
            aSN1EncodableVector.add(distributionPointArr[i]);
        }
        this.seq = new DERSequence(aSN1EncodableVector);
    }

    public static CRLDistPoint getInstance(Object obj) {
        if (obj instanceof CRLDistPoint) {
            return (CRLDistPoint) obj;
        }
        if (obj != null) {
            return new CRLDistPoint(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public static CRLDistPoint getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return getInstance(ASN1Sequence.getInstance(aSN1TaggedObject, z));
    }

    public DistributionPoint[] getDistributionPoints() {
        DistributionPoint[] distributionPointArr = new DistributionPoint[this.seq.size()];
        for (int i = 0; i != this.seq.size(); i++) {
            distributionPointArr[i] = DistributionPoint.getInstance(this.seq.getObjectAt(i));
        }
        return distributionPointArr;
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return this.seq;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String lineSeparator = Strings.lineSeparator();
        stringBuffer.append("CRLDistPoint:");
        stringBuffer.append(lineSeparator);
        DistributionPoint[] distributionPoints = getDistributionPoints();
        for (int i = 0; i != distributionPoints.length; i++) {
            stringBuffer.append("    ");
            stringBuffer.append(distributionPoints[i]);
            stringBuffer.append(lineSeparator);
        }
        return stringBuffer.toString();
    }
}
