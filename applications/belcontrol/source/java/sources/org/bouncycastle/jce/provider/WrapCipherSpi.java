package org.bouncycastle.jce.provider;

import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.BadPaddingException;
import javax.crypto.CipherSpi;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEParameterSpec;
import javax.crypto.spec.RC2ParameterSpec;
import javax.crypto.spec.RC5ParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.p009x9.X9ObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PrivateKeyInfo;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.Wrapper;
import org.bouncycastle.crypto.engines.RC2WrapEngine;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.jce.provider.PBE;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/WrapCipherSpi.class */
public abstract class WrapCipherSpi extends CipherSpi implements PBE {
    private Class[] availableSpecs;
    public AlgorithmParameters engineParams;

    /* renamed from: iv */
    private byte[] f7628iv;
    private int ivSize;
    public int pbeHash;
    public int pbeIvSize;
    public int pbeKeySize;
    public int pbeType;
    public Wrapper wrapEngine;

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/WrapCipherSpi$RC2Wrap.class */
    public static class RC2Wrap extends WrapCipherSpi {
        public RC2Wrap() {
            super(new RC2WrapEngine());
        }
    }

    public WrapCipherSpi() {
        this.availableSpecs = new Class[]{IvParameterSpec.class, PBEParameterSpec.class, RC2ParameterSpec.class, RC5ParameterSpec.class};
        this.pbeType = 2;
        this.pbeHash = 1;
        this.engineParams = null;
        this.wrapEngine = null;
    }

    public WrapCipherSpi(Wrapper wrapper) {
        this(wrapper, 0);
    }

    public WrapCipherSpi(Wrapper wrapper, int i) {
        this.availableSpecs = new Class[]{IvParameterSpec.class, PBEParameterSpec.class, RC2ParameterSpec.class, RC5ParameterSpec.class};
        this.pbeType = 2;
        this.pbeHash = 1;
        this.engineParams = null;
        this.wrapEngine = null;
        this.wrapEngine = wrapper;
        this.ivSize = i;
    }

