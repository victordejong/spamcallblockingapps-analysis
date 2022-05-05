package org.spongycastle.jcajce.provider.symmetric.util;

import java.security.InvalidAlgorithmParameterException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.SecretKey;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.PBEParametersGenerator;
import org.spongycastle.crypto.digests.GOST3411Digest;
import org.spongycastle.crypto.digests.MD2Digest;
import org.spongycastle.crypto.digests.RIPEMD160Digest;
import org.spongycastle.crypto.digests.TigerDigest;
import org.spongycastle.crypto.generators.OpenSSLPBEParametersGenerator;
import org.spongycastle.crypto.generators.PKCS12ParametersGenerator;
import org.spongycastle.crypto.generators.PKCS5S1ParametersGenerator;
import org.spongycastle.crypto.generators.PKCS5S2ParametersGenerator;
import org.spongycastle.crypto.params.DESParameters;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.crypto.util.DigestFactory;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/util/PBE.class */
public interface PBE {
    public static final int GOST3411 = 6;
    public static final int MD2 = 5;
    public static final int MD5 = 0;
    public static final int OPENSSL = 3;
    public static final int PKCS12 = 2;
    public static final int PKCS5S1 = 0;
    public static final int PKCS5S1_UTF8 = 4;
    public static final int PKCS5S2 = 1;
    public static final int PKCS5S2_UTF8 = 5;
    public static final int RIPEMD160 = 2;
    public static final int SHA1 = 1;
    public static final int SHA224 = 7;
    public static final int SHA256 = 4;
    public static final int SHA384 = 8;
    public static final int SHA3_224 = 10;
    public static final int SHA3_256 = 11;
    public static final int SHA3_384 = 12;
    public static final int SHA3_512 = 13;
    public static final int SHA512 = 9;
    public static final int TIGER = 3;

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/util/PBE$Util.class */
    public static class Util {
        private static byte[] convertPassword(int i, PBEKeySpec pBEKeySpec) {
            return i == 2 ? PBEParametersGenerator.PKCS12PasswordToBytes(pBEKeySpec.getPassword()) : (i == 5 || i == 4) ? PBEParametersGenerator.PKCS5PasswordToUTF8Bytes(pBEKeySpec.getPassword()) : PBEParametersGenerator.PKCS5PasswordToBytes(pBEKeySpec.getPassword());
        }

