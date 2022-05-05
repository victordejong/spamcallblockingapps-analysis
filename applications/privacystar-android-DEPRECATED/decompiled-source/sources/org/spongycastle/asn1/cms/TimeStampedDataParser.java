package org.spongycastle.asn1.cms;

import java.io.IOException;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1OctetStringParser;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1SequenceParser;
import org.spongycastle.asn1.DERIA5String;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/cms/TimeStampedDataParser.class */
public class TimeStampedDataParser {
    private ASN1OctetStringParser content;
    private DERIA5String dataUri;
    private MetaData metaData;
    private ASN1SequenceParser parser;
    private Evidence temporalEvidence;
    private ASN1Integer version;

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0042, code lost:
        if ((r6 instanceof org.spongycastle.asn1.ASN1SequenceParser) != false) goto L_0x0045;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private TimeStampedDataParser(org.spongycastle.asn1.ASN1SequenceParser r4) throws java.io.IOException {
        /*
            r3 = this;
            r0 = r3
            r0.<init>()
            r0 = r3
            r1 = r4
            r0.parser = r1
            r0 = r3
            r1 = r4
            org.spongycastle.asn1.ASN1Encodable r1 = r1.readObject()
            org.spongycastle.asn1.ASN1Integer r1 = org.spongycastle.asn1.ASN1Integer.getInstance(r1)
            r0.version = r1
            r0 = r4
            org.spongycastle.asn1.ASN1Encodable r0 = r0.readObject()
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r5
            boolean r0 = r0 instanceof org.spongycastle.asn1.DERIA5String
            if (r0 == 0) goto L_0x0035
            r0 = r3
            r1 = r5
            org.spongycastle.asn1.DERIA5String r1 = org.spongycastle.asn1.DERIA5String.getInstance(r1)
            r0.dataUri = r1
            r0 = r4
            org.spongycastle.asn1.ASN1Encodable r0 = r0.readObject()
            r6 = r0
        L_0x0035:
            r0 = r6
            boolean r0 = r0 instanceof org.spongycastle.asn1.cms.MetaData
            if (r0 != 0) goto L_0x0045
            r0 = r6
            r5 = r0
            r0 = r6
            boolean r0 = r0 instanceof org.spongycastle.asn1.ASN1SequenceParser
            if (r0 == 0) goto L_0x0059
        L_0x0045:
            r0 = r3
            r1 = r6
            org.spongycastle.asn1.ASN1Primitive r1 = r1.toASN1Primitive()
            org.spongycastle.asn1.cms.MetaData r1 = org.spongycastle.asn1.cms.MetaData.getInstance(r1)
            r0.metaData = r1
            r0 = r4
            org.spongycastle.asn1.ASN1Encodable r0 = r0.readObject()
            r5 = r0
        L_0x0059:
            r0 = r5
            boolean r0 = r0 instanceof org.spongycastle.asn1.ASN1OctetStringParser
            if (r0 == 0) goto L_0x0068
            r0 = r3
            r1 = r5
            org.spongycastle.asn1.ASN1OctetStringParser r1 = (org.spongycastle.asn1.ASN1OctetStringParser) r1
            r0.content = r1
        L_0x0068:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.asn1.cms.TimeStampedDataParser.<init>(org.spongycastle.asn1.ASN1SequenceParser):void");
    }

    public static TimeStampedDataParser getInstance(Object obj) throws IOException {
        if (obj instanceof ASN1Sequence) {
            return new TimeStampedDataParser(((ASN1Sequence) obj).parser());
        }
        if (obj instanceof ASN1SequenceParser) {
            return new TimeStampedDataParser((ASN1SequenceParser) obj);
        }
        return null;
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

    public Evidence getTemporalEvidence() throws IOException {
        if (this.temporalEvidence == null) {
            this.temporalEvidence = Evidence.getInstance(this.parser.readObject().toASN1Primitive());
        }
        return this.temporalEvidence;
    }
}
