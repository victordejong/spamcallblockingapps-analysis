package org.bouncycastle.asn1.cms;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/cms/KeyTransRecipientInfo.class */
public class KeyTransRecipientInfo extends ASN1Encodable {
    private ASN1OctetString encryptedKey;
    private AlgorithmIdentifier keyEncryptionAlgorithm;
    private RecipientIdentifier rid;
    private DERInteger version;

    public KeyTransRecipientInfo(ASN1Sequence aSN1Sequence) {
        this.version = (DERInteger) aSN1Sequence.getObjectAt(0);
        this.rid = RecipientIdentifier.getInstance(aSN1Sequence.getObjectAt(1));
        this.keyEncryptionAlgorithm = AlgorithmIdentifier.getInstance(aSN1Sequence.getObjectAt(2));
        this.encryptedKey = (ASN1OctetString) aSN1Sequence.getObjectAt(3);
    }

    public KeyTransRecipientInfo(RecipientIdentifier recipientIdentifier, AlgorithmIdentifier algorithmIdentifier, ASN1OctetString aSN1OctetString) {
        this.version = recipientIdentifier.getDERObject() instanceof ASN1TaggedObject ? new DERInteger(2) : new DERInteger(0);
        this.rid = recipientIdentifier;
        this.keyEncryptionAlgorithm = algorithmIdentifier;
        this.encryptedKey = aSN1OctetString;
    }

    public static KeyTransRecipientInfo getInstance(Object obj) {
        if (obj == null || (obj instanceof KeyTransRecipientInfo)) {
            return (KeyTransRecipientInfo) obj;
        }
        if (obj instanceof ASN1Sequence) {
            return new KeyTransRecipientInfo((ASN1Sequence) obj);
        }
        throw new IllegalArgumentException("Illegal object in KeyTransRecipientInfo: " + obj.getClass().getName());
    }

    public ASN1OctetString getEncryptedKey() {
        return this.encryptedKey;
    }

    public AlgorithmIdentifier getKeyEncryptionAlgorithm() {
        return this.keyEncryptionAlgorithm;
    }

    public RecipientIdentifier getRecipientIdentifier() {
        return this.rid;
    }

    public DERInteger getVersion() {
        return this.version;
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.version);
        aSN1EncodableVector.add(this.rid);
        aSN1EncodableVector.add(this.keyEncryptionAlgorithm);
        aSN1EncodableVector.add(this.encryptedKey);
        return new DERSequence(aSN1EncodableVector);
    }
}
