package org.bouncycastle.jce.provider;

import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.PBEParametersGenerator;
import org.bouncycastle.crypto.digests.MD2Digest;
import org.bouncycastle.crypto.digests.MD5Digest;
import org.bouncycastle.crypto.digests.RIPEMD160Digest;
import org.bouncycastle.crypto.digests.SHA1Digest;
import org.bouncycastle.crypto.digests.SHA256Digest;
import org.bouncycastle.crypto.digests.TigerDigest;
import org.bouncycastle.crypto.generators.OpenSSLPBEParametersGenerator;
import org.bouncycastle.crypto.generators.PKCS12ParametersGenerator;
import org.bouncycastle.crypto.generators.PKCS5S1ParametersGenerator;
import org.bouncycastle.crypto.generators.PKCS5S2ParametersGenerator;
import org.bouncycastle.crypto.params.DESParameters;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/PBE.class */
public interface PBE {
    public static final int MD2 = 5;
    public static final int MD5 = 0;
    public static final int OPENSSL = 3;
    public static final int PKCS12 = 2;
    public static final int PKCS5S1 = 0;
    public static final int PKCS5S2 = 1;
    public static final int RIPEMD160 = 2;
    public static final int SHA1 = 1;
    public static final int SHA256 = 4;
    public static final int TIGER = 3;

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/PBE$Util.class */
    public static class Util {
        private static PBEParametersGenerator makePBEGenerator(int i, int i2) {
            PKCS5S1ParametersGenerator pKCS5S1ParametersGenerator;
            if (i == 0) {
                if (i2 == 0) {
                    pKCS5S1ParametersGenerator = new PKCS5S1ParametersGenerator(new MD5Digest());
                } else if (i2 == 1) {
                    pKCS5S1ParametersGenerator = new PKCS5S1ParametersGenerator(new SHA1Digest());
                } else if (i2 != 5) {
                    throw new IllegalStateException("PKCS5 scheme 1 only supports MD2, MD5 and SHA1.");
                } else {
                    pKCS5S1ParametersGenerator = new PKCS5S1ParametersGenerator(new MD2Digest());
                }
            } else if (i == 1) {
                pKCS5S1ParametersGenerator = new PKCS5S2ParametersGenerator();
            } else if (i != 2) {
                pKCS5S1ParametersGenerator = new OpenSSLPBEParametersGenerator();
            } else if (i2 == 0) {
                pKCS5S1ParametersGenerator = new PKCS12ParametersGenerator(new MD5Digest());
            } else if (i2 == 1) {
                pKCS5S1ParametersGenerator = new PKCS12ParametersGenerator(new SHA1Digest());
            } else if (i2 == 2) {
                pKCS5S1ParametersGenerator = new PKCS12ParametersGenerator(new RIPEMD160Digest());
            } else if (i2 == 3) {
                pKCS5S1ParametersGenerator = new PKCS12ParametersGenerator(new TigerDigest());
            } else if (i2 == 4) {
                pKCS5S1ParametersGenerator = new PKCS12ParametersGenerator(new SHA256Digest());
            } else if (i2 != 5) {
                throw new IllegalStateException("unknown digest scheme for PBE encryption.");
            } else {
                pKCS5S1ParametersGenerator = new PKCS12ParametersGenerator(new MD2Digest());
            }
            return pKCS5S1ParametersGenerator;
        }

        public static CipherParameters makePBEMacParameters(PBEKeySpec pBEKeySpec, int i, int i2, int i3) {
            PBEParametersGenerator makePBEGenerator = makePBEGenerator(i, i2);
            byte[] PKCS12PasswordToBytes = i == 2 ? PBEParametersGenerator.PKCS12PasswordToBytes(pBEKeySpec.getPassword()) : PBEParametersGenerator.PKCS5PasswordToBytes(pBEKeySpec.getPassword());
            makePBEGenerator.init(PKCS12PasswordToBytes, pBEKeySpec.getSalt(), pBEKeySpec.getIterationCount());
            CipherParameters generateDerivedMacParameters = makePBEGenerator.generateDerivedMacParameters(i3);
            for (int i4 = 0; i4 != PKCS12PasswordToBytes.length; i4++) {
                PKCS12PasswordToBytes[i4] = (byte) 0;
            }
            return generateDerivedMacParameters;
        }

