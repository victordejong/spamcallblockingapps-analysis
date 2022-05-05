package org.spongycastle.asn1.cmp;

import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/cmp/PollReqContent.class */
public class PollReqContent extends ASN1Object {
    private ASN1Sequence content;

    public PollReqContent(ASN1Integer aSN1Integer) {
        this(new DERSequence(new DERSequence(aSN1Integer)));
    }

    private PollReqContent(ASN1Sequence aSN1Sequence) {
        this.content = aSN1Sequence;
    }

    public static PollReqContent getInstance(Object obj) {
        if (obj instanceof PollReqContent) {
            return (PollReqContent) obj;
        }
        if (obj != null) {
            return new PollReqContent(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    private static ASN1Integer[] sequenceToASN1IntegerArray(ASN1Sequence aSN1Sequence) {
        ASN1Integer[] aSN1IntegerArr = new ASN1Integer[aSN1Sequence.size()];
        for (int i = 0; i != aSN1IntegerArr.length; i++) {
            aSN1IntegerArr[i] = ASN1Integer.getInstance(aSN1Sequence.getObjectAt(i));
        }
        return aSN1IntegerArr;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [org.spongycastle.asn1.ASN1Integer[], org.spongycastle.asn1.ASN1Integer[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.spongycastle.asn1.ASN1Integer[][] getCertReqIds() {
        /*
            r5 = this;
            r0 = r5
            org.spongycastle.asn1.ASN1Sequence r0 = r0.content
            int r0 = r0.size()
            org.spongycastle.asn1.ASN1Integer[] r0 = new org.spongycastle.asn1.ASN1Integer[r0]
            r6 = r0
            r0 = 0
            r7 = r0
        L_0x000d:
            r0 = r7
            r1 = r6
            int r1 = r1.length
            if (r0 == r1) goto L_0x002a
            r0 = r6
            r1 = r7
            r2 = r5
            org.spongycastle.asn1.ASN1Sequence r2 = r2.content
            r3 = r7
            org.spongycastle.asn1.ASN1Encodable r2 = r2.getObjectAt(r3)
            org.spongycastle.asn1.ASN1Sequence r2 = (org.spongycastle.asn1.ASN1Sequence) r2
            org.spongycastle.asn1.ASN1Integer[] r2 = sequenceToASN1IntegerArray(r2)
            r0[r1] = r2
            int r7 = r7 + 1
            goto L_0x000d
        L_0x002a:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.asn1.cmp.PollReqContent.getCertReqIds():org.spongycastle.asn1.ASN1Integer[][]");
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return this.content;
    }
}
