package org.spongycastle.cms.jcajce;

import java.io.OutputStream;
import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.KeyGenerator;
import javax.crypto.Mac;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.RC2ParameterSpec;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.cms.CMSException;
import org.spongycastle.jcajce.p028io.MacOutputStream;
import org.spongycastle.operator.GenericKey;
import org.spongycastle.operator.MacCalculator;
import org.spongycastle.operator.jcajce.JceGenericKey;
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/jcajce/JceCMSMacCalculatorBuilder.class */
public class JceCMSMacCalculatorBuilder {
    private EnvelopedDataHelper helper;
    private final int keySize;
    private final ASN1ObjectIdentifier macOID;
    private SecureRandom random;

    /* loaded from: classes-dex2jar.jar:org/spongycastle/cms/jcajce/JceCMSMacCalculatorBuilder$CMSMacCalculator.class */
    private class CMSMacCalculator implements MacCalculator {
        private AlgorithmIdentifier algorithmIdentifier;
        private SecretKey encKey;
        private Mac mac;
        private SecureRandom random;

        CMSMacCalculator(ASN1ObjectIdentifier aSN1ObjectIdentifier, int i, SecureRandom secureRandom) throws CMSException {
            KeyGenerator createKeyGenerator = JceCMSMacCalculatorBuilder.this.helper.createKeyGenerator(aSN1ObjectIdentifier);
            SecureRandom secureRandom2 = secureRandom == null ? new SecureRandom() : secureRandom;
            this.random = secureRandom2;
            if (i < 0) {
                createKeyGenerator.init(secureRandom2);
            } else {
                createKeyGenerator.init(i, secureRandom2);
            }
            this.encKey = createKeyGenerator.generateKey();
            this.algorithmIdentifier = JceCMSMacCalculatorBuilder.this.helper.getAlgorithmIdentifier(aSN1ObjectIdentifier, generateParameterSpec(aSN1ObjectIdentifier, this.encKey));
            this.mac = JceCMSMacCalculatorBuilder.this.helper.createContentMac(this.encKey, this.algorithmIdentifier);
        }

        protected AlgorithmParameterSpec generateParameterSpec(ASN1ObjectIdentifier aSN1ObjectIdentifier, SecretKey secretKey) throws CMSException {
            try {
                if (!aSN1ObjectIdentifier.equals(PKCSObjectIdentifiers.RC2_CBC)) {
                    return JceCMSMacCalculatorBuilder.this.helper.createAlgorithmParameterGenerator(aSN1ObjectIdentifier).generateParameters().getParameterSpec(IvParameterSpec.class);
                }
                byte[] bArr = new byte[8];
                this.random.nextBytes(bArr);
                return new RC2ParameterSpec(secretKey.getEncoded().length * 8, bArr);
            } catch (GeneralSecurityException e) {
                return null;
            }
        }

        @Override // org.spongycastle.operator.MacCalculator
        public AlgorithmIdentifier getAlgorithmIdentifier() {
            return this.algorithmIdentifier;
        }

        @Override // org.spongycastle.operator.MacCalculator
        public GenericKey getKey() {
            return new JceGenericKey(this.algorithmIdentifier, this.encKey);
        }

        @Override // org.spongycastle.operator.MacCalculator
        public byte[] getMac() {
            return this.mac.doFinal();
        }

        @Override // org.spongycastle.operator.MacCalculator
        public OutputStream getOutputStream() {
            return new MacOutputStream(this.mac);
        }
    }

    public JceCMSMacCalculatorBuilder(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        this(aSN1ObjectIdentifier, -1);
    }

    public JceCMSMacCalculatorBuilder(ASN1ObjectIdentifier aSN1ObjectIdentifier, int i) {
        this.helper = new EnvelopedDataHelper(new DefaultJcaJceExtHelper());
        this.macOID = aSN1ObjectIdentifier;
        this.keySize = i;
    }

    public MacCalculator build() throws CMSException {
        return new CMSMacCalculator(this.macOID, this.keySize, this.random);
    }

    public JceCMSMacCalculatorBuilder setProvider(String str) {
        this.helper = new EnvelopedDataHelper(new NamedJcaJceExtHelper(str));
        return this;
    }

    public JceCMSMacCalculatorBuilder setProvider(Provider provider) {
        this.helper = new EnvelopedDataHelper(new ProviderJcaJceExtHelper(provider));
        return this;
    }

    public JceCMSMacCalculatorBuilder setSecureRandom(SecureRandom secureRandom) {
        this.random = secureRandom;
        return this;
    }
}
