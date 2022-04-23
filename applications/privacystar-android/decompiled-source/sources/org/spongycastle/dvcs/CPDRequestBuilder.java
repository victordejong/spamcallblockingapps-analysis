package org.spongycastle.dvcs;

import org.spongycastle.asn1.dvcs.DVCSRequestInformationBuilder;
import org.spongycastle.asn1.dvcs.Data;
import org.spongycastle.asn1.dvcs.ServiceType;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/dvcs/CPDRequestBuilder.class */
public class CPDRequestBuilder extends DVCSRequestBuilder {
    public CPDRequestBuilder() {
        super(new DVCSRequestInformationBuilder(ServiceType.CPD));
    }

    public DVCSRequest build(byte[] bArr) throws DVCSException {
        return createDVCRequest(new Data(bArr));
    }
}
