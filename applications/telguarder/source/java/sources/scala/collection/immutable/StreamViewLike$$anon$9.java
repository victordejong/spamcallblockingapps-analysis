package scala.collection.immutable;

import java.util.Objects;
import scala.Tuple2;
import scala.collection.GenIterable;
import scala.collection.IterableViewLike;
import scala.collection.Iterator;
import scala.collection.Seq;
import scala.collection.SeqViewLike;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StreamViewLike$$anon$9.class */
public final class StreamViewLike$$anon$9 extends StreamViewLike<A, Coll, This>.AbstractTransformed<Tuple2<A, B>> implements StreamViewLike<A, Coll, This>.Zipped<B> {
    private final /* synthetic */ StreamViewLike $outer;
    private volatile boolean bitmap$0;
    private final GenIterable<B> other;
    private final Seq<Object> thatSeq;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StreamViewLike$$anon$9(StreamViewLike streamViewLike, StreamViewLike<A, Coll, This> streamViewLike2) {
        super(streamViewLike);
        Objects.requireNonNull(streamViewLike);
        this.$outer = streamViewLike;
        this.other = streamViewLike2;
        IterableViewLike.Zipped.Cclass.$init$(this);
        SeqViewLike.Zipped.Cclass.$init$(this);
    }

    private Seq thatSeq$lzycompute() {
        synchronized (this) {
            if (!this.bitmap$0) {
                this.thatSeq = SeqViewLike.Zipped.Cclass.thatSeq(this);
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
    public Tuple2<A, B> apply(int i) {
        return SeqViewLike.Zipped.Cclass.apply(this, i);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<Tuple2<A, B>> iterator() {
        return IterableViewLike.Zipped.Cclass.iterator(this);
    }

    @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
    public int length() {
        return SeqViewLike.Zipped.Cclass.length(this);
    }

    @Override // scala.collection.IterableViewLike.Zipped
    public GenIterable<B> other() {
        return this.other;
    }

    @Override // scala.collection.IterableViewLike.Zipped
    public /* synthetic */ IterableViewLike scala$collection$IterableViewLike$Zipped$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.SeqViewLike.Zipped
    public /* synthetic */ SeqViewLike scala$collection$SeqViewLike$Zipped$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.SeqViewLike.Zipped
    public Seq<B> thatSeq() {
        return this.bitmap$0 ? this.thatSeq : thatSeq$lzycompute();
    }

    @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableViewLike
    public final String viewIdentifier() {
        return IterableViewLike.Zipped.Cclass.viewIdentifier(this);
    }
}
