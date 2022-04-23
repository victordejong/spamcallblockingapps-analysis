package org.spongycastle.openssl.jcajce;

import java.security.PrivateKey;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.openssl.PKCS8Generator;
import org.spongycastle.operator.OutputEncryptor;
import org.spongycastle.util.p039io.pem.PemGenerationException;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openssl/jcajce/JcaPKCS8Generator.class */
public class JcaPKCS8Generator extends PKCS8Generator {
    public JcaPKCS8Generator(PrivateKey privateKey, OutputEncryptor outputEncryptor) throws PemGenerationException {
        super(PrivateKeyInfo.getInstance(privateKey.getEncoded()), outputEncryptor);
    }
}
