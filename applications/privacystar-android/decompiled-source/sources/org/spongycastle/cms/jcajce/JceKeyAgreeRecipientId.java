package org.spongycastle.cms.jcajce;

import java.math.BigInteger;
import java.security.cert.X509Certificate;
import javax.security.auth.x500.X500Principal;
import org.spongycastle.asn1.x500.X500Name;
import org.spongycastle.cms.KeyAgreeRecipientId;
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/jcajce/JceKeyAgreeRecipientId.class */
public class JceKeyAgreeRecipientId extends KeyAgreeRecipientId {
    public JceKeyAgreeRecipientId(X509Certificate x509Certificate) {
        this(x509Certificate.getIssuerX500Principal(), x509Certificate.getSerialNumber());
    }

    public JceKeyAgreeRecipientId(X500Principal x500Principal, BigInteger bigInteger) {
        super(X500Name.getInstance(x500Principal.getEncoded()), bigInteger);
    }
}