        private static PBEParametersGenerator makePBEGenerator(int i, int i2) {
            PBEParametersGenerator pBEParametersGenerator;
            if (i == 0 || i == 4) {
                if (i2 != 5) {
                    switch (i2) {
                        case 0:
                            pBEParametersGenerator = new PKCS5S1ParametersGenerator(DigestFactory.createMD5());
                            break;
                        case 1:
                            pBEParametersGenerator = new PKCS5S1ParametersGenerator(DigestFactory.createSHA1());
                            break;
                        default:
                            throw new IllegalStateException("PKCS5 scheme 1 only supports MD2, MD5 and SHA1.");
                    }
                } else {
                    pBEParametersGenerator = new PKCS5S1ParametersGenerator(new MD2Digest());
                }
            } else if (i == 1 || i == 5) {
                switch (i2) {
                    case 0:
                        pBEParametersGenerator = new PKCS5S2ParametersGenerator(DigestFactory.createMD5());
                        break;
                    case 1:
                        pBEParametersGenerator = new PKCS5S2ParametersGenerator(DigestFactory.createSHA1());
                        break;
                    case 2:
                        pBEParametersGenerator = new PKCS5S2ParametersGenerator(new RIPEMD160Digest());
                        break;
                    case 3:
                        pBEParametersGenerator = new PKCS5S2ParametersGenerator(new TigerDigest());
                        break;
                    case 4:
                        pBEParametersGenerator = new PKCS5S2ParametersGenerator(DigestFactory.createSHA256());
                        break;
                    case 5:
                        pBEParametersGenerator = new PKCS5S2ParametersGenerator(new MD2Digest());
                        break;
                    case 6:
                        pBEParametersGenerator = new PKCS5S2ParametersGenerator(new GOST3411Digest());
                        break;
                    case 7:
                        pBEParametersGenerator = new PKCS5S2ParametersGenerator(DigestFactory.createSHA224());
                        break;
                    case 8:
                        pBEParametersGenerator = new PKCS5S2ParametersGenerator(DigestFactory.createSHA384());
                        break;
                    case 9:
                        pBEParametersGenerator = new PKCS5S2ParametersGenerator(DigestFactory.createSHA512());
                        break;
                    case 10:
                        pBEParametersGenerator = new PKCS5S2ParametersGenerator(DigestFactory.createSHA3_224());
                        break;
                    case 11:
                        pBEParametersGenerator = new PKCS5S2ParametersGenerator(DigestFactory.createSHA3_256());
                        break;
                    case 12:
                        pBEParametersGenerator = new PKCS5S2ParametersGenerator(DigestFactory.createSHA3_384());
                        break;
                    case 13:
                        pBEParametersGenerator = new PKCS5S2ParametersGenerator(DigestFactory.createSHA3_512());
                        break;
                    default:
                        throw new IllegalStateException("unknown digest scheme for PBE PKCS5S2 encryption.");
                }
            } else if (i == 2) {
                switch (i2) {
                    case 0:
                        pBEParametersGenerator = new PKCS12ParametersGenerator(DigestFactory.createMD5());
                        break;
                    case 1:
                        pBEParametersGenerator = new PKCS12ParametersGenerator(DigestFactory.createSHA1());
                        break;
                    case 2:
                        pBEParametersGenerator = new PKCS12ParametersGenerator(new RIPEMD160Digest());
                        break;
                    case 3:
                        pBEParametersGenerator = new PKCS12ParametersGenerator(new TigerDigest());
                        break;
                    case 4:
                        pBEParametersGenerator = new PKCS12ParametersGenerator(DigestFactory.createSHA256());
                        break;
                    case 5:
                        pBEParametersGenerator = new PKCS12ParametersGenerator(new MD2Digest());
                        break;
                    case 6:
                        pBEParametersGenerator = new PKCS12ParametersGenerator(new GOST3411Digest());
                        break;
                    case 7:
                        pBEParametersGenerator = new PKCS12ParametersGenerator(DigestFactory.createSHA224());
                        break;
                    case 8:
                        pBEParametersGenerator = new PKCS12ParametersGenerator(DigestFactory.createSHA384());
                        break;
                    case 9:
                        pBEParametersGenerator = new PKCS12ParametersGenerator(DigestFactory.createSHA512());
                        break;
                    default:
                        throw new IllegalStateException("unknown digest scheme for PBE encryption.");
                }
            } else {
                pBEParametersGenerator = new OpenSSLPBEParametersGenerator();
            }
            return pBEParametersGenerator;
        }

        public static CipherParameters makePBEMacParameters(SecretKey secretKey, int i, int i2, int i3, PBEParameterSpec pBEParameterSpec) {
            PBEParametersGenerator makePBEGenerator = makePBEGenerator(i, i2);
            byte[] encoded = secretKey.getEncoded();
            makePBEGenerator.init(secretKey.getEncoded(), pBEParameterSpec.getSalt(), pBEParameterSpec.getIterationCount());
            CipherParameters generateDerivedMacParameters = makePBEGenerator.generateDerivedMacParameters(i3);
            for (int i4 = 0; i4 != encoded.length; i4++) {
                encoded[i4] = (byte) 0;
            }
            return generateDerivedMacParameters;
        }

        public static CipherParameters makePBEMacParameters(PBEKeySpec pBEKeySpec, int i, int i2, int i3) {
            PBEParametersGenerator makePBEGenerator = makePBEGenerator(i, i2);
            byte[] convertPassword = convertPassword(i, pBEKeySpec);
            makePBEGenerator.init(convertPassword, pBEKeySpec.getSalt(), pBEKeySpec.getIterationCount());
            CipherParameters generateDerivedMacParameters = makePBEGenerator.generateDerivedMacParameters(i3);
            for (int i4 = 0; i4 != convertPassword.length; i4++) {
                convertPassword[i4] = (byte) 0;
            }
            return generateDerivedMacParameters;
        }

