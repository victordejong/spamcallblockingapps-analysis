package org.spongycastle.cms;

import java.util.ArrayList;
import java.util.Enumeration;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1Set;
import org.spongycastle.asn1.cms.OriginatorInfo;
import org.spongycastle.asn1.x509.Certificate;
import org.spongycastle.asn1.x509.CertificateList;
import org.spongycastle.cert.X509CRLHolder;
import org.spongycastle.cert.X509CertificateHolder;
import org.spongycastle.util.CollectionStore;
import org.spongycastle.util.Store;
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/OriginatorInformation.class */
public class OriginatorInformation {
    private OriginatorInfo originatorInfo;

    /* JADX INFO: Access modifiers changed from: package-private */
    public OriginatorInformation(OriginatorInfo originatorInfo) {
        this.originatorInfo = originatorInfo;
    }

    public Store getCRLs() {
        ASN1Set cRLs = this.originatorInfo.getCRLs();
        if (cRLs == null) {
            return new CollectionStore(new ArrayList());
        }
        ArrayList arrayList = new ArrayList(cRLs.size());
        Enumeration objects = cRLs.getObjects();
        while (objects.hasMoreElements()) {
            ASN1Primitive aSN1Primitive = ((ASN1Encodable) objects.nextElement()).toASN1Primitive();
            if (aSN1Primitive instanceof ASN1Sequence) {
                arrayList.add(new X509CRLHolder(CertificateList.getInstance(aSN1Primitive)));
            }
        }
        return new CollectionStore(arrayList);
    }

    public Store getCertificates() {
        ASN1Set certificates = this.originatorInfo.getCertificates();
        if (certificates == null) {
            return new CollectionStore(new ArrayList());
        }
        ArrayList arrayList = new ArrayList(certificates.size());
        Enumeration objects = certificates.getObjects();
        while (objects.hasMoreElements()) {
            ASN1Primitive aSN1Primitive = ((ASN1Encodable) objects.nextElement()).toASN1Primitive();
            if (aSN1Primitive instanceof ASN1Sequence) {
                arrayList.add(new X509CertificateHolder(Certificate.getInstance(aSN1Primitive)));
            }
        }
        return new CollectionStore(arrayList);
    }

    public OriginatorInfo toASN1Structure() {
        return this.originatorInfo;
    }
}
