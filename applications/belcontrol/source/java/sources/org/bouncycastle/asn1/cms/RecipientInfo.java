package org.bouncycastle.asn1.cms;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERTaggedObject;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/cms/RecipientInfo.class */
public class RecipientInfo extends ASN1Encodable implements ASN1Choice {
    public DEREncodable info;

    public RecipientInfo(DERObject dERObject) {
        this.info = dERObject;
    }

    public RecipientInfo(KEKRecipientInfo kEKRecipientInfo) {
        this.info = new DERTaggedObject(false, 2, kEKRecipientInfo);
    }

    public RecipientInfo(KeyAgreeRecipientInfo keyAgreeRecipientInfo) {
        this.info = new DERTaggedObject(false, 1, keyAgreeRecipientInfo);
    }

    public RecipientInfo(KeyTransRecipientInfo keyTransRecipientInfo) {
        this.info = keyTransRecipientInfo;
    }

    public RecipientInfo(OtherRecipientInfo otherRecipientInfo) {
        this.info = new DERTaggedObject(false, 4, otherRecipientInfo);
    }

    public RecipientInfo(PasswordRecipientInfo passwordRecipientInfo) {
        this.info = new DERTaggedObject(false, 3, passwordRecipientInfo);
    }

    public static RecipientInfo getInstance(Object obj) {
        if (obj == null || (obj instanceof RecipientInfo)) {
            return (RecipientInfo) obj;
        }
        if (obj instanceof ASN1Sequence) {
            return new RecipientInfo((ASN1Sequence) obj);
        }
        if (obj instanceof ASN1TaggedObject) {
            return new RecipientInfo((ASN1TaggedObject) obj);
        }
        throw new IllegalArgumentException("unknown object in factory: " + obj.getClass().getName());
    }

    private KEKRecipientInfo getKEKInfo(ASN1TaggedObject aSN1TaggedObject) {
        return KEKRecipientInfo.getInstance(aSN1TaggedObject, aSN1TaggedObject.isExplicit());
    }

    public DEREncodable getInfo() {
        DEREncodable dEREncodable = this.info;
        if (dEREncodable instanceof ASN1TaggedObject) {
            ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) dEREncodable;
            int tagNo = aSN1TaggedObject.getTagNo();
            if (tagNo == 1) {
                return KeyAgreeRecipientInfo.getInstance(aSN1TaggedObject, false);
            }
            if (tagNo == 2) {
                return getKEKInfo(aSN1TaggedObject);
            }
            if (tagNo == 3) {
                return PasswordRecipientInfo.getInstance(aSN1TaggedObject, false);
            }
            if (tagNo != 4) {
                throw new IllegalStateException("unknown tag");
            }
            return OtherRecipientInfo.getInstance(aSN1TaggedObject, false);
        }
        return KeyTransRecipientInfo.getInstance(dEREncodable);
    }

    public DERInteger getVersion() {
        DEREncodable dEREncodable = this.info;
        if (dEREncodable instanceof ASN1TaggedObject) {
            ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) dEREncodable;
            int tagNo = aSN1TaggedObject.getTagNo();
            if (tagNo == 1) {
                return KeyAgreeRecipientInfo.getInstance(aSN1TaggedObject, false).getVersion();
            }
            if (tagNo == 2) {
                return getKEKInfo(aSN1TaggedObject).getVersion();
            }
            if (tagNo == 3) {
                return PasswordRecipientInfo.getInstance(aSN1TaggedObject, false).getVersion();
            }
            if (tagNo != 4) {
                throw new IllegalStateException("unknown tag");
            }
            return new DERInteger(0);
        }
        return KeyTransRecipientInfo.getInstance(dEREncodable).getVersion();
    }

    public boolean isTagged() {
        return this.info instanceof ASN1TaggedObject;
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        return this.info.getDERObject();
    }
}
