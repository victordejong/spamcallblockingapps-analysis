package org.spongycastle.tsp.cms;

import java.io.IOException;
import org.spongycastle.asn1.ASN1Encoding;
import org.spongycastle.asn1.ASN1String;
import org.spongycastle.asn1.cms.Attributes;
import org.spongycastle.asn1.cms.MetaData;
import org.spongycastle.cms.CMSException;
import org.spongycastle.operator.DigestCalculator;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/tsp/cms/MetaDataUtil.class */
class MetaDataUtil {
    private final MetaData metaData;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MetaDataUtil(MetaData metaData) {
        this.metaData = metaData;
    }

    private String convertString(ASN1String aSN1String) {
        if (aSN1String != null) {
            return aSN1String.toString();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getFileName() {
        if (this.metaData != null) {
            return convertString(this.metaData.getFileName());
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getMediaType() {
        if (this.metaData != null) {
            return convertString(this.metaData.getMediaType());
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Attributes getOtherMetaData() {
        if (this.metaData != null) {
            return this.metaData.getOtherMetaData();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void initialiseMessageImprintDigestCalculator(DigestCalculator digestCalculator) throws CMSException {
        if (this.metaData != null && this.metaData.isHashProtected()) {
            try {
                digestCalculator.getOutputStream().write(this.metaData.getEncoded(ASN1Encoding.DER));
            } catch (IOException e) {
                throw new CMSException("unable to initialise calculator from metaData: " + e.getMessage(), e);
            }
        }
    }
}
