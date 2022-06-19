package org.bouncycastle.crypto.tls;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.digests.MD5Digest;
import org.bouncycastle.crypto.digests.SHA1Digest;
import org.bouncycastle.crypto.digests.SHA256Digest;
import org.bouncycastle.crypto.digests.SHA384Digest;
import org.bouncycastle.crypto.engines.AESFastEngine;
import org.bouncycastle.crypto.engines.DESedeEngine;
import org.bouncycastle.crypto.modes.CBCBlockCipher;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/tls/DefaultTlsCipherFactory.class */
public class DefaultTlsCipherFactory implements TlsCipherFactory {
    public BlockCipher createAESBlockCipher() {
        return new CBCBlockCipher(new AESFastEngine());
    }

    public TlsCipher createAESCipher(TlsClientContext tlsClientContext, int i, int i2) {
        return new TlsBlockCipher(tlsClientContext, createAESBlockCipher(), createAESBlockCipher(), createDigest(i2), createDigest(i2), i);
    }

    @Override // org.bouncycastle.crypto.tls.TlsCipherFactory
    public TlsCipher createCipher(TlsClientContext tlsClientContext, int i, int i2) {
        if (i != 7) {
            if (i == 8) {
                return createAESCipher(tlsClientContext, 16, i2);
            }
            if (i != 9) {
                throw new TlsFatalAlert((short) 80);
            }
            return createAESCipher(tlsClientContext, 32, i2);
        }
        return createDESedeCipher(tlsClientContext, 24, i2);
    }

    public BlockCipher createDESedeBlockCipher() {
        return new CBCBlockCipher(new DESedeEngine());
    }

    public TlsCipher createDESedeCipher(TlsClientContext tlsClientContext, int i, int i2) {
        return new TlsBlockCipher(tlsClientContext, createDESedeBlockCipher(), createDESedeBlockCipher(), createDigest(i2), createDigest(i2), i);
    }

    public Digest createDigest(int i) {
        if (i != 1) {
            if (i == 2) {
                return new SHA1Digest();
            }
            if (i == 3) {
                return new SHA256Digest();
            }
            if (i != 4) {
                throw new TlsFatalAlert((short) 80);
            }
            return new SHA384Digest();
        }
        return new MD5Digest();
    }
}
