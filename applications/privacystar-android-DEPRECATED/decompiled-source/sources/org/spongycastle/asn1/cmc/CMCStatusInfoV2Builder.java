package org.spongycastle.asn1.cmc;

import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERUTF8String;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/cmc/CMCStatusInfoV2Builder.class */
public class CMCStatusInfoV2Builder {
    private final ASN1Sequence bodyList;
    private final CMCStatus cMCStatus;
    private OtherStatusInfo otherInfo;
    private DERUTF8String statusString;

    public CMCStatusInfoV2Builder(CMCStatus cMCStatus, BodyPartID bodyPartID) {
        this.cMCStatus = cMCStatus;
        this.bodyList = new DERSequence(bodyPartID);
    }

    public CMCStatusInfoV2Builder(CMCStatus cMCStatus, BodyPartID[] bodyPartIDArr) {
        this.cMCStatus = cMCStatus;
        this.bodyList = new DERSequence(bodyPartIDArr);
    }

    public CMCStatusInfoV2 build() {
        return new CMCStatusInfoV2(this.cMCStatus, this.bodyList, this.statusString, this.otherInfo);
    }

    public CMCStatusInfoV2Builder setOtherInfo(CMCFailInfo cMCFailInfo) {
        this.otherInfo = new OtherStatusInfo(cMCFailInfo);
        return this;
    }

    public CMCStatusInfoV2Builder setOtherInfo(ExtendedFailInfo extendedFailInfo) {
        this.otherInfo = new OtherStatusInfo(extendedFailInfo);
        return this;
    }

    public CMCStatusInfoV2Builder setOtherInfo(PendInfo pendInfo) {
        this.otherInfo = new OtherStatusInfo(pendInfo);
        return this;
    }

    public CMCStatusInfoV2Builder setStatusString(String str) {
        this.statusString = new DERUTF8String(str);
        return this;
    }
}
