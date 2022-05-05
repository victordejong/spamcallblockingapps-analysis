package org.spongycastle.pkcs.jcajce;

import java.security.PublicKey;
import javax.security.auth.x500.X500Principal;
import org.spongycastle.asn1.x500.X500Name;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.pkcs.PKCS10CertificationRequestBuilder;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pkcs/jcajce/JcaPKCS10CertificationRequestBuilder.class */
public class JcaPKCS10CertificationRequestBuilder extends PKCS10CertificationRequestBuilder {
    public JcaPKCS10CertificationRequestBuilder(X500Principal x500Principal, PublicKey publicKey) {
        super(X500Name.getInstance(x500Principal.getEncoded()), SubjectPublicKeyInfo.getInstance(publicKey.getEncoded()));
    }

    public JcaPKCS10CertificationRequestBuilder(X500Name x500Name, PublicKey publicKey) {
        super(x500Name, SubjectPublicKeyInfo.getInstance(publicKey.getEncoded()));
    }
}
