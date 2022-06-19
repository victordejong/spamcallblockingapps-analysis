package org.bouncycastle.crypto.prng;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/prng/ReversedWindowGenerator.class */
public class ReversedWindowGenerator implements RandomGenerator {
    private final RandomGenerator generator;
    private byte[] window;
    private int windowCount;

    public ReversedWindowGenerator(RandomGenerator randomGenerator, int i) {
        if (randomGenerator != null) {
            if (i < 2) {
                throw new IllegalArgumentException("windowSize must be at least 2");
            }
            this.generator = randomGenerator;
            this.window = new byte[i];
            return;
        }
        throw new IllegalArgumentException("generator cannot be null");
    }

    private void doNextBytes(byte[] bArr, int i, int i2) {
        int i3;
        synchronized (this) {
            for (int i4 = 0; i4 < i2; i4++) {
                if (this.windowCount < 1) {
                    RandomGenerator randomGenerator = this.generator;
                    byte[] bArr2 = this.window;
                    randomGenerator.nextBytes(bArr2, 0, bArr2.length);
                    this.windowCount = this.window.length;
                }
                byte[] bArr3 = this.window;
                this.windowCount = this.windowCount - 1;
                bArr[i4 + i] = bArr3[i3];
            }
        }
    }

    @Override // org.bouncycastle.crypto.prng.RandomGenerator
    public void addSeedMaterial(long j) {
        synchronized (this) {
            this.windowCount = 0;
            this.generator.addSeedMaterial(j);
        }
    }

    @Override // org.bouncycastle.crypto.prng.RandomGenerator
    public void addSeedMaterial(byte[] bArr) {
        synchronized (this) {
            this.windowCount = 0;
            this.generator.addSeedMaterial(bArr);
        }
    }

    @Override // org.bouncycastle.crypto.prng.RandomGenerator
    public void nextBytes(byte[] bArr) {
        doNextBytes(bArr, 0, bArr.length);
    }

    @Override // org.bouncycastle.crypto.prng.RandomGenerator
    public void nextBytes(byte[] bArr, int i, int i2) {
        doNextBytes(bArr, i, i2);
    }
}
