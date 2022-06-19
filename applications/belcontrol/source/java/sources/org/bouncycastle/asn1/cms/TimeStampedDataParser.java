package org.bouncycastle.asn1.cms;

import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1OctetStringParser;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1SequenceParser;
import org.bouncycastle.asn1.BERSequence;
import org.bouncycastle.asn1.DERIA5String;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/cms/TimeStampedDataParser.class */
public class TimeStampedDataParser {
    private ASN1OctetStringParser content;
    private DERIA5String dataUri;
    private MetaData metaData;
    private ASN1SequenceParser parser;
    private Evidence temporalEvidence;
    private DERInteger version;

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0042, code lost:
        if ((r6 instanceof org.bouncycastle.asn1.ASN1SequenceParser) != false) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private TimeStampedDataParser(org.bouncycastle.asn1.ASN1SequenceParser r4) {
        /*
            r3 = this;
            r0 = r3
            r0.<init>()
            r0 = r3
            r1 = r4
            r0.parser = r1
            r0 = r3
            r1 = r4
            org.bouncycastle.asn1.DEREncodable r1 = r1.readObject()
            org.bouncycastle.asn1.DERInteger r1 = org.bouncycastle.asn1.DERInteger.getInstance(r1)
            r0.version = r1
            r0 = r4
            org.bouncycastle.asn1.DEREncodable r0 = r0.readObject()
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r5
            boolean r0 = r0 instanceof org.bouncycastle.asn1.DERIA5String
            if (r0 == 0) goto L35
            r0 = r3
            r1 = r5
            org.bouncycastle.asn1.DERIA5String r1 = org.bouncycastle.asn1.DERIA5String.getInstance(r1)
            r0.dataUri = r1
            r0 = r4
            org.bouncycastle.asn1.DEREncodable r0 = r0.readObject()
            r6 = r0
        L35:
            r0 = r6
            boolean r0 = r0 instanceof org.bouncycastle.asn1.cms.MetaData
            if (r0 != 0) goto L45
            r0 = r6
            r5 = r0
            r0 = r6
            boolean r0 = r0 instanceof org.bouncycastle.asn1.ASN1SequenceParser
            if (r0 == 0) goto L59
        L45:
            r0 = r3
            r1 = r6
            org.bouncycastle.asn1.DERObject r1 = r1.getDERObject()
            org.bouncycastle.asn1.cms.MetaData r1 = org.bouncycastle.asn1.cms.MetaData.getInstance(r1)
            r0.metaData = r1
            r0 = r4
            org.bouncycastle.asn1.DEREncodable r0 = r0.readObject()
            r5 = r0
        L59:
            r0 = r5
            boolean r0 = r0 instanceof org.bouncycastle.asn1.ASN1OctetStringParser
            if (r0 == 0) goto L68
            r0 = r3
            r1 = r5
            org.bouncycastle.asn1.ASN1OctetStringParser r1 = (org.bouncycastle.asn1.ASN1OctetStringParser) r1
            r0.content = r1
        L68:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.asn1.cms.TimeStampedDataParser.<init>(org.bouncycastle.asn1.ASN1SequenceParser):void");
    }

    public static TimeStampedDataParser getInstance(Object obj) {
        if (obj instanceof ASN1Sequence) {
            return new TimeStampedDataParser(((ASN1Sequence) obj).parser());
        }
        if (!(obj instanceof ASN1SequenceParser)) {
            return null;
        }
        return new TimeStampedDataParser((ASN1SequenceParser) obj);
    }

    public ASN1OctetStringParser getContent() {
        return this.content;
    }

    public DERIA5String getDataUri() {
        return this.dataUri;
    }

    public MetaData getMetaData() {
        return this.metaData;
    }

    public Evidence getTemporalEvidence() {
        if (this.temporalEvidence == null) {
            this.temporalEvidence = Evidence.getInstance(this.parser.readObject().getDERObject());
        }
        return this.temporalEvidence;
    }

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
        ASN1OctetStringParser aSN1OctetStringParser = this.content;
        if (aSN1OctetStringParser != null) {
            aSN1EncodableVector.add(aSN1OctetStringParser);
        }
        aSN1EncodableVector.add(this.temporalEvidence);
        return new BERSequence(aSN1EncodableVector);
    }
}
