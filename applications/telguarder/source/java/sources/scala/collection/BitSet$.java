package scala.collection;

import scala.collection.generic.BitSetFactory;
import scala.collection.generic.CanBuildFrom;
import scala.collection.mutable.Builder;
/* loaded from: classes3-dex2jar.jar:scala/collection/BitSet$.class */
public final class BitSet$ implements BitSetFactory<BitSet> {
    public static final BitSet$ MODULE$ = null;
    private final BitSet empty = scala.collection.immutable.BitSet$.MODULE$.empty();

    static {
        new BitSet$();
    }

    private BitSet$() {
        MODULE$ = this;
        BitSetFactory.Cclass.$init$(this);
    }

    @Override // scala.collection.generic.BitSetFactory
    public BitSet apply(Seq<Object> seq) {
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

    @Override // scala.collection.generic.BitSetFactory
    public Builder<Object, BitSet> newBuilder() {
        return scala.collection.immutable.BitSet$.MODULE$.newBuilder();
    }
}
