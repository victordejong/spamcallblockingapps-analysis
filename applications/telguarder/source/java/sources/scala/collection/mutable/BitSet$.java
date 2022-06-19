package scala.collection.mutable;

import scala.Array$;
import scala.Serializable;
import scala.collection.Seq;
import scala.collection.generic.BitSetFactory;
import scala.collection.generic.CanBuildFrom;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/BitSet$.class */
public final class BitSet$ implements BitSetFactory<BitSet>, Serializable {
    public static final BitSet$ MODULE$ = null;

    static {
        new BitSet$();
    }

    private BitSet$() {
        MODULE$ = this;
        BitSetFactory.Cclass.$init$(this);
    }

    private Object readResolve() {
        return MODULE$;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.mutable.BitSet, scala.collection.BitSet] */
    @Override // scala.collection.generic.BitSetFactory
    public BitSet apply(Seq seq) {
        return BitSetFactory.Cclass.apply(this, seq);
    }

    @Override // scala.collection.generic.BitSetFactory
    public Object bitsetCanBuildFrom() {
        return BitSetFactory.Cclass.bitsetCanBuildFrom(this);
    }

    public CanBuildFrom<BitSet, Object, BitSet> canBuildFrom() {
        return bitsetCanBuildFrom();
    }

    @Override // scala.collection.generic.BitSetFactory
    public BitSet empty() {
        return new BitSet();
    }

    public BitSet fromBitMask(long[] jArr) {
        int length = jArr.length;
        long[] jArr2 = new long[length];
        Array$.MODULE$.copy(jArr, 0, jArr2, 0, length);
        return new BitSet(jArr2);
    }

    public BitSet fromBitMaskNoCopy(long[] jArr) {
        return new BitSet(jArr);
    }

    @Override // scala.collection.generic.BitSetFactory
    public Builder<Object, BitSet> newBuilder() {
        return new GrowingBuilder(empty());
    }
}
