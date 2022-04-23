package org.spongycastle.jcajce.provider.asymmetric.rsa;

import java.io.IOException;
import java.math.BigInteger;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.spec.RSAPrivateCrtKeySpec;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.pkcs.RSAPrivateKey;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.crypto.params.RSAPrivateCrtKeyParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.KeyUtil;
import org.spongycastle.util.Strings;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey.class */
public class BCRSAPrivateCrtKey extends BCRSAPrivateKey implements RSAPrivateCrtKey {
    static final long serialVersionUID = 7834723820638524718L;
    private BigInteger crtCoefficient;
    private BigInteger primeExponentP;
    private BigInteger primeExponentQ;
    private BigInteger primeP;
    private BigInteger primeQ;
    private BigInteger publicExponent;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BCRSAPrivateCrtKey(RSAPrivateCrtKey rSAPrivateCrtKey) {
        this.modulus = rSAPrivateCrtKey.getModulus();
        this.publicExponent = rSAPrivateCrtKey.getPublicExponent();
        this.privateExponent = rSAPrivateCrtKey.getPrivateExponent();
        this.primeP = rSAPrivateCrtKey.getPrimeP();
        this.primeQ = rSAPrivateCrtKey.getPrimeQ();
        this.primeExponentP = rSAPrivateCrtKey.getPrimeExponentP();
        this.primeExponentQ = rSAPrivateCrtKey.getPrimeExponentQ();
        this.crtCoefficient = rSAPrivateCrtKey.getCrtCoefficient();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BCRSAPrivateCrtKey(RSAPrivateCrtKeySpec rSAPrivateCrtKeySpec) {
        this.modulus = rSAPrivateCrtKeySpec.getModulus();
        this.publicExponent = rSAPrivateCrtKeySpec.getPublicExponent();
        this.privateExponent = rSAPrivateCrtKeySpec.getPrivateExponent();
        this.primeP = rSAPrivateCrtKeySpec.getPrimeP();
        this.primeQ = rSAPrivateCrtKeySpec.getPrimeQ();
        this.primeExponentP = rSAPrivateCrtKeySpec.getPrimeExponentP();
        this.primeExponentQ = rSAPrivateCrtKeySpec.getPrimeExponentQ();
        this.crtCoefficient = rSAPrivateCrtKeySpec.getCrtCoefficient();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BCRSAPrivateCrtKey(PrivateKeyInfo privateKeyInfo) throws IOException {
        this(RSAPrivateKey.getInstance(privateKeyInfo.parsePrivateKey()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BCRSAPrivateCrtKey(RSAPrivateKey rSAPrivateKey) {
        this.modulus = rSAPrivateKey.getModulus();
        this.publicExponent = rSAPrivateKey.getPublicExponent();
        this.privateExponent = rSAPrivateKey.getPrivateExponent();
        this.primeP = rSAPrivateKey.getPrime1();
        this.primeQ = rSAPrivateKey.getPrime2();
        this.primeExponentP = rSAPrivateKey.getExponent1();
        this.primeExponentQ = rSAPrivateKey.getExponent2();
        this.crtCoefficient = rSAPrivateKey.getCoefficient();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BCRSAPrivateCrtKey(RSAPrivateCrtKeyParameters rSAPrivateCrtKeyParameters) {
        super(rSAPrivateCrtKeyParameters);
        this.publicExponent = rSAPrivateCrtKeyParameters.getPublicExponent();
        this.primeP = rSAPrivateCrtKeyParameters.getP();
        this.primeQ = rSAPrivateCrtKeyParameters.getQ();
        this.primeExponentP = rSAPrivateCrtKeyParameters.getDP();
        this.primeExponentQ = rSAPrivateCrtKeyParameters.getDQ();
        this.crtCoefficient = rSAPrivateCrtKeyParameters.getQInv();
    }

    @Override // org.spongycastle.jcajce.provider.asymmetric.rsa.BCRSAPrivateKey
    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RSAPrivateCrtKey)) {
            return false;
        }
        RSAPrivateCrtKey rSAPrivateCrtKey = (RSAPrivateCrtKey) obj;
        if (!getModulus().equals(rSAPrivateCrtKey.getModulus()) || !getPublicExponent().equals(rSAPrivateCrtKey.getPublicExponent()) || !getPrivateExponent().equals(rSAPrivateCrtKey.getPrivateExponent()) || !getPrimeP().equals(rSAPrivateCrtKey.getPrimeP()) || !getPrimeQ().equals(rSAPrivateCrtKey.getPrimeQ()) || !getPrimeExponentP().equals(rSAPrivateCrtKey.getPrimeExponentP()) || !getPrimeExponentQ().equals(rSAPrivateCrtKey.getPrimeExponentQ()) || !getCrtCoefficient().equals(rSAPrivateCrtKey.getCrtCoefficient())) {
            z = false;
        }
        return z;
    }

    @Override // java.security.interfaces.RSAPrivateCrtKey
    public BigInteger getCrtCoefficient() {
        return this.crtCoefficient;
    }

    @Override // org.spongycastle.jcajce.provider.asymmetric.rsa.BCRSAPrivateKey, java.security.Key
    public byte[] getEncoded() {
        return KeyUtil.getEncodedPrivateKeyInfo(new AlgorithmIdentifier(PKCSObjectIdentifiers.rsaEncryption, DERNull.INSTANCE), new RSAPrivateKey(getModulus(), getPublicExponent(), getPrivateExponent(), getPrimeP(), getPrimeQ(), getPrimeExponentP(), getPrimeExponentQ(), getCrtCoefficient()));
    }

    @Override // org.spongycastle.jcajce.provider.asymmetric.rsa.BCRSAPrivateKey, java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    @Override // java.security.interfaces.RSAPrivateCrtKey
    public BigInteger getPrimeExponentP() {
        return this.primeExponentP;
    }

    @Override // java.security.interfaces.RSAPrivateCrtKey
    public BigInteger getPrimeExponentQ() {
        return this.primeExponentQ;
    }

    @Override // java.security.interfaces.RSAPrivateCrtKey
    public BigInteger getPrimeP() {
        return this.primeP;
    }

    @Override // java.security.interfaces.RSAPrivateCrtKey
    public BigInteger getPrimeQ() {
        return this.primeQ;
    }

    @Override // java.security.interfaces.RSAPrivateCrtKey
    public BigInteger getPublicExponent() {
        return this.publicExponent;
    }

    @Override // org.spongycastle.jcajce.provider.asymmetric.rsa.BCRSAPrivateKey
    public int hashCode() {
        return (getModulus().hashCode() ^ getPublicExponent().hashCode()) ^ getPrivateExponent().hashCode();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String lineSeparator = Strings.lineSeparator();
        stringBuffer.append("RSA Private CRT Key [");
        stringBuffer.append(RSAUtil.generateKeyFingerprint(getModulus(), getPublicExponent()));
        stringBuffer.append("]");
        stringBuffer.append(lineSeparator);
        stringBuffer.append("            modulus: ");
        stringBuffer.append(getModulus().toString(16));
        stringBuffer.append(lineSeparator);
        stringBuffer.append("    public exponent: ");
        stringBuffer.append(getPublicExponent().toString(16));
        stringBuffer.append(lineSeparator);
        return stringBuffer.toString();
    }
}
