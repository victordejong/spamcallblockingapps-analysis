package org.spongycastle.cms.jcajce;

import java.security.cert.X509CertSelector;
import org.spongycastle.cms.KeyTransRecipientId;
import org.spongycastle.cms.SignerId;
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/jcajce/JcaX509CertSelectorConverter.class */
public class JcaX509CertSelectorConverter extends org.spongycastle.cert.selector.jcajce.JcaX509CertSelectorConverter {
    public X509CertSelector getCertSelector(KeyTransRecipientId keyTransRecipientId) {
        return doConversion(keyTransRecipientId.getIssuer(), keyTransRecipientId.getSerialNumber(), keyTransRecipientId.getSubjectKeyIdentifier());
    }

    public X509CertSelector getCertSelector(SignerId signerId) {
        return doConversion(signerId.getIssuer(), signerId.getSerialNumber(), signerId.getSubjectKeyIdentifier());
    }
}
