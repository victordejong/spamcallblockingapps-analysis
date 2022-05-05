package org.spongycastle.cert.crmf.jcajce;

import java.security.PrivateKey;
import javax.security.auth.x500.X500Principal;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x500.X500Name;
import org.spongycastle.asn1.x509.GeneralName;
import org.spongycastle.cert.crmf.PKIArchiveControlBuilder;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/crmf/jcajce/JcaPKIArchiveControlBuilder.class */
public class JcaPKIArchiveControlBuilder extends PKIArchiveControlBuilder {
    public JcaPKIArchiveControlBuilder(PrivateKey privateKey, X500Principal x500Principal) {
        this(privateKey, X500Name.getInstance(x500Principal.getEncoded()));
    }

    public JcaPKIArchiveControlBuilder(PrivateKey privateKey, X500Name x500Name) {
        this(privateKey, new GeneralName(x500Name));
    }

    public JcaPKIArchiveControlBuilder(PrivateKey privateKey, GeneralName generalName) {
        super(PrivateKeyInfo.getInstance(privateKey.getEncoded()), generalName);
    }
}
