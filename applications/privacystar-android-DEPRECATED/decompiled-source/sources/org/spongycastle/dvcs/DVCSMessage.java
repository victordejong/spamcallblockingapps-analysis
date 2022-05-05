package org.spongycastle.dvcs;

import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.cms.ContentInfo;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/dvcs/DVCSMessage.class */
public abstract class DVCSMessage {
    private final ContentInfo contentInfo;

    /* JADX INFO: Access modifiers changed from: protected */
    public DVCSMessage(ContentInfo contentInfo) {
        this.contentInfo = contentInfo;
    }

    public abstract ASN1Encodable getContent();

    public ASN1ObjectIdentifier getContentType() {
        return this.contentInfo.getContentType();
    }
}
