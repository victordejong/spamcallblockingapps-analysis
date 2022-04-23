package org.spongycastle.cert.ocsp.jcajce;

import java.security.PublicKey;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.cert.ocsp.BasicOCSPRespBuilder;
import org.spongycastle.cert.ocsp.OCSPException;
import org.spongycastle.operator.DigestCalculator;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/ocsp/jcajce/JcaBasicOCSPRespBuilder.class */
public class JcaBasicOCSPRespBuilder extends BasicOCSPRespBuilder {
    public JcaBasicOCSPRespBuilder(PublicKey publicKey, DigestCalculator digestCalculator) throws OCSPException {
        super(SubjectPublicKeyInfo.getInstance(publicKey.getEncoded()), digestCalculator);
    }
}
