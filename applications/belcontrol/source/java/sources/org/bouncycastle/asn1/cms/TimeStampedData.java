package org.bouncycastle.asn1.cms;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.BERSequence;
import org.bouncycastle.asn1.DERIA5String;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/cms/TimeStampedData.class */
public class TimeStampedData extends ASN1Encodable {
    private ASN1OctetString content;
    private DERIA5String dataUri;
    private MetaData metaData;
    private Evidence temporalEvidence;
    private DERInteger version;

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0040, code lost:
        if ((r5.getObjectAt(r6) instanceof org.bouncycastle.asn1.ASN1Sequence) != false) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private TimeStampedData(org.bouncycastle.asn1.ASN1Sequence r5) {
        /*
            r4 = this;
            r0 = r4
            r0.<init>()
            r0 = r4
            r1 = r5
            r2 = 0
            org.bouncycastle.asn1.DEREncodable r1 = r1.getObjectAt(r2)
            org.bouncycastle.asn1.DERInteger r1 = org.bouncycastle.asn1.DERInteger.getInstance(r1)
            r0.version = r1
            r0 = 1
            r6 = r0
            r0 = r5
            r1 = 1
            org.bouncycastle.asn1.DEREncodable r0 = r0.getObjectAt(r1)
            boolean r0 = r0 instanceof org.bouncycastle.asn1.DERIA5String
            if (r0 == 0) goto L2b
            r0 = r4
            r1 = r5
            r2 = 1
            org.bouncycastle.asn1.DEREncodable r1 = r1.getObjectAt(r2)
            org.bouncycastle.asn1.DERIA5String r1 = org.bouncycastle.asn1.DERIA5String.getInstance(r1)
            r0.dataUri = r1
            r0 = 2
            r6 = r0
        L2b:
            r0 = r5
            r1 = r6
            org.bouncycastle.asn1.DEREncodable r0 = r0.getObjectAt(r1)
            boolean r0 = r0 instanceof org.bouncycastle.asn1.cms.MetaData
            if (r0 != 0) goto L43
            r0 = r6
            r7 = r0
            r0 = r5
            r1 = r6
            org.bouncycastle.asn1.DEREncodable r0 = r0.getObjectAt(r1)
            boolean r0 = r0 instanceof org.bouncycastle.asn1.ASN1Sequence
            if (r0 == 0) goto L53
        L43:
            r0 = r4
            r1 = r5
            r2 = r6
            org.bouncycastle.asn1.DEREncodable r1 = r1.getObjectAt(r2)
            org.bouncycastle.asn1.cms.MetaData r1 = org.bouncycastle.asn1.cms.MetaData.getInstance(r1)
            r0.metaData = r1
            r0 = r6
            r1 = 1
            int r0 = r0 + r1
            r7 = r0
        L53:
            r0 = r7
            r6 = r0
            r0 = r5
            r1 = r7
            org.bouncycastle.asn1.DEREncodable r0 = r0.getObjectAt(r1)
            boolean r0 = r0 instanceof org.bouncycastle.asn1.ASN1OctetString
            if (r0 == 0) goto L70
            r0 = r4
            r1 = r5
            r2 = r7
            org.bouncycastle.asn1.DEREncodable r1 = r1.getObjectAt(r2)
            org.bouncycastle.asn1.ASN1OctetString r1 = org.bouncycastle.asn1.ASN1OctetString.getInstance(r1)
            r0.content = r1
            r0 = r7
            r1 = 1
            int r0 = r0 + r1
            r6 = r0
        L70:
            r0 = r4
            r1 = r5
            r2 = r6
            org.bouncycastle.asn1.DEREncodable r1 = r1.getObjectAt(r2)
            org.bouncycastle.asn1.cms.Evidence r1 = org.bouncycastle.asn1.cms.Evidence.getInstance(r1)
            r0.temporalEvidence = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.asn1.cms.TimeStampedData.<init>(org.bouncycastle.asn1.ASN1Sequence):void");
    }

    public TimeStampedData(DERIA5String dERIA5String, MetaData metaData, ASN1OctetString aSN1OctetString, Evidence evidence) {
        this.version = new DERInteger(1);
        this.dataUri = dERIA5String;
        this.metaData = metaData;
        this.content = aSN1OctetString;
        this.temporalEvidence = evidence;
    }

    public static TimeStampedData getInstance(Object obj) {
        if (obj instanceof TimeStampedData) {
            return (TimeStampedData) obj;
        }
        if (obj == null) {
            return null;
        }
        return new TimeStampedData(ASN1Sequence.getInstance(obj));
    }

    public ASN1OctetString getContent() {
        return this.content;
    }

    public DERIA5String getDataUri() {
        return this.dataUri;
    }

    public MetaData getMetaData() {
        return this.metaData;
    }

    public Evidence getTemporalEvidence() {
        return this.temporalEvidence;
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.version);
        DERIA5String dERIA5String = this.dataUri;
        if (dERIA5String != null) {
            aSN1EncodableVector.add(dERIA5String);
        }
        MetaData metaData = this.metaData;
        if (metaData != null) {
            aSN1EncodableVector.add(metaData);
        }
        ASN1OctetString aSN1OctetString = this.content;
        if (aSN1OctetString != null) {
            aSN1EncodableVector.add(aSN1OctetString);
        }
        aSN1EncodableVector.add(this.temporalEvidence);
        return new BERSequence(aSN1EncodableVector);
    }
}
