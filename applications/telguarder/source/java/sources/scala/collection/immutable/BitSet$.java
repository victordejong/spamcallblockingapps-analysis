package scala.collection.immutable;

import scala.Array$;
import scala.Function1;
import scala.Serializable;
import scala.collection.Seq;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.BitSetFactory;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.Growable;
import scala.collection.immutable.BitSet;
import scala.collection.mutable.Builder;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/BitSet$.class */
public final class BitSet$ implements BitSetFactory<BitSet>, Serializable {
    public static final BitSet$ MODULE$ = null;
    private final BitSet empty = new BitSet.BitSet1(0);

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

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.immutable.BitSet, scala.collection.BitSet] */
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
        return this.empty;
    }

    public BitSet fromBitMask(long[] jArr) {
        BitSet.BitSet1 bitSet1;
        int length = jArr.length;
        if (length == 0) {
            bitSet1 = empty();
        } else if (length == 1) {
            bitSet1 = new BitSet.BitSet1(jArr[0]);
        } else if (length == 2) {
            bitSet1 = new BitSet.BitSet2(jArr[0], jArr[1]);
        } else {
            long[] jArr2 = new long[length];
            Array$.MODULE$.copy(jArr, 0, jArr2, 0, length);
            bitSet1 = new BitSet.BitSetN(jArr2);
        }
        return bitSet1;
    }

    public BitSet fromBitMaskNoCopy(long[] jArr) {
        int length = jArr.length;
        return length == 0 ? empty() : length == 1 ? new BitSet.BitSet1(jArr[0]) : length == 2 ? new BitSet.BitSet2(jArr[0], jArr[1]) : new BitSet.BitSetN(jArr);
    }

    @Override // scala.collection.generic.BitSetFactory
    public Builder<Object, BitSet> newBuilder() {
        return new Builder<Object, BitSet>() { // from class: scala.collection.immutable.BitSet$$anon$1

            /* renamed from: b */
            private final scala.collection.mutable.BitSet f1545b = new scala.collection.mutable.BitSet();

            {
                Growable.Cclass.$init$(this);
                Builder.Cclass.$init$(this);
            }

            @Override // scala.collection.generic.Growable
            public Growable $plus$eq(Object obj, Object obj2, Seq seq) {
                Growable $plus$plus$eq;
                $plus$plus$eq = $plus$eq((BitSet$$anon$1) obj).$plus$eq(obj2).$plus$plus$eq(seq);
                return $plus$plus$eq;
            }

            public BitSet$$anon$1 $plus$eq(int i) {
                this.f1545b.$plus$eq(i);
                return this;
            }

            @Override // scala.collection.generic.Growable
            public Growable<Object> $plus$plus$eq(TraversableOnce<Object> traversableOnce) {
                return Growable.Cclass.$plus$plus$eq(this, traversableOnce);
            }

            @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
            public void clear() {
                this.f1545b.clear();
            }

            @Override // scala.collection.mutable.Builder
            public <NewTo> Builder<Object, NewTo> mapResult(Function1<BitSet, NewTo> function1) {
                return Builder.Cclass.mapResult(this, function1);
            }

            @Override // scala.collection.mutable.Builder
            public BitSet result() {
                return this.f1545b.toImmutable();
            }

            @Override // scala.collection.mutable.Builder
            public void sizeHint(int i) {
                Builder.Cclass.sizeHint(this, i);
            }

            @Override // scala.collection.mutable.Builder
            public void sizeHint(TraversableLike<?, ?> traversableLike) {
                Builder.Cclass.sizeHint(this, traversableLike);
            }

            @Override // scala.collection.mutable.Builder
            public void sizeHint(TraversableLike<?, ?> traversableLike, int i) {
                Builder.Cclass.sizeHint(this, traversableLike, i);
            }

            @Override // scala.collection.mutable.Builder
            public void sizeHintBounded(int i, TraversableLike<?, ?> traversableLike) {
                Builder.Cclass.sizeHintBounded(this, i, traversableLike);
            }
        };
    }
}
