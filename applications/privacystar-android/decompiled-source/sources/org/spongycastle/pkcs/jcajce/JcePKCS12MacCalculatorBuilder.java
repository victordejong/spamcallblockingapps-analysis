package org.spongycastle.pkcs.jcajce;

import java.io.OutputStream;
import java.security.Provider;
import java.security.SecureRandom;
import javax.crypto.Mac;
import javax.crypto.spec.PBEParameterSpec;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.oiw.OIWObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PKCS12PBEParams;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.jcajce.PKCS12Key;
import org.spongycastle.jcajce.p028io.MacOutputStream;
import org.spongycastle.jcajce.util.DefaultJcaJceHelper;
import org.spongycastle.jcajce.util.JcaJceHelper;
import org.spongycastle.jcajce.util.NamedJcaJceHelper;
import org.spongycastle.jcajce.util.ProviderJcaJceHelper;
import org.spongycastle.operator.GenericKey;
import org.spongycastle.operator.MacCalculator;
import org.spongycastle.operator.OperatorCreationException;
import org.spongycastle.pkcs.PKCS12MacCalculatorBuilder;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder.class */
public class JcePKCS12MacCalculatorBuilder implements PKCS12MacCalculatorBuilder {
    private ASN1ObjectIdentifier algorithm;
    private JcaJceHelper helper;
    private int iterationCount;
    private SecureRandom random;
    private int saltLength;

    public JcePKCS12MacCalculatorBuilder() {
        this(OIWObjectIdentifiers.idSHA1);
    }

    public JcePKCS12MacCalculatorBuilder(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        this.helper = new DefaultJcaJceHelper();
        this.iterationCount = 1024;
        this.algorithm = aSN1ObjectIdentifier;
    }

    @Override // org.spongycastle.pkcs.PKCS12MacCalculatorBuilder
    public MacCalculator build(char[] cArr) throws OperatorCreationException {
        if (this.random == null) {
            this.random = new SecureRandom();
        }
        try {
            final Mac createMac = this.helper.createMac(this.algorithm.getId());
            this.saltLength = createMac.getMacLength();
            final byte[] bArr = new byte[this.saltLength];
            this.random.nextBytes(bArr);
            PBEParameterSpec pBEParameterSpec = new PBEParameterSpec(bArr, this.iterationCount);
            final PKCS12Key pKCS12Key = new PKCS12Key(cArr);
            createMac.init(pKCS12Key, pBEParameterSpec);
            return new MacCalculator() { // from class: org.spongycastle.pkcs.jcajce.JcePKCS12MacCalculatorBuilder.1
                @Override // org.spongycastle.operator.MacCalculator
                public AlgorithmIdentifier getAlgorithmIdentifier() {
                    return new AlgorithmIdentifier(JcePKCS12MacCalculatorBuilder.this.algorithm, new PKCS12PBEParams(bArr, JcePKCS12MacCalculatorBuilder.this.iterationCount));
                }

                @Override // org.spongycastle.operator.MacCalculator
                public GenericKey getKey() {
                    return new GenericKey(getAlgorithmIdentifier(), pKCS12Key.getEncoded());
                }

                @Override // org.spongycastle.operator.MacCalculator
                public byte[] getMac() {
                    return createMac.doFinal();
                }

                @Override // org.spongycastle.operator.MacCalculator
                public OutputStream getOutputStream() {
                    return new MacOutputStream(createMac);
                }
            };
        } catch (Exception e) {
            throw new OperatorCreationException("unable to create MAC calculator: " + e.getMessage(), e);
        }
    }

    @Override // org.spongycastle.pkcs.PKCS12MacCalculatorBuilder
    public AlgorithmIdentifier getDigestAlgorithmIdentifier() {
        return new AlgorithmIdentifier(this.algorithm, DERNull.INSTANCE);
    }

    public JcePKCS12MacCalculatorBuilder setIterationCount(int i) {
        this.iterationCount = i;
        return this;
    }

    public JcePKCS12MacCalculatorBuilder setProvider(String str) {
        this.helper = new NamedJcaJceHelper(str);
        return this;
    }

    public JcePKCS12MacCalculatorBuilder setProvider(Provider provider) {
        this.helper = new ProviderJcaJceHelper(provider);
        return this;
    }
}
