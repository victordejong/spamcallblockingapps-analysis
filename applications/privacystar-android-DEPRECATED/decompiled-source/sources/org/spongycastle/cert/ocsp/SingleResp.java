package org.spongycastle.cert.ocsp;

import java.util.Date;
import java.util.List;
import java.util.Set;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ocsp.CertStatus;
import org.spongycastle.asn1.ocsp.RevokedInfo;
import org.spongycastle.asn1.ocsp.SingleResponse;
import org.spongycastle.asn1.x509.Extension;
import org.spongycastle.asn1.x509.Extensions;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/ocsp/SingleResp.class */
public class SingleResp {
    private Extensions extensions;
    private SingleResponse resp;

    public SingleResp(SingleResponse singleResponse) {
        this.resp = singleResponse;
        this.extensions = singleResponse.getSingleExtensions();
    }

    public CertificateID getCertID() {
        return new CertificateID(this.resp.getCertID());
    }

    public CertificateStatus getCertStatus() {
        CertStatus certStatus = this.resp.getCertStatus();
        if (certStatus.getTagNo() == 0) {
            return null;
        }
        return certStatus.getTagNo() == 1 ? new RevokedStatus(RevokedInfo.getInstance(certStatus.getStatus())) : new UnknownStatus();
    }

    public Set getCriticalExtensionOIDs() {
        return OCSPUtils.getCriticalExtensionOIDs(this.extensions);
    }

    public Extension getExtension(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        if (this.extensions != null) {
            return this.extensions.getExtension(aSN1ObjectIdentifier);
        }
        return null;
    }

    public List getExtensionOIDs() {
        return OCSPUtils.getExtensionOIDs(this.extensions);
    }

    public Date getNextUpdate() {
        if (this.resp.getNextUpdate() == null) {
            return null;
        }
        return OCSPUtils.extractDate(this.resp.getNextUpdate());
    }

    public Set getNonCriticalExtensionOIDs() {
        return OCSPUtils.getNonCriticalExtensionOIDs(this.extensions);
    }

    public Date getThisUpdate() {
        return OCSPUtils.extractDate(this.resp.getThisUpdate());
    }

    public boolean hasExtensions() {
        return this.extensions != null;
    }
}
