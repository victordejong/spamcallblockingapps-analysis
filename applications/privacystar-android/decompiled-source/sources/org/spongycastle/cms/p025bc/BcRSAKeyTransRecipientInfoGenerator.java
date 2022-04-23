package org.spongycastle.cms.p025bc;

import java.io.IOException;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.cert.X509CertificateHolder;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.operator.p037bc.BcRSAAsymmetricKeyWrapper;
/* renamed from: org.spongycastle.cms.bc.BcRSAKeyTransRecipientInfoGenerator */
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/bc/BcRSAKeyTransRecipientInfoGenerator.class */
public class BcRSAKeyTransRecipientInfoGenerator extends BcKeyTransRecipientInfoGenerator {
    public BcRSAKeyTransRecipientInfoGenerator(X509CertificateHolder x509CertificateHolder) throws IOException {
        super(x509CertificateHolder, new BcRSAAsymmetricKeyWrapper(x509CertificateHolder.getSubjectPublicKeyInfo().getAlgorithmId(), x509CertificateHolder.getSubjectPublicKeyInfo()));
    }

    public BcRSAKeyTransRecipientInfoGenerator(byte[] bArr, AlgorithmIdentifier algorithmIdentifier, AsymmetricKeyParameter asymmetricKeyParameter) {
        super(bArr, new BcRSAAsymmetricKeyWrapper(algorithmIdentifier, asymmetricKeyParameter));
    }
}
