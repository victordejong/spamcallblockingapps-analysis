package org.bouncycastle.asn1.crmf;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERNull;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERTaggedObject;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/crmf/ProofOfPossession.class */
public class ProofOfPossession extends ASN1Encodable implements ASN1Choice {
    public static final int TYPE_KEY_AGREEMENT = 3;
    public static final int TYPE_KEY_ENCIPHERMENT = 2;
    public static final int TYPE_RA_VERIFIED = 0;
    public static final int TYPE_SIGNING_KEY = 1;
    private ASN1Encodable obj;
    private int tagNo;

    public ProofOfPossession() {
        this.tagNo = 0;
        this.obj = DERNull.INSTANCE;
    }

    public ProofOfPossession(int i, POPOPrivKey pOPOPrivKey) {
        this.tagNo = i;
        this.obj = pOPOPrivKey;
    }

    private ProofOfPossession(ASN1TaggedObject aSN1TaggedObject) {
        POPOPrivKey pOPOPrivKey;
        int tagNo = aSN1TaggedObject.getTagNo();
        this.tagNo = tagNo;
        if (tagNo == 0) {
            pOPOPrivKey = DERNull.INSTANCE;
        } else if (tagNo == 1) {
            pOPOPrivKey = POPOSigningKey.getInstance(aSN1TaggedObject, false);
        } else if (tagNo != 2 && tagNo != 3) {
            throw new IllegalArgumentException("unknown tag: " + this.tagNo);
        } else {
            pOPOPrivKey = POPOPrivKey.getInstance(aSN1TaggedObject, false);
        }
        this.obj = pOPOPrivKey;
    }

    public ProofOfPossession(POPOSigningKey pOPOSigningKey) {
        this.tagNo = 1;
        this.obj = pOPOSigningKey;
    }

    public static ProofOfPossession getInstance(Object obj) {
        if (obj instanceof ProofOfPossession) {
            return (ProofOfPossession) obj;
        }
        if (obj instanceof ASN1TaggedObject) {
            return new ProofOfPossession((ASN1TaggedObject) obj);
        }
        throw new IllegalArgumentException("Invalid object: " + obj.getClass().getName());
    }

    public ASN1Encodable getObject() {
        return this.obj;
    }

    public int getType() {
        return this.tagNo;
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        return new DERTaggedObject(false, this.tagNo, this.obj);
    }
}
