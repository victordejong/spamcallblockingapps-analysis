package org.spongycastle.openpgp.operator.p035bc;

import org.spongycastle.crypto.AsymmetricBlockCipher;
import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.Signer;
import org.spongycastle.crypto.Wrapper;
import org.spongycastle.crypto.digests.MD2Digest;
import org.spongycastle.crypto.digests.MD5Digest;
import org.spongycastle.crypto.digests.RIPEMD160Digest;
import org.spongycastle.crypto.digests.SHA1Digest;
import org.spongycastle.crypto.digests.SHA224Digest;
import org.spongycastle.crypto.digests.SHA256Digest;
import org.spongycastle.crypto.digests.SHA384Digest;
import org.spongycastle.crypto.digests.SHA512Digest;
import org.spongycastle.crypto.digests.TigerDigest;
import org.spongycastle.crypto.encodings.PKCS1Encoding;
import org.spongycastle.crypto.engines.AESEngine;
import org.spongycastle.crypto.engines.AESFastEngine;
import org.spongycastle.crypto.engines.BlowfishEngine;
import org.spongycastle.crypto.engines.CAST5Engine;
import org.spongycastle.crypto.engines.CamelliaEngine;
import org.spongycastle.crypto.engines.DESEngine;
import org.spongycastle.crypto.engines.DESedeEngine;
import org.spongycastle.crypto.engines.ElGamalEngine;
import org.spongycastle.crypto.engines.IDEAEngine;
import org.spongycastle.crypto.engines.RFC3394WrapEngine;
import org.spongycastle.crypto.engines.RSABlindedEngine;
import org.spongycastle.crypto.engines.TwofishEngine;
import org.spongycastle.crypto.signers.DSADigestSigner;
import org.spongycastle.crypto.signers.DSASigner;
import org.spongycastle.crypto.signers.ECDSASigner;
import org.spongycastle.crypto.signers.RSADigestSigner;
import org.spongycastle.openpgp.PGPException;
/* renamed from: org.spongycastle.openpgp.operator.bc.BcImplProvider */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/bc/BcImplProvider.class */
class BcImplProvider {
    BcImplProvider() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static BlockCipher createBlockCipher(int i) throws PGPException {
        BlockCipher blockCipher;
        switch (i) {
            case 1:
                blockCipher = new IDEAEngine();
                break;
            case 2:
                blockCipher = new DESedeEngine();
                break;
            case 3:
                blockCipher = new CAST5Engine();
                break;
            case 4:
                blockCipher = new BlowfishEngine();
                break;
            case 5:
            default:
                throw new PGPException("cannot recognise cipher");
            case 6:
                blockCipher = new DESEngine();
                break;
            case 7:
            case 8:
            case 9:
                blockCipher = new AESEngine();
                break;
            case 10:
                blockCipher = new TwofishEngine();
                break;
            case 11:
            case 12:
            case 13:
                blockCipher = new CamelliaEngine();
                break;
        }
        return blockCipher;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Digest createDigest(int i) throws PGPException {
        switch (i) {
            case 1:
                return new MD5Digest();
            case 2:
                return new SHA1Digest();
            case 3:
                return new RIPEMD160Digest();
            case 4:
            case 7:
            default:
                throw new PGPException("cannot recognise digest");
            case 5:
                return new MD2Digest();
            case 6:
                return new TigerDigest();
            case 8:
                return new SHA256Digest();
            case 9:
                return new SHA384Digest();
            case 10:
                return new SHA512Digest();
            case 11:
                return new SHA224Digest();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AsymmetricBlockCipher createPublicKeyCipher(int i) throws PGPException {
        PKCS1Encoding pKCS1Encoding;
        switch (i) {
            case 1:
            case 2:
                pKCS1Encoding = new PKCS1Encoding(new RSABlindedEngine());
                break;
            default:
                switch (i) {
                    case 16:
                    case 20:
                        pKCS1Encoding = new PKCS1Encoding(new ElGamalEngine());
                        break;
                    case 17:
                        throw new PGPException("Can't use DSA for encryption.");
                    case 18:
                        throw new PGPException("Not implemented.");
                    case 19:
                        throw new PGPException("Can't use ECDSA for encryption.");
                    default:
                        throw new PGPException("unknown asymmetric algorithm: " + i);
                }
        }
        return pKCS1Encoding;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Signer createSigner(int i, int i2) throws PGPException {
        if (i == 1 || i == 3) {
            return new RSADigestSigner(createDigest(i2));
        }
        if (i == 17) {
            return new DSADigestSigner(new DSASigner(), createDigest(i2));
        }
        if (i == 19) {
            return new DSADigestSigner(new ECDSASigner(), createDigest(i2));
        }
        throw new PGPException("cannot recognise keyAlgorithm: " + i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Wrapper createWrapper(int i) throws PGPException {
        switch (i) {
            case 7:
            case 8:
            case 9:
                return new RFC3394WrapEngine(new AESFastEngine());
            case 10:
            default:
                throw new PGPException("unknown wrap algorithm: " + i);
            case 11:
            case 12:
            case 13:
                return new RFC3394WrapEngine(new CamelliaEngine());
        }
    }
}
