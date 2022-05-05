package org.spongycastle.cms;

import org.spongycastle.asn1.ASN1ObjectIdentifier;
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/CMSTypedData.class */
public interface CMSTypedData extends CMSProcessable {
    ASN1ObjectIdentifier getContentType();
}