        public static CipherParameters makePBEMacParameters(BCPBEKey bCPBEKey, AlgorithmParameterSpec algorithmParameterSpec) {
            if (algorithmParameterSpec == null || !(algorithmParameterSpec instanceof PBEParameterSpec)) {
                throw new IllegalArgumentException("Need a PBEParameter spec with a PBE key.");
            }
            PBEParameterSpec pBEParameterSpec = (PBEParameterSpec) algorithmParameterSpec;
            PBEParametersGenerator makePBEGenerator = makePBEGenerator(bCPBEKey.getType(), bCPBEKey.getDigest());
            makePBEGenerator.init(bCPBEKey.getEncoded(), pBEParameterSpec.getSalt(), pBEParameterSpec.getIterationCount());
            return makePBEGenerator.generateDerivedMacParameters(bCPBEKey.getKeySize());
        }

        public static CipherParameters makePBEParameters(PBEKeySpec pBEKeySpec, int i, int i2, int i3, int i4) {
            PBEParametersGenerator makePBEGenerator = makePBEGenerator(i, i2);
            byte[] convertPassword = convertPassword(i, pBEKeySpec);
            makePBEGenerator.init(convertPassword, pBEKeySpec.getSalt(), pBEKeySpec.getIterationCount());
            CipherParameters generateDerivedParameters = i4 != 0 ? makePBEGenerator.generateDerivedParameters(i3, i4) : makePBEGenerator.generateDerivedParameters(i3);
            for (int i5 = 0; i5 != convertPassword.length; i5++) {
                convertPassword[i5] = (byte) 0;
            }
            return generateDerivedParameters;
        }

        public static CipherParameters makePBEParameters(BCPBEKey bCPBEKey, AlgorithmParameterSpec algorithmParameterSpec, String str) {
            if (algorithmParameterSpec == null || !(algorithmParameterSpec instanceof PBEParameterSpec)) {
                throw new IllegalArgumentException("Need a PBEParameter spec with a PBE key.");
            }
            PBEParameterSpec pBEParameterSpec = (PBEParameterSpec) algorithmParameterSpec;
            PBEParametersGenerator makePBEGenerator = makePBEGenerator(bCPBEKey.getType(), bCPBEKey.getDigest());
            byte[] encoded = bCPBEKey.getEncoded();
            if (bCPBEKey.shouldTryWrongPKCS12()) {
                encoded = new byte[2];
            }
            makePBEGenerator.init(encoded, pBEParameterSpec.getSalt(), pBEParameterSpec.getIterationCount());
            CipherParameters generateDerivedParameters = bCPBEKey.getIvSize() != 0 ? makePBEGenerator.generateDerivedParameters(bCPBEKey.getKeySize(), bCPBEKey.getIvSize()) : makePBEGenerator.generateDerivedParameters(bCPBEKey.getKeySize());
            if (str.startsWith("DES")) {
                if (generateDerivedParameters instanceof ParametersWithIV) {
                    DESParameters.setOddParity(((KeyParameter) ((ParametersWithIV) generateDerivedParameters).getParameters()).getKey());
                } else {
                    DESParameters.setOddParity(((KeyParameter) generateDerivedParameters).getKey());
                }
            }
            return generateDerivedParameters;
        }

        public static CipherParameters makePBEParameters(byte[] bArr, int i, int i2, int i3, int i4, AlgorithmParameterSpec algorithmParameterSpec, String str) throws InvalidAlgorithmParameterException {
            if (algorithmParameterSpec == null || !(algorithmParameterSpec instanceof PBEParameterSpec)) {
                throw new InvalidAlgorithmParameterException("Need a PBEParameter spec with a PBE key.");
            }
            PBEParameterSpec pBEParameterSpec = (PBEParameterSpec) algorithmParameterSpec;
            PBEParametersGenerator makePBEGenerator = makePBEGenerator(i, i2);
            makePBEGenerator.init(bArr, pBEParameterSpec.getSalt(), pBEParameterSpec.getIterationCount());
            CipherParameters generateDerivedParameters = i4 != 0 ? makePBEGenerator.generateDerivedParameters(i3, i4) : makePBEGenerator.generateDerivedParameters(i3);
            if (str.startsWith("DES")) {
                if (generateDerivedParameters instanceof ParametersWithIV) {
                    DESParameters.setOddParity(((KeyParameter) ((ParametersWithIV) generateDerivedParameters).getParameters()).getKey());
                } else {
                    DESParameters.setOddParity(((KeyParameter) generateDerivedParameters).getKey());
                }
            }
            return generateDerivedParameters;
        }
    }
}
