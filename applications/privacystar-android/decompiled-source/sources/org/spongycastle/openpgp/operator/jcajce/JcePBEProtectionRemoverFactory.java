package org.spongycastle.openpgp.operator.jcajce;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Provider;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.spec.IvParameterSpec;
import org.spongycastle.jcajce.util.DefaultJcaJceHelper;
import org.spongycastle.jcajce.util.NamedJcaJceHelper;
import org.spongycastle.jcajce.util.ProviderJcaJceHelper;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.operator.PBEProtectionRemoverFactory;
import org.spongycastle.openpgp.operator.PBESecretKeyDecryptor;
import org.spongycastle.openpgp.operator.PGPDigestCalculatorProvider;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/jcajce/JcePBEProtectionRemoverFactory.class */
public class JcePBEProtectionRemoverFactory implements PBEProtectionRemoverFactory {
    private PGPDigestCalculatorProvider calculatorProvider;
    private JcaPGPDigestCalculatorProviderBuilder calculatorProviderBuilder;
    private OperatorHelper helper;
    private final char[] passPhrase;

    public JcePBEProtectionRemoverFactory(char[] cArr) {
        this.helper = new OperatorHelper(new DefaultJcaJceHelper());
        this.passPhrase = cArr;
        this.calculatorProviderBuilder = new JcaPGPDigestCalculatorProviderBuilder();
    }

    public JcePBEProtectionRemoverFactory(char[] cArr, PGPDigestCalculatorProvider pGPDigestCalculatorProvider) {
        this.helper = new OperatorHelper(new DefaultJcaJceHelper());
        this.passPhrase = cArr;
        this.calculatorProvider = pGPDigestCalculatorProvider;
    }

    @Override // org.spongycastle.openpgp.operator.PBEProtectionRemoverFactory
    public PBESecretKeyDecryptor createDecryptor(String str) throws PGPException {
        if (this.calculatorProvider == null) {
            this.calculatorProvider = this.calculatorProviderBuilder.build();
        }
        return new PBESecretKeyDecryptor(this.passPhrase, this.calculatorProvider) { // from class: org.spongycastle.openpgp.operator.jcajce.JcePBEProtectionRemoverFactory.1
            @Override // org.spongycastle.openpgp.operator.PBESecretKeyDecryptor
            public byte[] recoverKeyData(int i, byte[] bArr, byte[] bArr2, byte[] bArr3, int i2, int i3) throws PGPException {
                try {
                    OperatorHelper operatorHelper = JcePBEProtectionRemoverFactory.this.helper;
                    Cipher createCipher = operatorHelper.createCipher(PGPUtil.getSymmetricCipherName(i) + "/CBC/NoPadding");
                    createCipher.init(2, PGPUtil.makeSymmetricKey(i, bArr), new IvParameterSpec(bArr2));
                    return createCipher.doFinal(bArr3, i2, i3);
                } catch (InvalidAlgorithmParameterException e) {
                    throw new PGPException("invalid parameter: " + e.getMessage(), e);
                } catch (InvalidKeyException e2) {
                    throw new PGPException("invalid key: " + e2.getMessage(), e2);
                } catch (BadPaddingException e3) {
                    throw new PGPException("bad padding: " + e3.getMessage(), e3);
                } catch (IllegalBlockSizeException e4) {
                    throw new PGPException("illegal block size: " + e4.getMessage(), e4);
                }
            }
        };
    }

    public JcePBEProtectionRemoverFactory setProvider(String str) {
        this.helper = new OperatorHelper(new NamedJcaJceHelper(str));
        if (this.calculatorProviderBuilder != null) {
            this.calculatorProviderBuilder.setProvider(str);
        }
        return this;
    }

    public JcePBEProtectionRemoverFactory setProvider(Provider provider) {
        this.helper = new OperatorHelper(new ProviderJcaJceHelper(provider));
        if (this.calculatorProviderBuilder != null) {
            this.calculatorProviderBuilder.setProvider(provider);
        }
        return this;
    }
}
