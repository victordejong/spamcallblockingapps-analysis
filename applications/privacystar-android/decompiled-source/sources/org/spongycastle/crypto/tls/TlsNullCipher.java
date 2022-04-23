package org.spongycastle.crypto.tls;

import java.io.IOException;
import org.spongycastle.crypto.Digest;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/TlsNullCipher.class */
public class TlsNullCipher implements TlsCipher {
    protected TlsContext context;
    protected TlsMac readMac;
    protected TlsMac writeMac;

    public TlsNullCipher(TlsContext tlsContext) {
        this.context = tlsContext;
        this.writeMac = null;
        this.readMac = null;
    }

    public TlsNullCipher(TlsContext tlsContext, Digest digest, Digest digest2) throws IOException {
        TlsMac tlsMac;
        if ((digest == null) != (digest2 != null ? false : true)) {
            throw new TlsFatalAlert((short) 80);
        }
        this.context = tlsContext;
        TlsMac tlsMac2 = null;
        if (digest != null) {
            int digestSize = digest.getDigestSize() + digest2.getDigestSize();
            byte[] calculateKeyBlock = TlsUtils.calculateKeyBlock(tlsContext, digestSize);
            tlsMac = new TlsMac(tlsContext, digest, calculateKeyBlock, 0, digest.getDigestSize());
            int digestSize2 = digest.getDigestSize() + 0;
            tlsMac2 = new TlsMac(tlsContext, digest2, calculateKeyBlock, digestSize2, digest2.getDigestSize());
            if (digestSize2 + digest2.getDigestSize() != digestSize) {
                throw new TlsFatalAlert((short) 80);
            }
        } else {
            tlsMac = null;
        }
        if (tlsContext.isServer()) {
            this.writeMac = tlsMac2;
            this.readMac = tlsMac;
            return;
        }
        this.writeMac = tlsMac;
        this.readMac = tlsMac2;
    }

    @Override // org.spongycastle.crypto.tls.TlsCipher
    public byte[] decodeCiphertext(long j, short s, byte[] bArr, int i, int i2) throws IOException {
        if (this.readMac == null) {
            return Arrays.copyOfRange(bArr, i, i2 + i);
        }
        int size = this.readMac.getSize();
        if (i2 < size) {
            throw new TlsFatalAlert((short) 50);
        }
        int i3 = i2 - size;
        int i4 = i + i3;
        if (Arrays.constantTimeAreEqual(Arrays.copyOfRange(bArr, i4, i2 + i), this.readMac.calculateMac(j, s, bArr, i, i3))) {
            return Arrays.copyOfRange(bArr, i, i4);
        }
        throw new TlsFatalAlert((short) 20);
    }

    @Override // org.spongycastle.crypto.tls.TlsCipher
    public byte[] encodePlaintext(long j, short s, byte[] bArr, int i, int i2) throws IOException {
        if (this.writeMac == null) {
            return Arrays.copyOfRange(bArr, i, i2 + i);
        }
        byte[] calculateMac = this.writeMac.calculateMac(j, s, bArr, i, i2);
        byte[] bArr2 = new byte[calculateMac.length + i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        System.arraycopy(calculateMac, 0, bArr2, i2, calculateMac.length);
        return bArr2;
    }

    @Override // org.spongycastle.crypto.tls.TlsCipher
    public int getPlaintextLimit(int i) {
        int i2 = i;
        if (this.writeMac != null) {
            i2 = i - this.writeMac.getSize();
        }
        return i2;
    }
}
