package scala.concurrent.forkjoin;

import java.util.Random;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/forkjoin/ThreadLocalRandom.class */
public class ThreadLocalRandom extends Random {
    private static final long addend = 11;
    private static final ThreadLocal<ThreadLocalRandom> localRandom = new ThreadLocal<ThreadLocalRandom>() { // from class: scala.concurrent.forkjoin.ThreadLocalRandom.1
        @Override // java.lang.ThreadLocal
        public ThreadLocalRandom initialValue() {
            return new ThreadLocalRandom();
        }
    };
    private static final long mask = 281474976710655L;
    private static final long multiplier = 25214903917L;
    private static final long serialVersionUID = -5851777807851030925L;
    boolean initialized = true;
    private long pad0;
    private long pad1;
    private long pad2;
    private long pad3;
    private long pad4;
    private long pad5;
    private long pad6;
    private long pad7;
    private long rnd;

    ThreadLocalRandom() {
    }

    public static ThreadLocalRandom current() {
        return localRandom.get();
    }

    @Override // java.util.Random
    protected int next(int i) {
        long j = ((this.rnd * multiplier) + addend) & mask;
        this.rnd = j;
        return (int) (j >>> (48 - i));
    }

    public double nextDouble(double d) {
        if (d > 0.0d) {
            return nextDouble() * d;
        }
        throw new IllegalArgumentException("n must be positive");
    }

    public double nextDouble(double d, double d2) {
        if (d < d2) {
            return (nextDouble() * (d2 - d)) + d;
        }
        throw new IllegalArgumentException();
    }

    public int nextInt(int i, int i2) {
        if (i < i2) {
            return nextInt(i2 - i) + i;
        }
        throw new IllegalArgumentException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v5 */
    public long nextLong(long j) {
        char c = 0;
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        char c2 = j;
        if (i > 0) {
            while (true) {
                char c3 = c2;
                if (c3 < 2147483647L) {
                    return c + nextInt(c3);
                }
                int next = next(2);
                char c4 = c3 >>> 1;
                char c5 = c4;
                if ((next & 2) != 0) {
                    c5 = c3 - c4;
                }
                char c6 = c;
                if ((next & 1) == 0) {
                    c6 = c + (c3 - c5);
                }
                c = c6;
                c2 = c5;
            }
        } else {
            throw new IllegalArgumentException("n must be positive");
        }
    }

    public long nextLong(long j, long j2) {
        if (j < j2) {
            return nextLong(j2 - j) + j;
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.Random
    public void setSeed(long j) {
        if (!this.initialized) {
            this.rnd = (j ^ multiplier) & mask;
            return;
        }
        throw new UnsupportedOperationException();
    }
}