    @Override // javax.crypto.CipherSpi
    public int engineDoFinal(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        return 0;
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineDoFinal(byte[] bArr, int i, int i2) {
        return null;
    }

    @Override // javax.crypto.CipherSpi
    public int engineGetBlockSize() {
        return 0;
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineGetIV() {
        return (byte[]) this.f7628iv.clone();
    }

    @Override // javax.crypto.CipherSpi
    public int engineGetKeySize(Key key) {
        return key.getEncoded().length;
    }

    @Override // javax.crypto.CipherSpi
    public int engineGetOutputSize(int i) {
        return -1;
    }

    @Override // javax.crypto.CipherSpi
    public AlgorithmParameters engineGetParameters() {
        return null;
    }

    @Override // javax.crypto.CipherSpi
    public void engineInit(int i, Key key, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) {
        AlgorithmParameterSpec algorithmParameterSpec = null;
        if (algorithmParameters != null) {
            int i2 = 0;
            while (true) {
                Class[] clsArr = this.availableSpecs;
                algorithmParameterSpec = null;
                if (i2 == clsArr.length) {
                    break;
                }
                try {
                    algorithmParameterSpec = algorithmParameters.getParameterSpec(clsArr[i2]);
                    break;
                } catch (Exception e) {
                    i2++;
                }
            }
            if (algorithmParameterSpec == null) {
                throw new InvalidAlgorithmParameterException("can't handle parameter " + algorithmParameters.toString());
            }
        }
        this.engineParams = algorithmParameters;
        engineInit(i, key, algorithmParameterSpec, secureRandom);
    }

    @Override // javax.crypto.CipherSpi
    public void engineInit(int i, Key key, SecureRandom secureRandom) {
        try {
            engineInit(i, key, (AlgorithmParameterSpec) null, secureRandom);
        } catch (InvalidAlgorithmParameterException e) {
            throw new IllegalArgumentException(e.getMessage());
        }
    }

    @Override // javax.crypto.CipherSpi
    public void engineInit(int i, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) {
        KeyParameter keyParameter;
        Wrapper wrapper;
        if (key instanceof JCEPBEKey) {
            JCEPBEKey jCEPBEKey = (JCEPBEKey) key;
            if (algorithmParameterSpec instanceof PBEParameterSpec) {
                keyParameter = PBE.Util.makePBEParameters(jCEPBEKey, algorithmParameterSpec, this.wrapEngine.getAlgorithmName());
            } else if (jCEPBEKey.getParam() == null) {
                throw new InvalidAlgorithmParameterException("PBE requires PBE parameters to be set.");
            } else {
                keyParameter = jCEPBEKey.getParam();
            }
        } else {
            keyParameter = new KeyParameter(key.getEncoded());
        }
        ParametersWithIV parametersWithIV = keyParameter;
        if (algorithmParameterSpec instanceof IvParameterSpec) {
            parametersWithIV = new ParametersWithIV(keyParameter, ((IvParameterSpec) algorithmParameterSpec).getIV());
        }
        ParametersWithIV parametersWithIV2 = parametersWithIV;
        if (parametersWithIV instanceof KeyParameter) {
            int i2 = this.ivSize;
            parametersWithIV2 = parametersWithIV;
            if (i2 != 0) {
                byte[] bArr = new byte[i2];
                this.f7628iv = bArr;
                secureRandom.nextBytes(bArr);
                parametersWithIV2 = new ParametersWithIV(parametersWithIV, this.f7628iv);
            }
        }
        boolean z = true;
        if (i == 1 || i == 2) {
            throw new IllegalArgumentException("engine only valid for wrapping");
        }
        if (i == 3) {
            wrapper = this.wrapEngine;
        } else if (i != 4) {
            System.out.println("eeek!");
            return;
        } else {
            wrapper = this.wrapEngine;
            z = false;
        }
        wrapper.init(z, parametersWithIV2);
    }

    @Override // javax.crypto.CipherSpi
    public void engineSetMode(String str) {
        throw new NoSuchAlgorithmException("can't support mode " + str);
    }

    @Override // javax.crypto.CipherSpi
    public void engineSetPadding(String str) {
        throw new NoSuchPaddingException("Padding " + str + " unknown.");
    }

    @Override // javax.crypto.CipherSpi
    public Key engineUnwrap(byte[] bArr, String str, int i) {
        try {
            Wrapper wrapper = this.wrapEngine;
            byte[] engineDoFinal = wrapper == null ? engineDoFinal(bArr, 0, bArr.length) : wrapper.unwrap(bArr, 0, bArr.length);
            if (i == 3) {
                return new SecretKeySpec(engineDoFinal, str);
            }
            if (str.equals("") && i == 2) {
                try {
                    PrivateKeyInfo privateKeyInfo = new PrivateKeyInfo((ASN1Sequence) new ASN1InputStream(engineDoFinal).readObject());
                    DERObjectIdentifier objectId = privateKeyInfo.getAlgorithmId().getObjectId();
                    return objectId.equals(X9ObjectIdentifiers.id_ecPublicKey) ? new JCEECPrivateKey(privateKeyInfo) : objectId.equals(CryptoProObjectIdentifiers.gostR3410_94) ? new JDKGOST3410PrivateKey(privateKeyInfo) : objectId.equals(X9ObjectIdentifiers.id_dsa) ? new JDKDSAPrivateKey(privateKeyInfo) : objectId.equals(PKCSObjectIdentifiers.dhKeyAgreement) ? new JCEDHPrivateKey(privateKeyInfo) : objectId.equals(X9ObjectIdentifiers.dhpublicnumber) ? new JCEDHPrivateKey(privateKeyInfo) : new JCERSAPrivateCrtKey(privateKeyInfo);
                } catch (Exception e) {
                    throw new InvalidKeyException("Invalid key encoding.");
                }
            }
            try {
                KeyFactory keyFactory = KeyFactory.getInstance(str, BouncyCastleProvider.PROVIDER_NAME);
                if (i == 1) {
                    return keyFactory.generatePublic(new X509EncodedKeySpec(engineDoFinal));
                }
                if (i == 2) {
                    return keyFactory.generatePrivate(new PKCS8EncodedKeySpec(engineDoFinal));
                }
                throw new InvalidKeyException("Unknown key type " + i);
            } catch (NoSuchAlgorithmException e2) {
                throw new InvalidKeyException("Unknown key type " + e2.getMessage());
            } catch (NoSuchProviderException e3) {
                throw new InvalidKeyException("Unknown key type " + e3.getMessage());
            } catch (InvalidKeySpecException e4) {
                throw new InvalidKeyException("Unknown key type " + e4.getMessage());
            }
        } catch (BadPaddingException e5) {
            throw new InvalidKeyException(e5.getMessage());
        } catch (IllegalBlockSizeException e6) {
            throw new InvalidKeyException(e6.getMessage());
        } catch (InvalidCipherTextException e7) {
            throw new InvalidKeyException(e7.getMessage());
        }
    }

    @Override // javax.crypto.CipherSpi
    public int engineUpdate(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        throw new RuntimeException("not supported for wrapping");
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineUpdate(byte[] bArr, int i, int i2) {
        throw new RuntimeException("not supported for wrapping");
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineWrap(Key key) {
        byte[] encoded = key.getEncoded();
        if (encoded != null) {
            try {
                Wrapper wrapper = this.wrapEngine;
                return wrapper == null ? engineDoFinal(encoded, 0, encoded.length) : wrapper.wrap(encoded, 0, encoded.length);
            } catch (BadPaddingException e) {
                throw new IllegalBlockSizeException(e.getMessage());
            }
        }
        throw new InvalidKeyException("Cannot wrap key, null encoding.");
    }
}
