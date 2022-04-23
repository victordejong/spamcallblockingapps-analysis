package com.google.common.hash;

import com.google.common.hash.BloomFilterStrategies;
import com.google.common.primitives.SignedBytes;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.math.RoundingMode;
import p131c.p161d.p266c.p267a.AbstractC4934o;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p272f.C5055a;
import p131c.p161d.p266c.p273g.C5069b;
/* loaded from: classes2-dex2jar.jar:com/google/common/hash/BloomFilter.class */
public final class BloomFilter<T> implements AbstractC4934o<T>, Serializable {
    public final BloomFilterStrategies.C7680a bits;
    public final Funnel<? super T> funnel;
    public final int numHashFunctions;
    public final Strategy strategy;

    /* loaded from: classes2-dex2jar.jar:com/google/common/hash/BloomFilter$SerialForm.class */
    public static class SerialForm<T> implements Serializable {
        public static final long serialVersionUID = 1;
        public final long[] data;
        public final Funnel<? super T> funnel;
        public final int numHashFunctions;
        public final Strategy strategy;

        public SerialForm(BloomFilter<T> bloomFilter) {
            this.data = BloomFilterStrategies.C7680a.m7949a(bloomFilter.bits.f30827a);
            this.numHashFunctions = bloomFilter.numHashFunctions;
            this.funnel = bloomFilter.funnel;
            this.strategy = bloomFilter.strategy;
        }

