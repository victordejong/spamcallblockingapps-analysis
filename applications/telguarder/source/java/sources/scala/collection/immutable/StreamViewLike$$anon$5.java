package scala.collection.immutable;

import java.util.Objects;
import scala.Function1;
import scala.collection.IterableViewLike;
import scala.collection.Iterator;
import scala.collection.SeqViewLike;
import scala.collection.TraversableViewLike;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StreamViewLike$$anon$5.class */
public final class StreamViewLike$$anon$5 extends StreamViewLike<A, Coll, This>.AbstractTransformed<A> implements StreamViewLike<A, Coll, This>.Filtered {
    private final /* synthetic */ StreamViewLike $outer;
    private volatile boolean bitmap$0;
    private final int[] index;
    private final Function1<A, Object> pred;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StreamViewLike$$anon$5(StreamViewLike streamViewLike, StreamViewLike<A, Coll, This> streamViewLike2) {
        super(streamViewLike);
        Objects.requireNonNull(streamViewLike);
        this.$outer = streamViewLike;
        this.pred = streamViewLike2;
        TraversableViewLike.Filtered.Cclass.$init$(this);
        IterableViewLike.Filtered.Cclass.$init$(this);
        SeqViewLike.Filtered.Cclass.$init$(this);
    }

    private int[] index$lzycompute() {
        synchronized (this) {
            if (!this.bitmap$0) {
                this.index = SeqViewLike.Filtered.Cclass.index(this);
                this.bitmap$0 = true;
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.index;
    }

    @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
    public Object apply(int i) {
        return SeqViewLike.Filtered.Cclass.apply(this, i);
    }

    @Override // scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<Object, U> function1) {
        TraversableViewLike.Filtered.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.SeqViewLike.Filtered
    public int[] index() {
        return this.bitmap$0 ? this.index : index$lzycompute();
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<Object> iterator() {
        return IterableViewLike.Filtered.Cclass.iterator(this);
    }

    @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
    public int length() {
        return SeqViewLike.Filtered.Cclass.length(this);
    }

    @Override // scala.collection.TraversableViewLike.Filtered
    public Function1<A, Object> pred() {
        return this.pred;
    }

    @Override // scala.collection.IterableViewLike.Filtered
    public /* synthetic */ IterableViewLike scala$collection$IterableViewLike$Filtered$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.SeqViewLike.Filtered
    public /* synthetic */ SeqViewLike scala$collection$SeqViewLike$Filtered$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.TraversableViewLike.Filtered
    public /* synthetic */ TraversableViewLike scala$collection$TraversableViewLike$Filtered$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableViewLike
    public final String viewIdentifier() {
        return TraversableViewLike.Filtered.Cclass.viewIdentifier(this);
    }
}
