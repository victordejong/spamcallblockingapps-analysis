package org.spongycastle.dvcs;

import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.cms.ContentInfo;
import org.spongycastle.asn1.cms.SignedData;
import org.spongycastle.asn1.dvcs.DVCSObjectIdentifiers;
import org.spongycastle.asn1.dvcs.ServiceType;
import org.spongycastle.asn1.x509.GeneralName;
import org.spongycastle.cms.CMSSignedData;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/dvcs/DVCSRequest.class */
public class DVCSRequest extends DVCSMessage {
    private org.spongycastle.asn1.dvcs.DVCSRequest asn1;
    private DVCSRequestData data;
    private DVCSRequestInfo reqInfo;

    public DVCSRequest(ContentInfo contentInfo) throws DVCSConstructionException {
        super(contentInfo);
        if (!DVCSObjectIdentifiers.id_ct_DVCSRequestData.equals(contentInfo.getContentType())) {
            throw new DVCSConstructionException("ContentInfo not a DVCS Request");
        }
        try {
            if (contentInfo.getContent().toASN1Primitive() instanceof ASN1Sequence) {
                this.asn1 = org.spongycastle.asn1.dvcs.DVCSRequest.getInstance(contentInfo.getContent());
            } else {
                this.asn1 = org.spongycastle.asn1.dvcs.DVCSRequest.getInstance(ASN1OctetString.getInstance(contentInfo.getContent()).getOctets());
            }
            this.reqInfo = new DVCSRequestInfo(this.asn1.getRequestInformation());
            int serviceType = this.reqInfo.getServiceType();
            if (serviceType == ServiceType.CPD.getValue().intValue()) {
                this.data = new CPDRequestData(this.asn1.getData());
            } else if (serviceType == ServiceType.VSD.getValue().intValue()) {
                this.data = new VSDRequestData(this.asn1.getData());
            } else if (serviceType == ServiceType.VPKC.getValue().intValue()) {
                this.data = new VPKCRequestData(this.asn1.getData());
            } else if (serviceType == ServiceType.CCPD.getValue().intValue()) {
                this.data = new CCPDRequestData(this.asn1.getData());
            } else {
                throw new DVCSConstructionException("Unknown service type: " + serviceType);
            }
        } catch (Exception e) {
            throw new DVCSConstructionException("Unable to parse content: " + e.getMessage(), e);
        }
    }

    public DVCSRequest(CMSSignedData cMSSignedData) throws DVCSConstructionException {
        this(SignedData.getInstance(cMSSignedData.toASN1Structure().getContent()).getEncapContentInfo());
    }

    @Override // org.spongycastle.dvcs.DVCSMessage
    public ASN1Encodable getContent() {
        return this.asn1;
    }

    public DVCSRequestData getData() {
        return this.data;
    }

    public DVCSRequestInfo getRequestInfo() {
        return this.reqInfo;
    }

    public GeneralName getTransactionIdentifier() {
        return this.asn1.getTransactionIdentifier();
    }
}
