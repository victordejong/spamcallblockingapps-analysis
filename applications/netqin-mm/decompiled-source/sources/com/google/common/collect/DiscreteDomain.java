package com.google.common.collect;

import com.google.common.primitives.Ints;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.io.Serializable;
import java.lang.Comparable;
import java.math.BigInteger;
import java.util.NoSuchElementException;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.C5006n;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/DiscreteDomain.class */
public abstract class DiscreteDomain<C extends Comparable> {
    public final boolean supportsFastOffset;

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/DiscreteDomain$BigIntegerDomain.class */
    public static final class BigIntegerDomain extends DiscreteDomain<BigInteger> implements Serializable {
        public static final long serialVersionUID = 0;
        public static final BigIntegerDomain INSTANCE = new BigIntegerDomain();
        public static final BigInteger MIN_LONG = BigInteger.valueOf(Long.MIN_VALUE);
        public static final BigInteger MAX_LONG = BigInteger.valueOf(Long.MAX_VALUE);

        public BigIntegerDomain() {
            super(true);
        }

        private Object readResolve() {
            return INSTANCE;
        }

        public long distance(BigInteger bigInteger, BigInteger bigInteger2) {
            return bigInteger2.subtract(bigInteger).max(MIN_LONG).min(MAX_LONG).longValue();
        }

        public BigInteger next(BigInteger bigInteger) {
            return bigInteger.add(BigInteger.ONE);
        }

        public BigInteger offset(BigInteger bigInteger, long j) {
            C5006n.m24662a(j, "distance");
            return bigInteger.add(BigInteger.valueOf(j));
        }

        public BigInteger previous(BigInteger bigInteger) {
            return bigInteger.subtract(BigInteger.ONE);
        }

        public String toString() {
            return "DiscreteDomain.bigIntegers()";
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/DiscreteDomain$IntegerDomain.class */
    public static final class IntegerDomain extends DiscreteDomain<Integer> implements Serializable {
        public static final IntegerDomain INSTANCE = new IntegerDomain();
        public static final long serialVersionUID = 0;

        public IntegerDomain() {
            super(true);
        }

        private Object readResolve() {
            return INSTANCE;
        }

        public long distance(Integer num, Integer num2) {
            return num2.intValue() - num.intValue();
        }

        @Override // com.google.common.collect.DiscreteDomain
        public Integer maxValue() {
            return Integer.valueOf((int) MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT);
        }

        @Override // com.google.common.collect.DiscreteDomain
        public Integer minValue() {
            return Integer.MIN_VALUE;
        }

        public Integer next(Integer num) {
            int intValue = num.intValue();
            return intValue == Integer.MAX_VALUE ? null : Integer.valueOf(intValue + 1);
        }

        public Integer offset(Integer num, long j) {
            C5006n.m24662a(j, "distance");
            return Integer.valueOf(Ints.m7812a(num.longValue() + j));
        }

        public Integer previous(Integer num) {
            int intValue = num.intValue();
            return intValue == Integer.MIN_VALUE ? null : Integer.valueOf(intValue - 1);
        }

        public String toString() {
            return "DiscreteDomain.integers()";
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/DiscreteDomain$LongDomain.class */
    public static final class LongDomain extends DiscreteDomain<Long> implements Serializable {
        public static final LongDomain INSTANCE = new LongDomain();
        public static final long serialVersionUID = 0;

        public LongDomain() {
            super(true);
        }

        private Object readResolve() {
            return INSTANCE;
        }

        public long distance(Long l, Long l2) {
            long longValue = l2.longValue() - l.longValue();
            if (l2.longValue() > l.longValue() && longValue < 0) {
                return Long.MAX_VALUE;
            }
            if (l2.longValue() >= l.longValue() || longValue <= 0) {
                return longValue;
            }
            return Long.MIN_VALUE;
        }

        @Override // com.google.common.collect.DiscreteDomain
        public Long maxValue() {
            return Long.MAX_VALUE;
        }

        @Override // com.google.common.collect.DiscreteDomain
        public Long minValue() {
            return Long.MIN_VALUE;
        }

        public Long next(Long l) {
            long longValue = l.longValue();
            return longValue == Long.MAX_VALUE ? null : Long.valueOf(longValue + 1);
        }

        public Long offset(Long l, long j) {
            C5006n.m24662a(j, "distance");
            long longValue = l.longValue() + j;
            if (longValue < 0) {
                C4933n.m24790a(l.longValue() < 0, "overflow");
            }
            return Long.valueOf(longValue);
        }

        public Long previous(Long l) {
            long longValue = l.longValue();
            return longValue == Long.MIN_VALUE ? null : Long.valueOf(longValue - 1);
        }

        public String toString() {
            return "DiscreteDomain.longs()";
        }
    }

    public DiscreteDomain() {
        this(false);
    }

    public DiscreteDomain(boolean z) {
        this.supportsFastOffset = z;
    }

    public static DiscreteDomain<BigInteger> bigIntegers() {
        return BigIntegerDomain.INSTANCE;
    }

    public static DiscreteDomain<Integer> integers() {
        return IntegerDomain.INSTANCE;
    }

    public static DiscreteDomain<Long> longs() {
        return LongDomain.INSTANCE;
    }

    public abstract long distance(C c, C c2);

    public C maxValue() {
        throw new NoSuchElementException();
    }

    public C minValue() {
        throw new NoSuchElementException();
    }

    public abstract C next(C c);

    public abstract C offset(C c, long j);

    public abstract C previous(C c);
}