        public static CipherParameters makePBEMacParameters(JCEPBEKey jCEPBEKey, AlgorithmParameterSpec algorithmParameterSpec) {
            if (algorithmParameterSpec == null || !(algorithmParameterSpec instanceof PBEParameterSpec)) {
                throw new IllegalArgumentException("Need a PBEParameter spec with a PBE key.");
            }
            PBEParameterSpec pBEParameterSpec = (PBEParameterSpec) algorithmParameterSpec;
            PBEParametersGenerator makePBEGenerator = makePBEGenerator(jCEPBEKey.getType(), jCEPBEKey.getDigest());
            byte[] encoded = jCEPBEKey.getEncoded();
            if (jCEPBEKey.shouldTryWrongPKCS12()) {
                encoded = new byte[2];
            }
            makePBEGenerator.init(encoded, pBEParameterSpec.getSalt(), pBEParameterSpec.getIterationCount());
            CipherParameters generateDerivedMacParameters = makePBEGenerator.generateDerivedMacParameters(jCEPBEKey.getKeySize());
            for (int i = 0; i != encoded.length; i++) {
                encoded[i] = (byte) 0;
            }
            return generateDerivedMacParameters;
        }

        public static CipherParameters makePBEParameters(PBEKeySpec pBEKeySpec, int i, int i2, int i3, int i4) {
            PBEParametersGenerator makePBEGenerator = makePBEGenerator(i, i2);
            byte[] PKCS12PasswordToBytes = i == 2 ? PBEParametersGenerator.PKCS12PasswordToBytes(pBEKeySpec.getPassword()) : PBEParametersGenerator.PKCS5PasswordToBytes(pBEKeySpec.getPassword());
            makePBEGenerator.init(PKCS12PasswordToBytes, pBEKeySpec.getSalt(), pBEKeySpec.getIterationCount());
            CipherParameters generateDerivedParameters = i4 != 0 ? makePBEGenerator.generateDerivedParameters(i3, i4) : makePBEGenerator.generateDerivedParameters(i3);
            for (int i5 = 0; i5 != PKCS12PasswordToBytes.length; i5++) {
                PKCS12PasswordToBytes[i5] = (byte) 0;
            }
            return generateDerivedParameters;
        }

        public static CipherParameters makePBEParameters(JCEPBEKey jCEPBEKey, AlgorithmParameterSpec algorithmParameterSpec, String str) {
            if (algorithmParameterSpec == null || !(algorithmParameterSpec instanceof PBEParameterSpec)) {
                throw new IllegalArgumentException("Need a PBEParameter spec with a PBE key.");
            }
            PBEParameterSpec pBEParameterSpec = (PBEParameterSpec) algorithmParameterSpec;
            PBEParametersGenerator makePBEGenerator = makePBEGenerator(jCEPBEKey.getType(), jCEPBEKey.getDigest());
            byte[] encoded = jCEPBEKey.getEncoded();
            if (jCEPBEKey.shouldTryWrongPKCS12()) {
                encoded = new byte[2];
            }
            makePBEGenerator.init(encoded, pBEParameterSpec.getSalt(), pBEParameterSpec.getIterationCount());
            CipherParameters generateDerivedParameters = jCEPBEKey.getIvSize() != 0 ? makePBEGenerator.generateDerivedParameters(jCEPBEKey.getKeySize(), jCEPBEKey.getIvSize()) : makePBEGenerator.generateDerivedParameters(jCEPBEKey.getKeySize());
            if (str.startsWith("DES")) {
                if (generateDerivedParameters instanceof ParametersWithIV) {
                    DESParameters.setOddParity(((KeyParameter) ((ParametersWithIV) generateDerivedParameters).getParameters()).getKey());
                } else {
                    DESParameters.setOddParity(((KeyParameter) generateDerivedParameters).getKey());
                }
            }
            for (int i = 0; i != encoded.length; i++) {
                encoded[i] = (byte) 0;
            }
            return generateDerivedParameters;
        }
    }
}
