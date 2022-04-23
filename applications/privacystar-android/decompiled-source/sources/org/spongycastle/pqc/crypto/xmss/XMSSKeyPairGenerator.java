package org.spongycastle.pqc.crypto.xmss;

import java.security.SecureRandom;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.KeyGenerationParameters;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.pqc.crypto.xmss.OTSHashAddress;
import org.spongycastle.pqc.crypto.xmss.XMSSPrivateKeyParameters;
import org.spongycastle.pqc.crypto.xmss.XMSSPublicKeyParameters;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/xmss/XMSSKeyPairGenerator.class */
public final class XMSSKeyPairGenerator {
    private XMSSParameters params;
    private SecureRandom prng;

    private XMSSPrivateKeyParameters generatePrivateKey(XMSSParameters xMSSParameters, SecureRandom secureRandom) {
        int digestSize = xMSSParameters.getDigestSize();
        byte[] bArr = new byte[digestSize];
        secureRandom.nextBytes(bArr);
        byte[] bArr2 = new byte[digestSize];
        secureRandom.nextBytes(bArr2);
        byte[] bArr3 = new byte[digestSize];
        secureRandom.nextBytes(bArr3);
        return new XMSSPrivateKeyParameters.Builder(xMSSParameters).withSecretKeySeed(bArr).withSecretKeyPRF(bArr2).withPublicSeed(bArr3).withBDSState(new BDS(xMSSParameters, bArr3, bArr, (OTSHashAddress) new OTSHashAddress.Builder().build())).build();
    }

    public AsymmetricCipherKeyPair generateKeyPair() {
        XMSSPrivateKeyParameters generatePrivateKey = generatePrivateKey(this.params, this.prng);
        XMSSNode root = generatePrivateKey.getBDSState().getRoot();
        XMSSPrivateKeyParameters build = new XMSSPrivateKeyParameters.Builder(this.params).withSecretKeySeed(generatePrivateKey.getSecretKeySeed()).withSecretKeyPRF(generatePrivateKey.getSecretKeyPRF()).withPublicSeed(generatePrivateKey.getPublicSeed()).withRoot(root.getValue()).withBDSState(generatePrivateKey.getBDSState()).build();
        return new AsymmetricCipherKeyPair((AsymmetricKeyParameter) new XMSSPublicKeyParameters.Builder(this.params).withRoot(root.getValue()).withPublicSeed(build.getPublicSeed()).build(), (AsymmetricKeyParameter) build);
    }

    public void init(KeyGenerationParameters keyGenerationParameters) {
        XMSSKeyGenerationParameters xMSSKeyGenerationParameters = (XMSSKeyGenerationParameters) keyGenerationParameters;
        this.prng = xMSSKeyGenerationParameters.getRandom();
        this.params = xMSSKeyGenerationParameters.getParameters();
    }
}
