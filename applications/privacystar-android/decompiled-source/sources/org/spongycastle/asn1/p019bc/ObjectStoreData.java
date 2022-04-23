package org.spongycastle.asn1.p019bc;

import java.math.BigInteger;
import java.util.Date;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1GeneralizedTime;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERGeneralizedTime;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERUTF8String;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
/* renamed from: org.spongycastle.asn1.bc.ObjectStoreData */
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/bc/ObjectStoreData.class */
public class ObjectStoreData extends ASN1Object {
    private final String comment;
    private final ASN1GeneralizedTime creationDate;
    private final AlgorithmIdentifier integrityAlgorithm;
    private final ASN1GeneralizedTime lastModifiedDate;
    private final ObjectDataSequence objectDataSequence;
    private final BigInteger version;

    private ObjectStoreData(ASN1Sequence aSN1Sequence) {
        this.version = ASN1Integer.getInstance(aSN1Sequence.getObjectAt(0)).getValue();
        this.integrityAlgorithm = AlgorithmIdentifier.getInstance(aSN1Sequence.getObjectAt(1));
        this.creationDate = ASN1GeneralizedTime.getInstance(aSN1Sequence.getObjectAt(2));
        this.lastModifiedDate = ASN1GeneralizedTime.getInstance(aSN1Sequence.getObjectAt(3));
        this.objectDataSequence = ObjectDataSequence.getInstance(aSN1Sequence.getObjectAt(4));
        this.comment = aSN1Sequence.size() == 6 ? DERUTF8String.getInstance(aSN1Sequence.getObjectAt(5)).getString() : null;
    }

    public ObjectStoreData(AlgorithmIdentifier algorithmIdentifier, Date date, Date date2, ObjectDataSequence objectDataSequence, String str) {
        this.version = BigInteger.valueOf(1L);
        this.integrityAlgorithm = algorithmIdentifier;
        this.creationDate = new DERGeneralizedTime(date);
        this.lastModifiedDate = new DERGeneralizedTime(date2);
        this.objectDataSequence = objectDataSequence;
        this.comment = str;
    }

    public static ObjectStoreData getInstance(Object obj) {
        if (obj instanceof ObjectStoreData) {
            return (ObjectStoreData) obj;
        }
        if (obj != null) {
            return new ObjectStoreData(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public String getComment() {
        return this.comment;
    }

    public ASN1GeneralizedTime getCreationDate() {
        return this.creationDate;
    }

    public AlgorithmIdentifier getIntegrityAlgorithm() {
        return this.integrityAlgorithm;
    }

    public ASN1GeneralizedTime getLastModifiedDate() {
        return this.lastModifiedDate;
    }

    public ObjectDataSequence getObjectDataSequence() {
        return this.objectDataSequence;
    }

    public BigInteger getVersion() {
        return this.version;
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(new ASN1Integer(this.version));
        aSN1EncodableVector.add(this.integrityAlgorithm);
        aSN1EncodableVector.add(this.creationDate);
        aSN1EncodableVector.add(this.lastModifiedDate);
        aSN1EncodableVector.add(this.objectDataSequence);
        if (this.comment != null) {
            aSN1EncodableVector.add(new DERUTF8String(this.comment));
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
