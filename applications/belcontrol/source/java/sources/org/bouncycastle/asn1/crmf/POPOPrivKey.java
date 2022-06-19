package org.bouncycastle.asn1.crmf;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.cms.EnvelopedData;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/crmf/POPOPrivKey.class */
public class POPOPrivKey extends ASN1Encodable implements ASN1Choice {
    public static final int agreeMAC = 3;
    public static final int dhMAC = 2;
    public static final int encryptedKey = 4;
    public static final int subsequentMessage = 1;
    public static final int thisMessage = 0;
    private ASN1Encodable obj;
    private int tagNo;

    private POPOPrivKey(ASN1TaggedObject aSN1TaggedObject) {
        EnvelopedData envelopedData;
        int tagNo = aSN1TaggedObject.getTagNo();
        this.tagNo = tagNo;
        if (tagNo != 0) {
            if (tagNo == 1) {
                envelopedData = SubsequentMessage.valueOf(DERInteger.getInstance(aSN1TaggedObject, false).getValue().intValue());
            } else if (tagNo != 2) {
                if (tagNo == 3) {
                    envelopedData = PKMACValue.getInstance(aSN1TaggedObject, false);
                } else if (tagNo != 4) {
                    throw new IllegalArgumentException("unknown tag in POPOPrivKey");
                } else {
                    envelopedData = EnvelopedData.getInstance(aSN1TaggedObject, false);
                }
            }
            this.obj = envelopedData;
        }
        envelopedData = DERBitString.getInstance(aSN1TaggedObject, false);
        this.obj = envelopedData;
    }

    public POPOPrivKey(SubsequentMessage subsequentMessage2) {
        this.tagNo = 1;
        this.obj = subsequentMessage2;
    }

    public static POPOPrivKey getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return new POPOPrivKey(ASN1TaggedObject.getInstance(aSN1TaggedObject.getObject()));
    }

    public int getType() {
        return this.tagNo;
    }

    public ASN1Encodable getValue() {
        return this.obj;
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        return new DERTaggedObject(false, this.tagNo, this.obj);
    }
}
