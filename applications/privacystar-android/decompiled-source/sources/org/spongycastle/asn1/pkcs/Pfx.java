package org.spongycastle.asn1.pkcs;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.BERSequence;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/pkcs/Pfx.class */
public class Pfx extends ASN1Object implements PKCSObjectIdentifiers {
    private ContentInfo contentInfo;
    private MacData macData;

    private Pfx(ASN1Sequence aSN1Sequence) {
        this.macData = null;
        if (((ASN1Integer) aSN1Sequence.getObjectAt(0)).getValue().intValue() != 3) {
            throw new IllegalArgumentException("wrong version for PFX PDU");
        }
        this.contentInfo = ContentInfo.getInstance(aSN1Sequence.getObjectAt(1));
        if (aSN1Sequence.size() == 3) {
            this.macData = MacData.getInstance(aSN1Sequence.getObjectAt(2));
        }
    }

    public Pfx(ContentInfo contentInfo, MacData macData) {
        this.macData = null;
        this.contentInfo = contentInfo;
        this.macData = macData;
    }

    public static Pfx getInstance(Object obj) {
        if (obj instanceof Pfx) {
            return (Pfx) obj;
        }
        if (obj != null) {
            return new Pfx(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public ContentInfo getAuthSafe() {
        return this.contentInfo;
    }

    public MacData getMacData() {
        return this.macData;
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(new ASN1Integer(3L));
        aSN1EncodableVector.add(this.contentInfo);
        if (this.macData != null) {
            aSN1EncodableVector.add(this.macData);
        }
        return new BERSequence(aSN1EncodableVector);
    }
}
