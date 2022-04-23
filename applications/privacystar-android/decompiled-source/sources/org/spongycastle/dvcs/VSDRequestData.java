package org.spongycastle.dvcs;

import org.spongycastle.asn1.dvcs.Data;
import org.spongycastle.cms.CMSException;
import org.spongycastle.cms.CMSSignedData;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/dvcs/VSDRequestData.class */
public class VSDRequestData extends DVCSRequestData {
    private CMSSignedData doc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public VSDRequestData(Data data) throws DVCSConstructionException {
        super(data);
        initDocument();
    }

    private void initDocument() throws DVCSConstructionException {
        if (this.doc != null) {
            return;
        }
        if (this.data.getMessage() == null) {
            throw new DVCSConstructionException("DVCSRequest.data.message should be specified for VSD service");
        }
        try {
            this.doc = new CMSSignedData(this.data.getMessage().getOctets());
        } catch (CMSException e) {
            throw new DVCSConstructionException("Can't read CMS SignedData from input", e);
        }
    }

    public byte[] getMessage() {
        return this.data.getMessage().getOctets();
    }

    public CMSSignedData getParsedMessage() {
        return this.doc;
    }
}
