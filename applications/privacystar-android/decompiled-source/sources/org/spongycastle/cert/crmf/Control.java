package org.spongycastle.cert.crmf;

import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/crmf/Control.class */
public interface Control {
    ASN1ObjectIdentifier getType();

    ASN1Encodable getValue();
}
