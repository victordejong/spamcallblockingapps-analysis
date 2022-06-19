package org.bouncycastle.jce.provider;

import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Hashtable;
import javax.crypto.KeyAgreementSpi;
import javax.crypto.SecretKey;
import javax.crypto.ShortBufferException;
import javax.crypto.interfaces.DHPrivateKey;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.bouncycastle.crypto.params.DESParameters;
import org.bouncycastle.util.Strings;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JCEDHKeyAgreement.class */
public class JCEDHKeyAgreement extends KeyAgreementSpi {
    private static final Hashtable algorithms;

    /* renamed from: g */
    private BigInteger f7608g;

    /* renamed from: p */
    private BigInteger f7609p;
    private BigInteger result;

    /* renamed from: x */
    private BigInteger f7610x;

    static {
        Hashtable hashtable = new Hashtable();
        algorithms = hashtable;
        Integer num = new Integer(64);
        Integer num2 = new Integer(192);
        Integer num3 = new Integer(128);
        Integer num4 = new Integer(256);
        hashtable.put("DES", num);
        hashtable.put("DESEDE", num2);
        hashtable.put("BLOWFISH", num3);
        hashtable.put("AES", num4);
    }

    private byte[] bigIntToBytes(BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray[0] == 0) {
            int length = byteArray.length - 1;
            byte[] bArr = new byte[length];
            System.arraycopy(byteArray, 1, bArr, 0, length);
            return bArr;
        }
        return byteArray;
    }

    @Override // javax.crypto.KeyAgreementSpi
    public Key engineDoPhase(Key key, boolean z) {
        if (this.f7610x != null) {
            if (!(key instanceof DHPublicKey)) {
                throw new InvalidKeyException("DHKeyAgreement doPhase requires DHPublicKey");
            }
            DHPublicKey dHPublicKey = (DHPublicKey) key;
            if (!dHPublicKey.getParams().getG().equals(this.f7608g) || !dHPublicKey.getParams().getP().equals(this.f7609p)) {
                throw new InvalidKeyException("DHPublicKey not for this KeyAgreement!");
            }
            if (z) {
                this.result = dHPublicKey.getY().modPow(this.f7610x, this.f7609p);
                return null;
            }
            BigInteger modPow = dHPublicKey.getY().modPow(this.f7610x, this.f7609p);
            this.result = modPow;
            return new JCEDHPublicKey(modPow, dHPublicKey.getParams());
        }
        throw new IllegalStateException("Diffie-Hellman not initialised.");
    }

    @Override // javax.crypto.KeyAgreementSpi
    public int engineGenerateSecret(byte[] bArr, int i) {
        if (this.f7610x != null) {
            byte[] bigIntToBytes = bigIntToBytes(this.result);
            if (bArr.length - i < bigIntToBytes.length) {
                throw new ShortBufferException("DHKeyAgreement - buffer too short");
            }
            System.arraycopy(bigIntToBytes, 0, bArr, i, bigIntToBytes.length);
            return bigIntToBytes.length;
        }
        throw new IllegalStateException("Diffie-Hellman not initialised.");
    }

    @Override // javax.crypto.KeyAgreementSpi
    public SecretKey engineGenerateSecret(String str) {
        if (this.f7610x != null) {
            String upperCase = Strings.toUpperCase(str);
            byte[] bigIntToBytes = bigIntToBytes(this.result);
            Hashtable hashtable = algorithms;
            if (!hashtable.containsKey(upperCase)) {
                return new SecretKeySpec(bigIntToBytes, str);
            }
            int intValue = ((Integer) hashtable.get(upperCase)).intValue() / 8;
            byte[] bArr = new byte[intValue];
            System.arraycopy(bigIntToBytes, 0, bArr, 0, intValue);
            if (upperCase.startsWith("DES")) {
                DESParameters.setOddParity(bArr);
            }
            return new SecretKeySpec(bArr, str);
        }
        throw new IllegalStateException("Diffie-Hellman not initialised.");
    }

    @Override // javax.crypto.KeyAgreementSpi
    public byte[] engineGenerateSecret() {
        if (this.f7610x != null) {
            return bigIntToBytes(this.result);
        }
        throw new IllegalStateException("Diffie-Hellman not initialised.");
    }

    @Override // javax.crypto.KeyAgreementSpi
    public void engineInit(Key key, SecureRandom secureRandom) {
        if (key instanceof DHPrivateKey) {
            DHPrivateKey dHPrivateKey = (DHPrivateKey) key;
            this.f7609p = dHPrivateKey.getParams().getP();
            this.f7608g = dHPrivateKey.getParams().getG();
            BigInteger x = dHPrivateKey.getX();
            this.result = x;
            this.f7610x = x;
            return;
        }
        throw new InvalidKeyException("DHKeyAgreement requires DHPrivateKey");
    }

    @Override // javax.crypto.KeyAgreementSpi
    public void engineInit(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) {
        DHParameterSpec dHParameterSpec;
        if (key instanceof DHPrivateKey) {
            DHPrivateKey dHPrivateKey = (DHPrivateKey) key;
            if (algorithmParameterSpec == null) {
                this.f7609p = dHPrivateKey.getParams().getP();
                dHParameterSpec = dHPrivateKey.getParams();
            } else if (!(algorithmParameterSpec instanceof DHParameterSpec)) {
                throw new InvalidAlgorithmParameterException("DHKeyAgreement only accepts DHParameterSpec");
            } else {
                dHParameterSpec = (DHParameterSpec) algorithmParameterSpec;
                this.f7609p = dHParameterSpec.getP();
            }
            this.f7608g = dHParameterSpec.getG();
            BigInteger x = dHPrivateKey.getX();
            this.result = x;
            this.f7610x = x;
            return;
        }
        throw new InvalidKeyException("DHKeyAgreement requires DHPrivateKey for initialisation");
    }
}
