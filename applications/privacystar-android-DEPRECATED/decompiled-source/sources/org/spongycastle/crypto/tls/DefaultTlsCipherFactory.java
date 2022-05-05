package org.spongycastle.crypto.tls;

import java.io.IOException;
import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.StreamCipher;
import org.spongycastle.crypto.engines.AESEngine;
import org.spongycastle.crypto.engines.CamelliaEngine;
import org.spongycastle.crypto.engines.DESedeEngine;
import org.spongycastle.crypto.engines.RC4Engine;
import org.spongycastle.crypto.engines.SEEDEngine;
import org.spongycastle.crypto.modes.AEADBlockCipher;
import org.spongycastle.crypto.modes.CBCBlockCipher;
import org.spongycastle.crypto.modes.CCMBlockCipher;
import org.spongycastle.crypto.modes.GCMBlockCipher;
import org.spongycastle.crypto.modes.OCBBlockCipher;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/DefaultTlsCipherFactory.class */
public class DefaultTlsCipherFactory extends AbstractTlsCipherFactory {
    protected AEADBlockCipher createAEADBlockCipher_AES_CCM() {
        return new CCMBlockCipher(createAESEngine());
    }

    protected AEADBlockCipher createAEADBlockCipher_AES_GCM() {
        return new GCMBlockCipher(createAESEngine());
    }

    protected AEADBlockCipher createAEADBlockCipher_AES_OCB() {
        return new OCBBlockCipher(createAESEngine(), createAESEngine());
    }

    protected AEADBlockCipher createAEADBlockCipher_Camellia_GCM() {
        return new GCMBlockCipher(createCamelliaEngine());
    }

    protected BlockCipher createAESBlockCipher() {
        return new CBCBlockCipher(createAESEngine());
    }

    protected TlsBlockCipher createAESCipher(TlsContext tlsContext, int i, int i2) throws IOException {
        return new TlsBlockCipher(tlsContext, createAESBlockCipher(), createAESBlockCipher(), createHMACDigest(i2), createHMACDigest(i2), i);
    }

    protected BlockCipher createAESEngine() {
        return new AESEngine();
    }

    protected BlockCipher createCamelliaBlockCipher() {
        return new CBCBlockCipher(createCamelliaEngine());
    }

    protected TlsBlockCipher createCamelliaCipher(TlsContext tlsContext, int i, int i2) throws IOException {
        return new TlsBlockCipher(tlsContext, createCamelliaBlockCipher(), createCamelliaBlockCipher(), createHMACDigest(i2), createHMACDigest(i2), i);
    }

    protected BlockCipher createCamelliaEngine() {
        return new CamelliaEngine();
    }

    protected TlsCipher createChaCha20Poly1305(TlsContext tlsContext) throws IOException {
        return new Chacha20Poly1305(tlsContext);
    }

    @Override // org.spongycastle.crypto.tls.AbstractTlsCipherFactory, org.spongycastle.crypto.tls.TlsCipherFactory
    public TlsCipher createCipher(TlsContext tlsContext, int i, int i2) throws IOException {
        if (i == 0) {
            return createNullCipher(tlsContext, i2);
        }
        if (i == 2) {
            return createRC4Cipher(tlsContext, 16, i2);
        }
        switch (i) {
            case 7:
                return createDESedeCipher(tlsContext, i2);
            case 8:
                return createAESCipher(tlsContext, 16, i2);
            case 9:
                return createAESCipher(tlsContext, 32, i2);
            case 10:
                return createCipher_AES_GCM(tlsContext, 16, 16);
            case 11:
                return createCipher_AES_GCM(tlsContext, 32, 16);
            case 12:
                return createCamelliaCipher(tlsContext, 16, i2);
            case 13:
                return createCamelliaCipher(tlsContext, 32, i2);
            case 14:
                return createSEEDCipher(tlsContext, i2);
            case 15:
                return createCipher_AES_CCM(tlsContext, 16, 16);
            case 16:
                return createCipher_AES_CCM(tlsContext, 16, 8);
            case 17:
                return createCipher_AES_CCM(tlsContext, 32, 16);
            case 18:
                return createCipher_AES_CCM(tlsContext, 32, 8);
            case 19:
                return createCipher_Camellia_GCM(tlsContext, 16, 16);
            case 20:
                return createCipher_Camellia_GCM(tlsContext, 32, 16);
            case 21:
                return createChaCha20Poly1305(tlsContext);
            default:
                switch (i) {
                    case 103:
                        return createCipher_AES_OCB(tlsContext, 16, 12);
                    case 104:
                        return createCipher_AES_OCB(tlsContext, 32, 12);
                    default:
                        throw new TlsFatalAlert((short) 80);
                }
        }
    }

