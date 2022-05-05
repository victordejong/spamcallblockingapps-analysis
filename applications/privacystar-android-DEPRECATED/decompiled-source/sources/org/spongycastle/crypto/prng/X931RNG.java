package org.spongycastle.crypto.prng;

import org.spongycastle.crypto.BlockCipher;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/prng/X931RNG.class */
public class X931RNG {
    private static final int BLOCK128_MAX_BITS_REQUEST = 262144;
    private static final long BLOCK128_RESEED_MAX = 8388608;
    private static final int BLOCK64_MAX_BITS_REQUEST = 4096;
    private static final long BLOCK64_RESEED_MAX = 32768;

    /* renamed from: DT */
    private final byte[] f1448DT;

    /* renamed from: I */
    private final byte[] f1449I;

    /* renamed from: R */
    private final byte[] f1450R;

    /* renamed from: V */
    private byte[] f1451V;
    private final BlockCipher engine;
    private final EntropySource entropySource;
    private long reseedCounter = 1;

    public X931RNG(BlockCipher blockCipher, byte[] bArr, EntropySource entropySource) {
        this.engine = blockCipher;
        this.entropySource = entropySource;
        this.f1448DT = new byte[blockCipher.getBlockSize()];
        System.arraycopy(bArr, 0, this.f1448DT, 0, this.f1448DT.length);
        this.f1449I = new byte[blockCipher.getBlockSize()];
        this.f1450R = new byte[blockCipher.getBlockSize()];
    }

    private void increment(byte[] bArr) {
        for (int length = bArr.length - 1; length >= 0; length--) {
            byte b = (byte) (bArr[length] + 1);
            bArr[length] = b;
            if (b != 0) {
                return;
            }
        }
    }

    private static boolean isTooLarge(byte[] bArr, int i) {
        return bArr != null && bArr.length > i;
    }

    private void process(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        for (int i = 0; i != bArr.length; i++) {
            bArr[i] = (byte) (bArr2[i] ^ bArr3[i]);
        }
        this.engine.processBlock(bArr, 0, bArr, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int generate(byte[] bArr, boolean z) {
        if (this.f1450R.length == 8) {
            if (this.reseedCounter > 32768) {
                return -1;
            }
            if (isTooLarge(bArr, 512)) {
                throw new IllegalArgumentException("Number of bits per request limited to 4096");
            }
        } else if (this.reseedCounter > BLOCK128_RESEED_MAX) {
            return -1;
        } else {
            if (isTooLarge(bArr, 32768)) {
                throw new IllegalArgumentException("Number of bits per request limited to 262144");
            }
        }
        if (z || this.f1451V == null) {
            this.f1451V = this.entropySource.getEntropy();
            if (this.f1451V.length != this.engine.getBlockSize()) {
                throw new IllegalStateException("Insufficient entropy returned");
            }
        }
        int length = bArr.length / this.f1450R.length;
        for (int i = 0; i < length; i++) {
            this.engine.processBlock(this.f1448DT, 0, this.f1449I, 0);
            process(this.f1450R, this.f1449I, this.f1451V);
            process(this.f1451V, this.f1450R, this.f1449I);
            System.arraycopy(this.f1450R, 0, bArr, this.f1450R.length * i, this.f1450R.length);
            increment(this.f1448DT);
        }
        int length2 = bArr.length - (this.f1450R.length * length);
        if (length2 > 0) {
            this.engine.processBlock(this.f1448DT, 0, this.f1449I, 0);
            process(this.f1450R, this.f1449I, this.f1451V);
            process(this.f1451V, this.f1450R, this.f1449I);
            System.arraycopy(this.f1450R, 0, bArr, length * this.f1450R.length, length2);
            increment(this.f1448DT);
        }
        this.reseedCounter++;
        return bArr.length;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public EntropySource getEntropySource() {
        return this.entropySource;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void reseed() {
        this.f1451V = this.entropySource.getEntropy();
        if (this.f1451V.length != this.engine.getBlockSize()) {
            throw new IllegalStateException("Insufficient entropy returned");
        }
        this.reseedCounter = 1L;
    }
}
