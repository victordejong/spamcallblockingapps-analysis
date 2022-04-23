package org.spongycastle.pqc.crypto.xmss;

import java.security.SecureRandom;
import java.text.ParseException;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.pqc.crypto.xmss.XMSSPrivateKeyParameters;
import org.spongycastle.pqc.crypto.xmss.XMSSPublicKeyParameters;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/xmss/XMSS.class */
public class XMSS {
    private final XMSSParameters params;
    private XMSSPrivateKeyParameters privateKey;
    private SecureRandom prng;
    private XMSSPublicKeyParameters publicKey;
    private WOTSPlus wotsPlus;

    public XMSS(XMSSParameters xMSSParameters, SecureRandom secureRandom) {
        if (xMSSParameters == null) {
            throw new NullPointerException("params == null");
        }
        this.params = xMSSParameters;
        this.wotsPlus = xMSSParameters.getWOTSPlus();
        this.prng = secureRandom;
    }

    public byte[] exportPrivateKey() {
        return this.privateKey.toByteArray();
    }

    public byte[] exportPublicKey() {
        return this.publicKey.toByteArray();
    }

    public void generateKeys() {
        XMSSKeyPairGenerator xMSSKeyPairGenerator = new XMSSKeyPairGenerator();
        xMSSKeyPairGenerator.init(new XMSSKeyGenerationParameters(getParams(), this.prng));
        AsymmetricCipherKeyPair generateKeyPair = xMSSKeyPairGenerator.generateKeyPair();
        this.privateKey = (XMSSPrivateKeyParameters) generateKeyPair.getPrivate();
        this.publicKey = (XMSSPublicKeyParameters) generateKeyPair.getPublic();
        this.wotsPlus.importKeys(new byte[this.params.getDigestSize()], this.privateKey.getPublicSeed());
    }

    public int getIndex() {
        return this.privateKey.getIndex();
    }

    public XMSSParameters getParams() {
        return this.params;
    }

    public XMSSPrivateKeyParameters getPrivateKey() {
        return this.privateKey;
    }

    public byte[] getPublicSeed() {
        return this.privateKey.getPublicSeed();
    }

    public byte[] getRoot() {
        return this.privateKey.getRoot();
    }

    protected WOTSPlus getWOTSPlus() {
        return this.wotsPlus;
    }

    void importState(XMSSPrivateKeyParameters xMSSPrivateKeyParameters, XMSSPublicKeyParameters xMSSPublicKeyParameters) {
        if (!Arrays.areEqual(xMSSPrivateKeyParameters.getRoot(), xMSSPublicKeyParameters.getRoot())) {
            throw new IllegalStateException("root of private key and public key do not match");
        } else if (!Arrays.areEqual(xMSSPrivateKeyParameters.getPublicSeed(), xMSSPublicKeyParameters.getPublicSeed())) {
            throw new IllegalStateException("public seed of private key and public key do not match");
        } else {
            this.privateKey = xMSSPrivateKeyParameters;
            this.publicKey = xMSSPublicKeyParameters;
            this.wotsPlus.importKeys(new byte[this.params.getDigestSize()], this.privateKey.getPublicSeed());
        }
    }

    public void importState(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            throw new NullPointerException("privateKey == null");
        } else if (bArr2 == null) {
            throw new NullPointerException("publicKey == null");
        } else {
            XMSSPrivateKeyParameters build = new XMSSPrivateKeyParameters.Builder(this.params).withPrivateKey(bArr, getParams()).build();
            XMSSPublicKeyParameters build2 = new XMSSPublicKeyParameters.Builder(this.params).withPublicKey(bArr2).build();
            if (!Arrays.areEqual(build.getRoot(), build2.getRoot())) {
                throw new IllegalStateException("root of private key and public key do not match");
            } else if (!Arrays.areEqual(build.getPublicSeed(), build2.getPublicSeed())) {
                throw new IllegalStateException("public seed of private key and public key do not match");
            } else {
                this.privateKey = build;
                this.publicKey = build2;
                this.wotsPlus.importKeys(new byte[this.params.getDigestSize()], this.privateKey.getPublicSeed());
            }
        }
    }

    protected void setIndex(int i) {
        this.privateKey = new XMSSPrivateKeyParameters.Builder(this.params).withSecretKeySeed(this.privateKey.getSecretKeySeed()).withSecretKeyPRF(this.privateKey.getSecretKeyPRF()).withPublicSeed(this.privateKey.getPublicSeed()).withRoot(this.privateKey.getRoot()).withBDSState(this.privateKey.getBDSState()).build();
    }

    protected void setPublicSeed(byte[] bArr) {
        this.privateKey = new XMSSPrivateKeyParameters.Builder(this.params).withSecretKeySeed(this.privateKey.getSecretKeySeed()).withSecretKeyPRF(this.privateKey.getSecretKeyPRF()).withPublicSeed(bArr).withRoot(getRoot()).withBDSState(this.privateKey.getBDSState()).build();
        this.publicKey = new XMSSPublicKeyParameters.Builder(this.params).withRoot(getRoot()).withPublicSeed(bArr).build();
        this.wotsPlus.importKeys(new byte[this.params.getDigestSize()], bArr);
    }

    protected void setRoot(byte[] bArr) {
        this.privateKey = new XMSSPrivateKeyParameters.Builder(this.params).withSecretKeySeed(this.privateKey.getSecretKeySeed()).withSecretKeyPRF(this.privateKey.getSecretKeyPRF()).withPublicSeed(getPublicSeed()).withRoot(bArr).withBDSState(this.privateKey.getBDSState()).build();
        this.publicKey = new XMSSPublicKeyParameters.Builder(this.params).withRoot(bArr).withPublicSeed(getPublicSeed()).build();
    }

    public byte[] sign(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException("message == null");
        }
        XMSSSigner xMSSSigner = new XMSSSigner();
        xMSSSigner.init(true, this.privateKey);
        byte[] generateSignature = xMSSSigner.generateSignature(bArr);
        this.privateKey = (XMSSPrivateKeyParameters) xMSSSigner.getUpdatedPrivateKey();
        importState(this.privateKey, this.publicKey);
        return generateSignature;
    }

    public boolean verifySignature(byte[] bArr, byte[] bArr2, byte[] bArr3) throws ParseException {
        if (bArr == null) {
            throw new NullPointerException("message == null");
        } else if (bArr2 == null) {
            throw new NullPointerException("signature == null");
        } else if (bArr3 == null) {
            throw new NullPointerException("publicKey == null");
        } else {
            XMSSSigner xMSSSigner = new XMSSSigner();
            xMSSSigner.init(false, new XMSSPublicKeyParameters.Builder(getParams()).withPublicKey(bArr3).build());
            return xMSSSigner.verifySignature(bArr, bArr2);
        }
    }

    protected WOTSPlusSignature wotsSign(byte[] bArr, OTSHashAddress oTSHashAddress) {
        if (bArr.length != this.params.getDigestSize()) {
            throw new IllegalArgumentException("size of messageDigest needs to be equal to size of digest");
        } else if (oTSHashAddress == null) {
            throw new NullPointerException("otsHashAddress == null");
        } else {
            this.wotsPlus.importKeys(this.wotsPlus.getWOTSPlusSecretKey(this.privateKey.getSecretKeySeed(), oTSHashAddress), getPublicSeed());
            return this.wotsPlus.sign(bArr, oTSHashAddress);
        }
    }
}
