package org.bouncycastle.asn1.pkcs;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.BERSequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/pkcs/Pfx.class */
public class Pfx extends ASN1Encodable implements PKCSObjectIdentifiers {
    private ContentInfo contentInfo;
    private MacData macData;

    public Pfx(ASN1Sequence aSN1Sequence) {
        this.macData = null;
        if (((DERInteger) aSN1Sequence.getObjectAt(0)).getValue().intValue() == 3) {
            this.contentInfo = ContentInfo.getInstance(aSN1Sequence.getObjectAt(1));
            if (aSN1Sequence.size() != 3) {
                return;
            }
            this.macData = MacData.getInstance(aSN1Sequence.getObjectAt(2));
            return;
        }
        throw new IllegalArgumentException("wrong version for PFX PDU");
    }

    public Pfx(ContentInfo contentInfo, MacData macData) {
        this.macData = null;
        this.contentInfo = contentInfo;
        this.macData = macData;
    }

    public ContentInfo getAuthSafe() {
        return this.contentInfo;
    }

    public MacData getMacData() {
        return this.macData;
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(new DERInteger(3));
        aSN1EncodableVector.add(this.contentInfo);
        MacData macData = this.macData;
        if (macData != null) {
            aSN1EncodableVector.add(macData);
        }
        return new BERSequence(aSN1EncodableVector);
    }
}
