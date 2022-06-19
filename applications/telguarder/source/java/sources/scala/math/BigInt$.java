package scala.math;

import java.math.BigInteger;
import scala.Serializable;
import scala.util.Random;
/* loaded from: classes3-dex2jar.jar:scala/math/BigInt$.class */
public final class BigInt$ implements Serializable {
    public static final BigInt$ MODULE$ = null;
    private final int minCached = -1024;
    private final int maxCached = 1024;
    private final BigInt[] cache = new BigInt[(maxCached() - minCached()) + 1];
    private final BigInteger scala$math$BigInt$$minusOne = BigInteger.valueOf(-1);

    static {
        new BigInt$();
    }

    private BigInt$() {
        MODULE$ = this;
    }

    private BigInt[] cache() {
        return this.cache;
    }

    private int maxCached() {
        return this.maxCached;
    }

    private int minCached() {
        return this.minCached;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public BigInt apply(int i) {
        BigInt bigInt;
        if (minCached() > i || i > maxCached()) {
            bigInt = new BigInt(BigInteger.valueOf(i));
        } else {
            int minCached = i - minCached();
            BigInt bigInt2 = cache()[minCached];
            bigInt = bigInt2;
            if (bigInt2 == null) {
                bigInt = new BigInt(BigInteger.valueOf(i));
                cache()[minCached] = bigInt;
            }
        }
        return bigInt;
    }

    public BigInt apply(int i, int i2, Random random) {
        return new BigInt(new BigInteger(i, i2, random.self()));
    }

    public BigInt apply(int i, Random random) {
        return new BigInt(new BigInteger(i, random.self()));
    }

    public BigInt apply(int i, byte[] bArr) {
        return new BigInt(new BigInteger(i, bArr));
    }

    public BigInt apply(long j) {
        return (((long) minCached()) > j || j > ((long) maxCached())) ? new BigInt(BigInteger.valueOf(j)) : apply((int) j);
    }

    public BigInt apply(String str) {
        return new BigInt(new BigInteger(str));
    }

    public BigInt apply(String str, int i) {
        return new BigInt(new BigInteger(str, i));
    }

    public BigInt apply(BigInteger bigInteger) {
        return new BigInt(bigInteger);
    }

    public BigInt apply(byte[] bArr) {
        return new BigInt(new BigInteger(bArr));
    }

    public BigInt int2bigInt(int i) {
        return apply(i);
    }

    public BigInt javaBigInteger2bigInt(BigInteger bigInteger) {
        return apply(bigInteger);
    }

    public BigInt long2bigInt(long j) {
        return apply(j);
    }

    public BigInt probablePrime(int i, Random random) {
        return new BigInt(BigInteger.probablePrime(i, random.self()));
    }

    public BigInteger scala$math$BigInt$$minusOne() {
        return this.scala$math$BigInt$$minusOne;
    }
}
