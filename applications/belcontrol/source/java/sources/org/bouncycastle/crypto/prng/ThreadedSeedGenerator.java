package org.bouncycastle.crypto.prng;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/prng/ThreadedSeedGenerator.class */
public class ThreadedSeedGenerator {

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator.class */
    public class SeedGenerator implements Runnable {
        private volatile int counter;
        private volatile boolean stop;

        private SeedGenerator() {
            ThreadedSeedGenerator.this = r4;
            this.counter = 0;
            this.stop = false;
        }

        public byte[] generateSeed(int i, boolean z) {
            int i2;
            Thread thread = new Thread(this);
            byte[] bArr = new byte[i];
            this.counter = 0;
            this.stop = false;
            thread.start();
            if (!z) {
                i *= 8;
            }
            int i3 = 0;
            for (int i4 = 0; i4 < i; i4++) {
                while (this.counter == i3) {
                    try {
                        Thread.sleep(1L);
                    } catch (InterruptedException e) {
                    }
                }
                i3 = this.counter;
                if (z) {
                    bArr[i4] = (byte) (i3 & 255);
                } else {
                    bArr[i4 / 8] = (byte) ((bArr[i2] << 1) | (i3 & 1));
                }
            }
            this.stop = true;
            return bArr;
        }

        @Override // java.lang.Runnable
        public void run() {
            while (!this.stop) {
                this.counter++;
            }
        }
    }

    public byte[] generateSeed(int i, boolean z) {
        return new SeedGenerator().generateSeed(i, z);
    }
}