        public Object readResolve() {
            return new BloomFilter(new BloomFilterStrategies.C7680a(this.data), this.numHashFunctions, this.funnel, this.strategy);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/hash/BloomFilter$Strategy.class */
    public interface Strategy extends Serializable {
        <T> boolean mightContain(T t, Funnel<? super T> funnel, int i, BloomFilterStrategies.C7680a aVar);

        int ordinal();

        <T> boolean put(T t, Funnel<? super T> funnel, int i, BloomFilterStrategies.C7680a aVar);
    }

    public BloomFilter(BloomFilterStrategies.C7680a aVar, int i, Funnel<? super T> funnel, Strategy strategy) {
        boolean z = true;
        C4933n.m24787a(i > 0, "numHashFunctions (%s) must be > 0", i);
        if (i > 255) {
            z = false;
        }
        C4933n.m24787a(z, "numHashFunctions (%s) must be <= 255", i);
        C4933n.m24795a(aVar);
        this.bits = aVar;
        this.numHashFunctions = i;
        C4933n.m24795a(funnel);
        this.funnel = funnel;
        C4933n.m24795a(strategy);
        this.strategy = strategy;
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, int i) {
        return create(funnel, i);
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, int i, double d) {
        return create(funnel, i, d);
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, long j) {
        return create(funnel, j, 0.03d);
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, long j, double d) {
        return create(funnel, j, d, BloomFilterStrategies.MURMUR128_MITZ_64);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v2 */
    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, long j, double d, Strategy strategy) {
        C4933n.m24795a(funnel);
        boolean z = true;
        C4933n.m24785a(j >= 0, "Expected insertions (%s) must be >= 0", j);
        C4933n.m24782a(d > 0.0d, "False positive probability (%s) must be > 0.0", Double.valueOf(d));
        if (d >= 1.0d) {
            z = false;
        }
        C4933n.m24782a(z, "False positive probability (%s) must be < 1.0", Double.valueOf(d));
        C4933n.m24795a(strategy);
        long j2 = j;
        if (j == 0) {
            j2 = 1;
        }
        long optimalNumOfBits = optimalNumOfBits(j2, d);
        try {
            return new BloomFilter<>(new BloomFilterStrategies.C7680a(optimalNumOfBits), optimalNumOfHashFunctions(j2, optimalNumOfBits), funnel, strategy);
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException("Could not create BloomFilter of " + optimalNumOfBits + " bits", e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v3 */
    public static long optimalNumOfBits(long j, double d) {
        double d2 = d;
        if (d == 0.0d) {
            d2 = 1;
        }
        double d3 = -j;
        double log = Math.log(d2);
        Double.isNaN(d3);
        return (long) ((d3 * log) / (Math.log(2.0d) * Math.log(2.0d)));
    }

    public static int optimalNumOfHashFunctions(long j, long j2) {
        double d = j2;
        double d2 = j;
        Double.isNaN(d);
        Double.isNaN(d2);
        return Math.max(1, (int) Math.round((d / d2) * Math.log(2.0d)));
    }

    public static <T> BloomFilter<T> readFrom(InputStream inputStream, Funnel<? super T> funnel) throws IOException {
        int i;
        int i2;
        RuntimeException e;
        DataInputStream dataInputStream;
        int readInt;
        C4933n.m24794a(inputStream, "InputStream");
        C4933n.m24794a(funnel, "Funnel");
        byte b = -1;
        try {
            dataInputStream = new DataInputStream(inputStream);
            b = dataInputStream.readByte();
            try {
                i2 = C5069b.m24560a(dataInputStream.readByte());
            } catch (RuntimeException e2) {
                e = e2;
                i2 = -1;
            }
        } catch (RuntimeException e3) {
            e = e3;
            i = -1;
            i2 = -1;
        }
        try {
            readInt = dataInputStream.readInt();
        } catch (RuntimeException e4) {
            e = e4;
            i = -1;
            throw new IOException("Unable to deserialize BloomFilter from InputStream. strategyOrdinal: " + ((int) b) + " numHashFunctions: " + i2 + " dataLength: " + i, e);
        }
        try {
            BloomFilterStrategies bloomFilterStrategies = BloomFilterStrategies.values()[b];
            long[] jArr = new long[readInt];
            for (int i3 = 0; i3 < readInt; i3++) {
                jArr[i3] = dataInputStream.readLong();
            }
            return new BloomFilter<>(new BloomFilterStrategies.C7680a(jArr), i2, funnel, bloomFilterStrategies);
        } catch (RuntimeException e5) {
            e = e5;
            i = readInt;
            throw new IOException("Unable to deserialize BloomFilter from InputStream. strategyOrdinal: " + ((int) b) + " numHashFunctions: " + i2 + " dataLength: " + i, e);
        }
    }

    private Object writeReplace() {
        return new SerialForm(this);
    }

    @Override // p131c.p161d.p266c.p267a.AbstractC4934o
    @Deprecated
    public boolean apply(T t) {
        return mightContain(t);
    }

    public long approximateElementCount() {
        long b = this.bits.m7948b();
        double a = this.bits.m7952a();
        double d = b;
        Double.isNaN(a);
        Double.isNaN(d);
        double d2 = -Math.log1p(-(a / d));
        Double.isNaN(d);
        double d3 = this.numHashFunctions;
        Double.isNaN(d3);
        return C5055a.m24593b((d2 * d) / d3, RoundingMode.HALF_UP);
    }

    public long bitSize() {
        return this.bits.m7948b();
    }

    public BloomFilter<T> copy() {
        return new BloomFilter<>(this.bits.m7946c(), this.numHashFunctions, this.funnel, this.strategy);
    }

    @Override // p131c.p161d.p266c.p267a.AbstractC4934o
    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BloomFilter)) {
            return false;
        }
        BloomFilter bloomFilter = (BloomFilter) obj;
        if (this.numHashFunctions != bloomFilter.numHashFunctions || !this.funnel.equals(bloomFilter.funnel) || !this.bits.equals(bloomFilter.bits) || !this.strategy.equals(bloomFilter.strategy)) {
            z = false;
        }
        return z;
    }

    public double expectedFpp() {
        double a = this.bits.m7952a();
        double bitSize = bitSize();
        Double.isNaN(a);
        Double.isNaN(bitSize);
        return Math.pow(a / bitSize, this.numHashFunctions);
    }

    public int hashCode() {
        return C4928k.m24807a(Integer.valueOf(this.numHashFunctions), this.funnel, this.strategy, this.bits);
    }

    public boolean isCompatible(BloomFilter<T> bloomFilter) {
        C4933n.m24795a(bloomFilter);
        return this != bloomFilter && this.numHashFunctions == bloomFilter.numHashFunctions && bitSize() == bloomFilter.bitSize() && this.strategy.equals(bloomFilter.strategy) && this.funnel.equals(bloomFilter.funnel);
    }

    public boolean mightContain(T t) {
        return this.strategy.mightContain(t, this.funnel, this.numHashFunctions, this.bits);
    }

    public boolean put(T t) {
        return this.strategy.put(t, this.funnel, this.numHashFunctions, this.bits);
    }

    public void putAll(BloomFilter<T> bloomFilter) {
        C4933n.m24795a(bloomFilter);
        C4933n.m24790a(this != bloomFilter, "Cannot combine a BloomFilter with itself.");
        C4933n.m24786a(this.numHashFunctions == bloomFilter.numHashFunctions, "BloomFilters must have the same number of hash functions (%s != %s)", this.numHashFunctions, bloomFilter.numHashFunctions);
        C4933n.m24784a(bitSize() == bloomFilter.bitSize(), "BloomFilters must have the same size underlying bit arrays (%s != %s)", bitSize(), bloomFilter.bitSize());
        C4933n.m24781a(this.strategy.equals(bloomFilter.strategy), "BloomFilters must have equal strategies (%s != %s)", this.strategy, bloomFilter.strategy);
        C4933n.m24781a(this.funnel.equals(bloomFilter.funnel), "BloomFilters must have equal funnels (%s != %s)", this.funnel, bloomFilter.funnel);
        this.bits.m7950a(bloomFilter.bits);
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        dataOutputStream.writeByte(SignedBytes.m7789a(this.strategy.ordinal()));
        dataOutputStream.writeByte(C5069b.m24558a(this.numHashFunctions));
        dataOutputStream.writeInt(this.bits.f30827a.length());
        for (int i = 0; i < this.bits.f30827a.length(); i++) {
            dataOutputStream.writeLong(this.bits.f30827a.get(i));
        }
    }
}
