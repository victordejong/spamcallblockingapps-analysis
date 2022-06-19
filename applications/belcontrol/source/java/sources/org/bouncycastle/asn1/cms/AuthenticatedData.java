package org.bouncycastle.asn1.cms;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1Set;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.BERSequence;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/cms/AuthenticatedData.class */
public class AuthenticatedData extends ASN1Encodable {
    private ASN1Set authAttrs;
    private AlgorithmIdentifier digestAlgorithm;
    private ContentInfo encapsulatedContentInfo;
    private ASN1OctetString mac;
    private AlgorithmIdentifier macAlgorithm;
    private OriginatorInfo originatorInfo;
    private ASN1Set recipientInfos;
    private ASN1Set unauthAttrs;
    private DERInteger version;

    public AuthenticatedData(ASN1Sequence aSN1Sequence) {
        this.version = (DERInteger) aSN1Sequence.getObjectAt(0);
        DEREncodable objectAt = aSN1Sequence.getObjectAt(1);
        int i = 2;
        DEREncodable dEREncodable = objectAt;
        if (objectAt instanceof ASN1TaggedObject) {
            this.originatorInfo = OriginatorInfo.getInstance((ASN1TaggedObject) objectAt, false);
            dEREncodable = aSN1Sequence.getObjectAt(2);
            i = 3;
        }
        this.recipientInfos = ASN1Set.getInstance(dEREncodable);
        int i2 = i + 1;
        this.macAlgorithm = AlgorithmIdentifier.getInstance(aSN1Sequence.getObjectAt(i));
        int i3 = i2 + 1;
        DEREncodable objectAt2 = aSN1Sequence.getObjectAt(i2);
        DEREncodable dEREncodable2 = objectAt2;
        int i4 = i3;
        if (objectAt2 instanceof ASN1TaggedObject) {
            this.digestAlgorithm = AlgorithmIdentifier.getInstance((ASN1TaggedObject) objectAt2, false);
            dEREncodable2 = aSN1Sequence.getObjectAt(i3);
            i4 = i3 + 1;
        }
        this.encapsulatedContentInfo = ContentInfo.getInstance(dEREncodable2);
        int i5 = i4 + 1;
        DEREncodable objectAt3 = aSN1Sequence.getObjectAt(i4);
        int i6 = i5;
        DEREncodable dEREncodable3 = objectAt3;
        if (objectAt3 instanceof ASN1TaggedObject) {
            this.authAttrs = ASN1Set.getInstance((ASN1TaggedObject) objectAt3, false);
            dEREncodable3 = aSN1Sequence.getObjectAt(i5);
            i6 = i5 + 1;
        }
        this.mac = ASN1OctetString.getInstance(dEREncodable3);
        if (aSN1Sequence.size() > i6) {
            this.unauthAttrs = ASN1Set.getInstance((ASN1TaggedObject) aSN1Sequence.getObjectAt(i6), false);
        }
    }

    public AuthenticatedData(OriginatorInfo originatorInfo, ASN1Set aSN1Set, AlgorithmIdentifier algorithmIdentifier, AlgorithmIdentifier algorithmIdentifier2, ContentInfo contentInfo, ASN1Set aSN1Set2, ASN1OctetString aSN1OctetString, ASN1Set aSN1Set3) {
        if (!(algorithmIdentifier2 == null && aSN1Set2 == null) && (algorithmIdentifier2 == null || aSN1Set2 == null)) {
            throw new IllegalArgumentException("digestAlgorithm and authAttrs must be set together");
        }
        this.version = new DERInteger(calculateVersion(originatorInfo));
        this.originatorInfo = originatorInfo;
        this.macAlgorithm = algorithmIdentifier;
        this.digestAlgorithm = algorithmIdentifier2;
        this.recipientInfos = aSN1Set;
        this.encapsulatedContentInfo = contentInfo;
        this.authAttrs = aSN1Set2;
        this.mac = aSN1OctetString;
        this.unauthAttrs = aSN1Set3;
    }

    public static int calculateVersion(OriginatorInfo originatorInfo) {
        int i;
        int i2 = 0;
        if (originatorInfo == null) {
            return 0;
        }
        Enumeration objects = originatorInfo.getCertificates().getObjects();
        while (true) {
            i = i2;
            if (!objects.hasMoreElements()) {
                break;
            }
            Object nextElement = objects.nextElement();
            if (nextElement instanceof ASN1TaggedObject) {
                ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) nextElement;
                if (aSN1TaggedObject.getTagNo() == 2) {
                    i2 = 1;
                } else if (aSN1TaggedObject.getTagNo() == 3) {
                    i = 3;
                    break;
                }
            }
        }
        Enumeration objects2 = originatorInfo.getCRLs().getObjects();
        while (true) {
            if (!objects2.hasMoreElements()) {
                break;
            }
            Object nextElement2 = objects2.nextElement();
            if ((nextElement2 instanceof ASN1TaggedObject) && ((ASN1TaggedObject) nextElement2).getTagNo() == 1) {
                i = 3;
                break;
            }
        }
        return i;
    }

    public static AuthenticatedData getInstance(Object obj) {
        if (obj == null || (obj instanceof AuthenticatedData)) {
            return (AuthenticatedData) obj;
        }
        if (obj instanceof ASN1Sequence) {
            return new AuthenticatedData((ASN1Sequence) obj);
        }
        throw new IllegalArgumentException("Invalid AuthenticatedData: " + obj.getClass().getName());
    }

    public static AuthenticatedData getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return getInstance(ASN1Sequence.getInstance(aSN1TaggedObject, z));
    }

    public ASN1Set getAuthAttrs() {
        return this.authAttrs;
    }

    public AlgorithmIdentifier getDigestAlgorithm() {
        return this.digestAlgorithm;
    }

    public ContentInfo getEncapsulatedContentInfo() {
        return this.encapsulatedContentInfo;
    }

    public ASN1OctetString getMac() {
        return this.mac;
    }

    public AlgorithmIdentifier getMacAlgorithm() {
        return this.macAlgorithm;
    }

    public OriginatorInfo getOriginatorInfo() {
        return this.originatorInfo;
    }

    public ASN1Set getRecipientInfos() {
        return this.recipientInfos;
    }

    public ASN1Set getUnauthAttrs() {
        return this.unauthAttrs;
    }

    public DERInteger getVersion() {
        return this.version;
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.version);
        if (this.originatorInfo != null) {
            aSN1EncodableVector.add(new DERTaggedObject(false, 0, this.originatorInfo));
        }
        aSN1EncodableVector.add(this.recipientInfos);
        aSN1EncodableVector.add(this.macAlgorithm);
        if (this.digestAlgorithm != null) {
            aSN1EncodableVector.add(new DERTaggedObject(false, 1, this.digestAlgorithm));
        }
        aSN1EncodableVector.add(this.encapsulatedContentInfo);
        if (this.authAttrs != null) {
            aSN1EncodableVector.add(new DERTaggedObject(false, 2, this.authAttrs));
        }
        aSN1EncodableVector.add(this.mac);
        if (this.unauthAttrs != null) {
            aSN1EncodableVector.add(new DERTaggedObject(false, 3, this.unauthAttrs));
        }
        return new BERSequence(aSN1EncodableVector);
    }
}
