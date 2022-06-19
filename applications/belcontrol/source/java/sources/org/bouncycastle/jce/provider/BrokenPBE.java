package org.bouncycastle.jce.provider;

import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.spec.PBEParameterSpec;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.PBEParametersGenerator;
import org.bouncycastle.crypto.digests.MD5Digest;
import org.bouncycastle.crypto.digests.RIPEMD160Digest;
import org.bouncycastle.crypto.digests.SHA1Digest;
import org.bouncycastle.crypto.generators.PKCS12ParametersGenerator;
import org.bouncycastle.crypto.generators.PKCS5S1ParametersGenerator;
import org.bouncycastle.crypto.generators.PKCS5S2ParametersGenerator;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/BrokenPBE.class */
public interface BrokenPBE {
    public static final int MD5 = 0;
    public static final int OLD_PKCS12 = 3;
    public static final int PKCS12 = 2;
    public static final int PKCS5S1 = 0;
    public static final int PKCS5S2 = 1;
    public static final int RIPEMD160 = 2;
    public static final int SHA1 = 1;

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/BrokenPBE$Util.class */
    public static class Util {
        private static PBEParametersGenerator makePBEGenerator(int i, int i2) {
            PKCS5S1ParametersGenerator pKCS5S1ParametersGenerator;
            if (i == 0) {
                if (i2 == 0) {
                    pKCS5S1ParametersGenerator = new PKCS5S1ParametersGenerator(new MD5Digest());
                } else if (i2 != 1) {
                    throw new IllegalStateException("PKCS5 scheme 1 only supports only MD5 and SHA1.");
                } else {
                    pKCS5S1ParametersGenerator = new PKCS5S1ParametersGenerator(new SHA1Digest());
                }
            } else if (i == 1) {
                pKCS5S1ParametersGenerator = new PKCS5S2ParametersGenerator();
            } else if (i == 3) {
                if (i2 == 0) {
                    pKCS5S1ParametersGenerator = new OldPKCS12ParametersGenerator(new MD5Digest());
                } else if (i2 == 1) {
                    pKCS5S1ParametersGenerator = new OldPKCS12ParametersGenerator(new SHA1Digest());
                } else if (i2 != 2) {
                    throw new IllegalStateException("unknown digest scheme for PBE encryption.");
                } else {
                    pKCS5S1ParametersGenerator = new OldPKCS12ParametersGenerator(new RIPEMD160Digest());
                }
            } else if (i2 == 0) {
                pKCS5S1ParametersGenerator = new PKCS12ParametersGenerator(new MD5Digest());
            } else if (i2 == 1) {
                pKCS5S1ParametersGenerator = new PKCS12ParametersGenerator(new SHA1Digest());
            } else if (i2 != 2) {
                throw new IllegalStateException("unknown digest scheme for PBE encryption.");
            } else {
                pKCS5S1ParametersGenerator = new PKCS12ParametersGenerator(new RIPEMD160Digest());
            }
            return pKCS5S1ParametersGenerator;
        }

        public static CipherParameters makePBEMacParameters(JCEPBEKey jCEPBEKey, AlgorithmParameterSpec algorithmParameterSpec, int i, int i2, int i3) {
            if (algorithmParameterSpec == null || !(algorithmParameterSpec instanceof PBEParameterSpec)) {
                throw new IllegalArgumentException("Need a PBEParameter spec with a PBE key.");
            }
            PBEParameterSpec pBEParameterSpec = (PBEParameterSpec) algorithmParameterSpec;
            PBEParametersGenerator makePBEGenerator = makePBEGenerator(i, i2);
            byte[] encoded = jCEPBEKey.getEncoded();
            makePBEGenerator.init(encoded, pBEParameterSpec.getSalt(), pBEParameterSpec.getIterationCount());
            CipherParameters generateDerivedMacParameters = makePBEGenerator.generateDerivedMacParameters(i3);
            for (int i4 = 0; i4 != encoded.length; i4++) {
                encoded[i4] = (byte) 0;
            }
            return generateDerivedMacParameters;
        }

        public static CipherParameters makePBEParameters(JCEPBEKey jCEPBEKey, AlgorithmParameterSpec algorithmParameterSpec, int i, int i2, String str, int i3, int i4) {
            if (algorithmParameterSpec == null || !(algorithmParameterSpec instanceof PBEParameterSpec)) {
                throw new IllegalArgumentException("Need a PBEParameter spec with a PBE key.");
            }
            PBEParameterSpec pBEParameterSpec = (PBEParameterSpec) algorithmParameterSpec;
            PBEParametersGenerator makePBEGenerator = makePBEGenerator(i, i2);
            byte[] encoded = jCEPBEKey.getEncoded();
            makePBEGenerator.init(encoded, pBEParameterSpec.getSalt(), pBEParameterSpec.getIterationCount());
            CipherParameters generateDerivedParameters = i4 != 0 ? makePBEGenerator.generateDerivedParameters(i3, i4) : makePBEGenerator.generateDerivedParameters(i3);
            if (str.startsWith("DES")) {
                if (generateDerivedParameters instanceof ParametersWithIV) {
                    setOddParity(((KeyParameter) ((ParametersWithIV) generateDerivedParameters).getParameters()).getKey());
                } else {
                    setOddParity(((KeyParameter) generateDerivedParameters).getKey());
                }
            }
            for (int i5 = 0; i5 != encoded.length; i5++) {
                encoded[i5] = (byte) 0;
            }
            return generateDerivedParameters;
        }

        private static void setOddParity(byte[] bArr) {
            for (int i = 0; i < bArr.length; i++) {
                byte b = bArr[i];
                bArr[i] = (byte) ((((b >> 7) ^ ((((((b >> 1) ^ (b >> 2)) ^ (b >> 3)) ^ (b >> 4)) ^ (b >> 5)) ^ (b >> 6))) ^ 1) | (b & 254));
            }
        }
    }
}
