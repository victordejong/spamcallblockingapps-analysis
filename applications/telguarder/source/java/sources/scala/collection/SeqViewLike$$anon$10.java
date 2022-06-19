package scala.collection;

import java.util.Objects;
import scala.Tuple2;
import scala.collection.IterableViewLike;
import scala.collection.SeqViewLike;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$$anon$10.class */
public final class SeqViewLike$$anon$10 extends SeqViewLike<A, Coll, This>.AbstractTransformed<Tuple2<A1, B>> implements SeqViewLike<A, Coll, This>.ZippedAll<A1, B> {
    private final /* synthetic */ SeqViewLike $outer;
    private volatile boolean bitmap$0;
    private final GenIterable<B> other;
    private final B thatElem;
    private final Seq<B> thatSeq;
    private final A1 thisElem;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SeqViewLike$$anon$10(SeqViewLike seqViewLike, GenIterable genIterable, Object obj, Object obj2) {
        super(seqViewLike);
        Objects.requireNonNull(seqViewLike);
        this.$outer = seqViewLike;
        this.other = genIterable;
        this.thisElem = obj;
        this.thatElem = obj2;
        IterableViewLike.ZippedAll.Cclass.$init$(this);
        SeqViewLike.ZippedAll.Cclass.$init$(this);
    }

    private Seq thatSeq$lzycompute() {
        synchronized (this) {
            if (!this.bitmap$0) {
                this.thatSeq = SeqViewLike.ZippedAll.Cclass.thatSeq(this);
                this.bitmap$0 = true;
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.thatSeq;
    }

    @Override // scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
    public Tuple2<A1, B> apply(int i) {
        return SeqViewLike.ZippedAll.Cclass.apply(this, i);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<Tuple2<A1, B>> iterator() {
        return IterableViewLike.ZippedAll.Cclass.iterator(this);
    }

    @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
    public int length() {
        return SeqViewLike.ZippedAll.Cclass.length(this);
    }

    @Override // scala.collection.IterableViewLike.ZippedAll
    public GenIterable<B> other() {
        return this.other;
    }

    @Override // scala.collection.IterableViewLike.ZippedAll
    public /* synthetic */ IterableViewLike scala$collection$IterableViewLike$ZippedAll$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.SeqViewLike.ZippedAll
    public /* synthetic */ SeqViewLike scala$collection$SeqViewLike$ZippedAll$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.IterableViewLike.ZippedAll
    public B thatElem() {
        return this.thatElem;
    }

    @Override // scala.collection.SeqViewLike.ZippedAll
    public Seq<B> thatSeq() {
        return this.bitmap$0 ? this.thatSeq : thatSeq$lzycompute();
    }

    @Override // scala.collection.IterableViewLike.ZippedAll
    public A1 thisElem() {
        return this.thisElem;
    }

    @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableViewLike
    public final String viewIdentifier() {
        return IterableViewLike.ZippedAll.Cclass.viewIdentifier(this);
    }
}
