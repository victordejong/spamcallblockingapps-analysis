package org.spongycastle.asn1.dvcs;

import org.apache.commons.p018io.IOUtils;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1Set;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.cmp.PKIStatusInfo;
import org.spongycastle.asn1.x509.DigestInfo;
import org.spongycastle.asn1.x509.Extensions;
import org.spongycastle.asn1.x509.PolicyInformation;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/dvcs/DVCSCertInfo.class */
public class DVCSCertInfo extends ASN1Object {
    private static final int DEFAULT_VERSION = 1;
    private static final int TAG_CERTS = 3;
    private static final int TAG_DV_STATUS = 0;
    private static final int TAG_POLICY = 1;
    private static final int TAG_REQ_SIGNATURE = 2;
    private ASN1Sequence certs;
    private DVCSRequestInformation dvReqInfo;
    private PKIStatusInfo dvStatus;
    private Extensions extensions;
    private DigestInfo messageImprint;
    private PolicyInformation policy;
    private ASN1Set reqSignature;
    private DVCSTime responseTime;
    private ASN1Integer serialNumber;
    private int version;

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0119 -> B:23:0x010d). Please submit an issue!!! */
    private DVCSCertInfo(ASN1Sequence aSN1Sequence) {
        int i;
        this.version = 1;
        ASN1Encodable objectAt = aSN1Sequence.getObjectAt(0);
        try {
            this.version = ASN1Integer.getInstance(objectAt).getValue().intValue();
            i = 2;
            try {
                objectAt = aSN1Sequence.getObjectAt(1);
            } catch (IllegalArgumentException e) {
            }
        } catch (IllegalArgumentException e2) {
            i = 1;
        }
        this.dvReqInfo = DVCSRequestInformation.getInstance(objectAt);
        int i2 = i + 1;
        this.messageImprint = DigestInfo.getInstance(aSN1Sequence.getObjectAt(i));
        int i3 = i2 + 1;
        this.serialNumber = ASN1Integer.getInstance(aSN1Sequence.getObjectAt(i2));
        this.responseTime = DVCSTime.getInstance(aSN1Sequence.getObjectAt(i3));
        for (int i4 = i3 + 1; i4 < aSN1Sequence.size(); i4++) {
            ASN1Encodable objectAt2 = aSN1Sequence.getObjectAt(i4);
            if (objectAt2 instanceof ASN1TaggedObject) {
                ASN1TaggedObject instance = ASN1TaggedObject.getInstance(objectAt2);
                int tagNo = instance.getTagNo();
                switch (tagNo) {
                    case 0:
                        this.dvStatus = PKIStatusInfo.getInstance(instance, false);
                        continue;
                    case 1:
                        this.policy = PolicyInformation.getInstance(ASN1Sequence.getInstance(instance, false));
                        continue;
                    case 2:
                        this.reqSignature = ASN1Set.getInstance(instance, false);
                        continue;
                    case 3:
                        this.certs = ASN1Sequence.getInstance(instance, false);
                        continue;
                    default:
                        throw new IllegalArgumentException("Unknown tag encountered: " + tagNo);
                }
            } else {
                try {
                    this.extensions = Extensions.getInstance(objectAt2);
                } catch (IllegalArgumentException e3) {
                }
            }
        }
    }

    public DVCSCertInfo(DVCSRequestInformation dVCSRequestInformation, DigestInfo digestInfo, ASN1Integer aSN1Integer, DVCSTime dVCSTime) {
        this.version = 1;
        this.dvReqInfo = dVCSRequestInformation;
        this.messageImprint = digestInfo;
        this.serialNumber = aSN1Integer;
        this.responseTime = dVCSTime;
    }

    public static DVCSCertInfo getInstance(Object obj) {
        if (obj instanceof DVCSCertInfo) {
            return (DVCSCertInfo) obj;
        }
        if (obj != null) {
            return new DVCSCertInfo(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public static DVCSCertInfo getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return getInstance(ASN1Sequence.getInstance(aSN1TaggedObject, z));
    }

    private void setDvReqInfo(DVCSRequestInformation dVCSRequestInformation) {
        this.dvReqInfo = dVCSRequestInformation;
    }

    private void setMessageImprint(DigestInfo digestInfo) {
        this.messageImprint = digestInfo;
    }

    private void setVersion(int i) {
        this.version = i;
    }

    public TargetEtcChain[] getCerts() {
        if (this.certs != null) {
            return TargetEtcChain.arrayFromSequence(this.certs);
        }
        return null;
    }

    public DVCSRequestInformation getDvReqInfo() {
        return this.dvReqInfo;
    }

    public PKIStatusInfo getDvStatus() {
        return this.dvStatus;
    }

    public Extensions getExtensions() {
        return this.extensions;
    }

    public DigestInfo getMessageImprint() {
        return this.messageImprint;
    }

    public PolicyInformation getPolicy() {
        return this.policy;
    }

    public ASN1Set getReqSignature() {
        return this.reqSignature;
    }

    public DVCSTime getResponseTime() {
        return this.responseTime;
    }

    public ASN1Integer getSerialNumber() {
        return this.serialNumber;
    }

    public int getVersion() {
        return this.version;
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        if (this.version != 1) {
            aSN1EncodableVector.add(new ASN1Integer(this.version));
        }
        aSN1EncodableVector.add(this.dvReqInfo);
        aSN1EncodableVector.add(this.messageImprint);
        aSN1EncodableVector.add(this.serialNumber);
        aSN1EncodableVector.add(this.responseTime);
        if (this.dvStatus != null) {
            aSN1EncodableVector.add(new DERTaggedObject(false, 0, this.dvStatus));
        }
        if (this.policy != null) {
            aSN1EncodableVector.add(new DERTaggedObject(false, 1, this.policy));
        }
        if (this.reqSignature != null) {
            aSN1EncodableVector.add(new DERTaggedObject(false, 2, this.reqSignature));
        }
        if (this.certs != null) {
            aSN1EncodableVector.add(new DERTaggedObject(false, 3, this.certs));
        }
        if (this.extensions != null) {
            aSN1EncodableVector.add(this.extensions);
        }
        return new DERSequence(aSN1EncodableVector);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("DVCSCertInfo {\n");
        if (this.version != 1) {
            stringBuffer.append("version: " + this.version + IOUtils.LINE_SEPARATOR_UNIX);
        }
        stringBuffer.append("dvReqInfo: " + this.dvReqInfo + IOUtils.LINE_SEPARATOR_UNIX);
        stringBuffer.append("messageImprint: " + this.messageImprint + IOUtils.LINE_SEPARATOR_UNIX);
        stringBuffer.append("serialNumber: " + this.serialNumber + IOUtils.LINE_SEPARATOR_UNIX);
        stringBuffer.append("responseTime: " + this.responseTime + IOUtils.LINE_SEPARATOR_UNIX);
        if (this.dvStatus != null) {
            stringBuffer.append("dvStatus: " + this.dvStatus + IOUtils.LINE_SEPARATOR_UNIX);
        }
        if (this.policy != null) {
            stringBuffer.append("policy: " + this.policy + IOUtils.LINE_SEPARATOR_UNIX);
        }
        if (this.reqSignature != null) {
            stringBuffer.append("reqSignature: " + this.reqSignature + IOUtils.LINE_SEPARATOR_UNIX);
        }
        if (this.certs != null) {
            stringBuffer.append("certs: " + this.certs + IOUtils.LINE_SEPARATOR_UNIX);
        }
        if (this.extensions != null) {
            stringBuffer.append("extensions: " + this.extensions + IOUtils.LINE_SEPARATOR_UNIX);
        }
        stringBuffer.append("}\n");
        return stringBuffer.toString();
    }
}
