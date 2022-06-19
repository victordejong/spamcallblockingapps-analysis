package org.bouncycastle.asn1.cms;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1Set;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.BERSequence;
import org.bouncycastle.asn1.BERSet;
import org.bouncycastle.asn1.BERTaggedObject;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERTaggedObject;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/cms/SignedData.class */
public class SignedData extends ASN1Encodable {
    private ASN1Set certificates;
    private boolean certsBer;
    private ContentInfo contentInfo;
    private ASN1Set crls;
    private boolean crlsBer;
    private ASN1Set digestAlgorithms;
    private ASN1Set signerInfos;
    private DERInteger version;

    public SignedData(ASN1Sequence aSN1Sequence) {
        Enumeration objects = aSN1Sequence.getObjects();
        this.version = (DERInteger) objects.nextElement();
        this.digestAlgorithms = (ASN1Set) objects.nextElement();
        this.contentInfo = ContentInfo.getInstance(objects.nextElement());
        while (objects.hasMoreElements()) {
            DERObject dERObject = (DERObject) objects.nextElement();
            if (dERObject instanceof ASN1TaggedObject) {
                ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) dERObject;
                int tagNo = aSN1TaggedObject.getTagNo();
                if (tagNo == 0) {
                    this.certsBer = aSN1TaggedObject instanceof BERTaggedObject;
                    this.certificates = ASN1Set.getInstance(aSN1TaggedObject, false);
                } else if (tagNo != 1) {
                    throw new IllegalArgumentException("unknown tag value " + aSN1TaggedObject.getTagNo());
                } else {
                    this.crlsBer = aSN1TaggedObject instanceof BERTaggedObject;
                    this.crls = ASN1Set.getInstance(aSN1TaggedObject, false);
                }
            } else {
                this.signerInfos = (ASN1Set) dERObject;
            }
        }
    }

    public SignedData(ASN1Set aSN1Set, ContentInfo contentInfo, ASN1Set aSN1Set2, ASN1Set aSN1Set3, ASN1Set aSN1Set4) {
        this.version = calculateVersion(contentInfo.getContentType(), aSN1Set2, aSN1Set3, aSN1Set4);
        this.digestAlgorithms = aSN1Set;
        this.contentInfo = contentInfo;
        this.certificates = aSN1Set2;
        this.crls = aSN1Set3;
        this.signerInfos = aSN1Set4;
        this.crlsBer = aSN1Set3 instanceof BERSet;
        this.certsBer = aSN1Set2 instanceof BERSet;
    }

    private DERInteger calculateVersion(DERObjectIdentifier dERObjectIdentifier, ASN1Set aSN1Set, ASN1Set aSN1Set2, ASN1Set aSN1Set3) {
        boolean z;
        boolean z2;
        boolean z3;
        if (aSN1Set != null) {
            Enumeration objects = aSN1Set.getObjects();
            boolean z4 = false;
            boolean z5 = false;
            boolean z6 = false;
            while (true) {
                z3 = z4;
                z2 = z5;
                z = z6;
                if (!objects.hasMoreElements()) {
                    break;
                }
                Object nextElement = objects.nextElement();
                if (nextElement instanceof ASN1TaggedObject) {
                    ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) nextElement;
                    if (aSN1TaggedObject.getTagNo() == 1) {
                        z5 = true;
                    } else if (aSN1TaggedObject.getTagNo() == 2) {
                        z6 = true;
                    } else if (aSN1TaggedObject.getTagNo() == 3) {
                        z4 = true;
                    }
                }
            }
        } else {
            z3 = false;
            z2 = false;
            z = false;
        }
        if (z3) {
            return new DERInteger(5);
        }
        boolean z7 = false;
        if (aSN1Set2 != null) {
            Enumeration objects2 = aSN1Set2.getObjects();
            boolean z8 = false;
            while (true) {
                z7 = z8;
                if (!objects2.hasMoreElements()) {
                    break;
                } else if (objects2.nextElement() instanceof ASN1TaggedObject) {
                    z8 = true;
                }
            }
        }
        if (z7) {
            return new DERInteger(5);
        }
        if (z) {
            return new DERInteger(4);
        }
        if (!z2 && !checkForVersion3(aSN1Set3) && CMSObjectIdentifiers.data.equals(dERObjectIdentifier)) {
            return new DERInteger(1);
        }
        return new DERInteger(3);
    }

    private boolean checkForVersion3(ASN1Set aSN1Set) {
        Enumeration objects = aSN1Set.getObjects();
        while (objects.hasMoreElements()) {
            if (SignerInfo.getInstance(objects.nextElement()).getVersion().getValue().intValue() == 3) {
                return true;
            }
        }
        return false;
    }

    public static SignedData getInstance(Object obj) {
        if (obj instanceof SignedData) {
            return (SignedData) obj;
        }
        if (obj instanceof ASN1Sequence) {
            return new SignedData((ASN1Sequence) obj);
        }
        throw new IllegalArgumentException("unknown object in factory: " + obj.getClass().getName());
    }

    public ASN1Set getCRLs() {
        return this.crls;
    }

    public ASN1Set getCertificates() {
        return this.certificates;
    }

    public ASN1Set getDigestAlgorithms() {
        return this.digestAlgorithms;
    }

    public ContentInfo getEncapContentInfo() {
        return this.contentInfo;
    }

    public ASN1Set getSignerInfos() {
        return this.signerInfos;
    }

    public DERInteger getVersion() {
        return this.version;
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.version);
        aSN1EncodableVector.add(this.digestAlgorithms);
        aSN1EncodableVector.add(this.contentInfo);
        if (this.certificates != null) {
            aSN1EncodableVector.add(this.certsBer ? new BERTaggedObject(false, 0, this.certificates) : new DERTaggedObject(false, 0, this.certificates));
        }
        if (this.crls != null) {
            aSN1EncodableVector.add(this.crlsBer ? new BERTaggedObject(false, 1, this.crls) : new DERTaggedObject(false, 1, this.crls));
        }
        aSN1EncodableVector.add(this.signerInfos);
        return new BERSequence(aSN1EncodableVector);
    }
}
