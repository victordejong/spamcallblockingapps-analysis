package org.bouncycastle.asn1.pkcs;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.BERSequence;
import org.bouncycastle.asn1.DERObject;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/pkcs/AuthenticatedSafe.class */
public class AuthenticatedSafe extends ASN1Encodable {
    public ContentInfo[] info;

    public AuthenticatedSafe(ASN1Sequence aSN1Sequence) {
        this.info = new ContentInfo[aSN1Sequence.size()];
        int i = 0;
        while (true) {
            ContentInfo[] contentInfoArr = this.info;
            if (i != contentInfoArr.length) {
                contentInfoArr[i] = ContentInfo.getInstance(aSN1Sequence.getObjectAt(i));
                i++;
            } else {
                return;
            }
        }
    }

    public AuthenticatedSafe(ContentInfo[] contentInfoArr) {
        this.info = contentInfoArr;
    }

    public ContentInfo[] getContentInfo() {
        return this.info;
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        int i = 0;
        while (true) {
            ContentInfo[] contentInfoArr = this.info;
            if (i != contentInfoArr.length) {
                aSN1EncodableVector.add(contentInfoArr[i]);
                i++;
            } else {
                return new BERSequence(aSN1EncodableVector);
            }
        }
    }
}
