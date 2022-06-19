package org.bouncycastle.jce.provider;

import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEParameterSpec;
import javax.crypto.spec.RC2ParameterSpec;
import javax.crypto.spec.RC5ParameterSpec;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.StreamBlockCipher;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.engines.BlowfishEngine;
import org.bouncycastle.crypto.engines.DESEngine;
import org.bouncycastle.crypto.engines.DESedeEngine;
import org.bouncycastle.crypto.engines.RC4Engine;
import org.bouncycastle.crypto.engines.SkipjackEngine;
import org.bouncycastle.crypto.engines.TwofishEngine;
import org.bouncycastle.crypto.modes.CFBBlockCipher;
import org.bouncycastle.crypto.modes.OFBBlockCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.jce.provider.PBE;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JCEStreamCipher.class */
public class JCEStreamCipher extends WrapCipherSpi implements PBE {
    private StreamCipher cipher;
    private int ivLength;
    private ParametersWithIV ivParam;
    private Class[] availableSpecs = {RC2ParameterSpec.class, RC5ParameterSpec.class, IvParameterSpec.class, PBEParameterSpec.class};
    private PBEParameterSpec pbeSpec = null;
    private String pbeAlgorithm = null;

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JCEStreamCipher$Blowfish_CFB8.class */
    public static class Blowfish_CFB8 extends JCEStreamCipher {
        public Blowfish_CFB8() {
            super(new CFBBlockCipher(new BlowfishEngine(), 8), 64);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JCEStreamCipher$Blowfish_OFB8.class */
    public static class Blowfish_OFB8 extends JCEStreamCipher {
        public Blowfish_OFB8() {
            super(new OFBBlockCipher(new BlowfishEngine(), 8), 64);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JCEStreamCipher$DES_CFB8.class */
    public static class DES_CFB8 extends JCEStreamCipher {
        public DES_CFB8() {
            super(new CFBBlockCipher(new DESEngine(), 8), 64);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JCEStreamCipher$DES_OFB8.class */
    public static class DES_OFB8 extends JCEStreamCipher {
        public DES_OFB8() {
            super(new OFBBlockCipher(new DESEngine(), 8), 64);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JCEStreamCipher$DESede_CFB8.class */
    public static class DESede_CFB8 extends JCEStreamCipher {
        public DESede_CFB8() {
            super(new CFBBlockCipher(new DESedeEngine(), 8), 64);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JCEStreamCipher$DESede_OFB8.class */
    public static class DESede_OFB8 extends JCEStreamCipher {
        public DESede_OFB8() {
            super(new OFBBlockCipher(new DESedeEngine(), 8), 64);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JCEStreamCipher$PBEWithSHAAnd128BitRC4.class */
    public static class PBEWithSHAAnd128BitRC4 extends JCEStreamCipher {
        public PBEWithSHAAnd128BitRC4() {
            super(new RC4Engine(), 0);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JCEStreamCipher$PBEWithSHAAnd40BitRC4.class */
    public static class PBEWithSHAAnd40BitRC4 extends JCEStreamCipher {
        public PBEWithSHAAnd40BitRC4() {
            super(new RC4Engine(), 0);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JCEStreamCipher$Skipjack_CFB8.class */
    public static class Skipjack_CFB8 extends JCEStreamCipher {
        public Skipjack_CFB8() {
            super(new CFBBlockCipher(new SkipjackEngine(), 8), 64);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JCEStreamCipher$Skipjack_OFB8.class */
    public static class Skipjack_OFB8 extends JCEStreamCipher {
        public Skipjack_OFB8() {
            super(new OFBBlockCipher(new SkipjackEngine(), 8), 64);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JCEStreamCipher$Twofish_CFB8.class */
    public static class Twofish_CFB8 extends JCEStreamCipher {
        public Twofish_CFB8() {
            super(new CFBBlockCipher(new TwofishEngine(), 8), 128);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JCEStreamCipher$Twofish_OFB8.class */
    public static class Twofish_OFB8 extends JCEStreamCipher {
        public Twofish_OFB8() {
            super(new OFBBlockCipher(new TwofishEngine(), 8), 128);
        }
    }

    public JCEStreamCipher(BlockCipher blockCipher, int i) {
        this.ivLength = 0;
        this.ivLength = i;
        this.cipher = new StreamBlockCipher(blockCipher);
    }

    public JCEStreamCipher(StreamCipher streamCipher, int i) {
        this.ivLength = 0;
        this.cipher = streamCipher;
        this.ivLength = i;
    }

    @Override // org.bouncycastle.jce.provider.WrapCipherSpi, javax.crypto.CipherSpi
    public int engineDoFinal(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        if (i2 != 0) {
            this.cipher.processBytes(bArr, i, i2, bArr2, i3);
        }
        this.cipher.reset();
        return i2;
    }

    @Override // org.bouncycastle.jce.provider.WrapCipherSpi, javax.crypto.CipherSpi
    public byte[] engineDoFinal(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            this.cipher.reset();
            return new byte[0];
        }
        byte[] engineUpdate = engineUpdate(bArr, i, i2);
        this.cipher.reset();
        return engineUpdate;
    }

    @Override // org.bouncycastle.jce.provider.WrapCipherSpi, javax.crypto.CipherSpi
    public int engineGetBlockSize() {
        return 0;
    }

    @Override // org.bouncycastle.jce.provider.WrapCipherSpi, javax.crypto.CipherSpi
    public byte[] engineGetIV() {
        ParametersWithIV parametersWithIV = this.ivParam;
        return parametersWithIV != null ? parametersWithIV.getIV() : null;
    }

    @Override // org.bouncycastle.jce.provider.WrapCipherSpi, javax.crypto.CipherSpi
    public int engineGetKeySize(Key key) {
        return key.getEncoded().length * 8;
    }

    @Override // org.bouncycastle.jce.provider.WrapCipherSpi, javax.crypto.CipherSpi
    public int engineGetOutputSize(int i) {
        return i;
    }

    @Override // org.bouncycastle.jce.provider.WrapCipherSpi, javax.crypto.CipherSpi
    public AlgorithmParameters engineGetParameters() {
        AlgorithmParameters algorithmParameters = this.engineParams;
        AlgorithmParameters algorithmParameters2 = algorithmParameters;
        if (algorithmParameters == null) {
            algorithmParameters2 = algorithmParameters;
            if (this.pbeSpec != null) {
                try {
                    AlgorithmParameters algorithmParameters3 = AlgorithmParameters.getInstance(this.pbeAlgorithm, BouncyCastleProvider.PROVIDER_NAME);
                    algorithmParameters3.init(this.pbeSpec);
                    return algorithmParameters3;
                } catch (Exception e) {
                    algorithmParameters2 = null;
                }
            }
        }
        return algorithmParameters2;
    }

    @Override // org.bouncycastle.jce.provider.WrapCipherSpi, javax.crypto.CipherSpi
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
        engineInit(i, key, algorithmParameterSpec, secureRandom);
        this.engineParams = algorithmParameters;
    }

    @Override // org.bouncycastle.jce.provider.WrapCipherSpi, javax.crypto.CipherSpi
    public void engineInit(int i, Key key, SecureRandom secureRandom) {
        try {
            engineInit(i, key, (AlgorithmParameterSpec) null, secureRandom);
        } catch (InvalidAlgorithmParameterException e) {
            throw new InvalidKeyException(e.getMessage());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v48, types: [org.bouncycastle.crypto.params.KeyParameter] */
    /* JADX WARN: Type inference failed for: r0v65, types: [org.bouncycastle.crypto.CipherParameters] */
    @Override // org.bouncycastle.jce.provider.WrapCipherSpi, javax.crypto.CipherSpi
    public void engineInit(int i, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) {
        ParametersWithIV parametersWithIV;
        ParametersWithIV parametersWithIV2;
        this.pbeSpec = null;
        this.pbeAlgorithm = null;
        this.engineParams = null;
        if (!(key instanceof SecretKey)) {
            throw new InvalidKeyException("Key for algorithm " + key.getAlgorithm() + " not suitable for symmetric enryption.");
        }
        if (key instanceof JCEPBEKey) {
            JCEPBEKey jCEPBEKey = (JCEPBEKey) key;
            this.pbeAlgorithm = jCEPBEKey.getOID() != null ? jCEPBEKey.getOID().getId() : jCEPBEKey.getAlgorithm();
            if (jCEPBEKey.getParam() != null) {
                parametersWithIV2 = jCEPBEKey.getParam();
                this.pbeSpec = new PBEParameterSpec(jCEPBEKey.getSalt(), jCEPBEKey.getIterationCount());
            } else if (!(algorithmParameterSpec instanceof PBEParameterSpec)) {
                throw new InvalidAlgorithmParameterException("PBE requires PBE parameters to be set.");
            } else {
                ?? makePBEParameters = PBE.Util.makePBEParameters(jCEPBEKey, algorithmParameterSpec, this.cipher.getAlgorithmName());
                this.pbeSpec = (PBEParameterSpec) algorithmParameterSpec;
                parametersWithIV2 = makePBEParameters;
            }
            parametersWithIV = parametersWithIV2;
            if (jCEPBEKey.getIvSize() != 0) {
                this.ivParam = parametersWithIV2;
                parametersWithIV = parametersWithIV2;
            }
        } else if (algorithmParameterSpec == null) {
            parametersWithIV = new KeyParameter(key.getEncoded());
        } else if (!(algorithmParameterSpec instanceof IvParameterSpec)) {
            throw new IllegalArgumentException("unknown parameter type.");
        } else {
            parametersWithIV = new ParametersWithIV(new KeyParameter(key.getEncoded()), ((IvParameterSpec) algorithmParameterSpec).getIV());
            this.ivParam = parametersWithIV;
        }
        ParametersWithIV parametersWithIV3 = parametersWithIV;
        if (this.ivLength != 0) {
            parametersWithIV3 = parametersWithIV;
            if (!(parametersWithIV instanceof ParametersWithIV)) {
                SecureRandom secureRandom2 = secureRandom;
                if (secureRandom == null) {
                    secureRandom2 = new SecureRandom();
                }
                if (i != 1 && i != 3) {
                    throw new InvalidAlgorithmParameterException("no IV set when one expected");
                }
                byte[] bArr = new byte[this.ivLength];
                secureRandom2.nextBytes(bArr);
                parametersWithIV3 = new ParametersWithIV(parametersWithIV, bArr);
                this.ivParam = parametersWithIV3;
            }
        }
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        System.out.println("eeek!");
                        return;
                    }
                }
            }
            this.cipher.init(false, parametersWithIV3);
            return;
        }
        this.cipher.init(true, parametersWithIV3);
    }

    @Override // org.bouncycastle.jce.provider.WrapCipherSpi, javax.crypto.CipherSpi
    public void engineSetMode(String str) {
        if (str.equalsIgnoreCase("ECB")) {
            return;
        }
        throw new IllegalArgumentException("can't support mode " + str);
    }

    @Override // org.bouncycastle.jce.provider.WrapCipherSpi, javax.crypto.CipherSpi
    public void engineSetPadding(String str) {
        if (str.equalsIgnoreCase("NoPadding")) {
            return;
        }
        throw new NoSuchPaddingException("Padding " + str + " unknown.");
    }

    @Override // org.bouncycastle.jce.provider.WrapCipherSpi, javax.crypto.CipherSpi
    public int engineUpdate(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        try {
            this.cipher.processBytes(bArr, i, i2, bArr2, i3);
            return i2;
        } catch (DataLengthException e) {
            throw new ShortBufferException(e.getMessage());
        }
    }

    @Override // org.bouncycastle.jce.provider.WrapCipherSpi, javax.crypto.CipherSpi
    public byte[] engineUpdate(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.cipher.processBytes(bArr, i, i2, bArr2, 0);
        return bArr2;
    }
}
