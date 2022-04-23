package org.spongycastle.operator.jcajce;

import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.jcajce.util.DefaultJcaJceHelper;
import org.spongycastle.jcajce.util.NamedJcaJceHelper;
import org.spongycastle.jcajce.util.ProviderJcaJceHelper;
import org.spongycastle.operator.GenericKey;
import org.spongycastle.operator.OperatorException;
import org.spongycastle.operator.SymmetricKeyUnwrapper;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/operator/jcajce/JceSymmetricKeyUnwrapper.class */
public class JceSymmetricKeyUnwrapper extends SymmetricKeyUnwrapper {
    private OperatorHelper helper = new OperatorHelper(new DefaultJcaJceHelper());
    private SecretKey secretKey;

    public JceSymmetricKeyUnwrapper(AlgorithmIdentifier algorithmIdentifier, SecretKey secretKey) {
        super(algorithmIdentifier);
        this.secretKey = secretKey;
    }

    @Override // org.spongycastle.operator.KeyUnwrapper
    public GenericKey generateUnwrappedKey(AlgorithmIdentifier algorithmIdentifier, byte[] bArr) throws OperatorException {
        try {
            Cipher createSymmetricWrapper = this.helper.createSymmetricWrapper(getAlgorithmIdentifier().getAlgorithm());
            createSymmetricWrapper.init(4, this.secretKey);
            return new JceGenericKey(algorithmIdentifier, createSymmetricWrapper.unwrap(bArr, this.helper.getKeyAlgorithmName(algorithmIdentifier.getAlgorithm()), 3));
        } catch (InvalidKeyException e) {
            throw new OperatorException("key invalid in message.", e);
        } catch (NoSuchAlgorithmException e2) {
            throw new OperatorException("can't find algorithm.", e2);
        }
    }

    public JceSymmetricKeyUnwrapper setProvider(String str) {
        this.helper = new OperatorHelper(new NamedJcaJceHelper(str));
        return this;
    }

    public JceSymmetricKeyUnwrapper setProvider(Provider provider) {
        this.helper = new OperatorHelper(new ProviderJcaJceHelper(provider));
        return this;
    }
}