    protected TlsAEADCipher createCipher_AES_CCM(TlsContext tlsContext, int i, int i2) throws IOException {
        return new TlsAEADCipher(tlsContext, createAEADBlockCipher_AES_CCM(), createAEADBlockCipher_AES_CCM(), i, i2);
    }

    protected TlsAEADCipher createCipher_AES_GCM(TlsContext tlsContext, int i, int i2) throws IOException {
        return new TlsAEADCipher(tlsContext, createAEADBlockCipher_AES_GCM(), createAEADBlockCipher_AES_GCM(), i, i2);
    }

    protected TlsAEADCipher createCipher_AES_OCB(TlsContext tlsContext, int i, int i2) throws IOException {
        return new TlsAEADCipher(tlsContext, createAEADBlockCipher_AES_OCB(), createAEADBlockCipher_AES_OCB(), i, i2, 2);
    }

    protected TlsAEADCipher createCipher_Camellia_GCM(TlsContext tlsContext, int i, int i2) throws IOException {
        return new TlsAEADCipher(tlsContext, createAEADBlockCipher_Camellia_GCM(), createAEADBlockCipher_Camellia_GCM(), i, i2);
    }

    protected BlockCipher createDESedeBlockCipher() {
        return new CBCBlockCipher(new DESedeEngine());
    }

    protected TlsBlockCipher createDESedeCipher(TlsContext tlsContext, int i) throws IOException {
        return new TlsBlockCipher(tlsContext, createDESedeBlockCipher(), createDESedeBlockCipher(), createHMACDigest(i), createHMACDigest(i), 24);
    }

    protected Digest createHMACDigest(int i) throws IOException {
        switch (i) {
            case 0:
                return null;
            case 1:
                return TlsUtils.createHash((short) 1);
            case 2:
                return TlsUtils.createHash((short) 2);
            case 3:
                return TlsUtils.createHash((short) 4);
            case 4:
                return TlsUtils.createHash((short) 5);
            case 5:
                return TlsUtils.createHash((short) 6);
            default:
                throw new TlsFatalAlert((short) 80);
        }
    }

    protected TlsNullCipher createNullCipher(TlsContext tlsContext, int i) throws IOException {
        return new TlsNullCipher(tlsContext, createHMACDigest(i), createHMACDigest(i));
    }

    protected TlsStreamCipher createRC4Cipher(TlsContext tlsContext, int i, int i2) throws IOException {
        return new TlsStreamCipher(tlsContext, createRC4StreamCipher(), createRC4StreamCipher(), createHMACDigest(i2), createHMACDigest(i2), i, false);
    }

    protected StreamCipher createRC4StreamCipher() {
        return new RC4Engine();
    }

    protected BlockCipher createSEEDBlockCipher() {
        return new CBCBlockCipher(new SEEDEngine());
    }

    protected TlsBlockCipher createSEEDCipher(TlsContext tlsContext, int i) throws IOException {
        return new TlsBlockCipher(tlsContext, createSEEDBlockCipher(), createSEEDBlockCipher(), createHMACDigest(i), createHMACDigest(i), 16);
    }
}
