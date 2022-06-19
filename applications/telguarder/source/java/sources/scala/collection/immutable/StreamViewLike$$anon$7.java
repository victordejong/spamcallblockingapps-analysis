package scala.collection.immutable;

import java.util.Objects;
import scala.Function1;
import scala.collection.IterableViewLike;
import scala.collection.Iterator;
import scala.collection.SeqViewLike;
import scala.collection.TraversableViewLike;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StreamViewLike$$anon$7.class */
public final class StreamViewLike$$anon$7 extends StreamViewLike<A, Coll, This>.AbstractTransformed<A> implements StreamViewLike<A, Coll, This>.DroppedWhile {
    private final /* synthetic */ StreamViewLike $outer;
    private volatile boolean bitmap$0;
    private final Function1<A, Object> pred;
    private final int start;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StreamViewLike$$anon$7(StreamViewLike streamViewLike, StreamViewLike<A, Coll, This> streamViewLike2) {
        super(streamViewLike);
        Objects.requireNonNull(streamViewLike);
        this.$outer = streamViewLike;
        this.pred = streamViewLike2;
        TraversableViewLike.DroppedWhile.Cclass.$init$(this);
        IterableViewLike.DroppedWhile.Cclass.$init$(this);
        SeqViewLike.DroppedWhile.Cclass.$init$(this);
    }

    private int start$lzycompute() {
        synchronized (this) {
            if (!this.bitmap$0) {
                this.start = SeqViewLike.DroppedWhile.Cclass.start(this);
                this.bitmap$0 = true;
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.start;
    }

    @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
    public Object apply(int i) {
        return SeqViewLike.DroppedWhile.Cclass.apply(this, i);
    }

    @Override // scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<Object, U> function1) {
        TraversableViewLike.DroppedWhile.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<Object> iterator() {
        return IterableViewLike.DroppedWhile.Cclass.iterator(this);
    }

    @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
    public int length() {
        return SeqViewLike.DroppedWhile.Cclass.length(this);
    }

    @Override // scala.collection.TraversableViewLike.DroppedWhile
    public Function1<A, Object> pred() {
        return this.pred;
    }

    @Override // scala.collection.IterableViewLike.DroppedWhile
    public /* synthetic */ IterableViewLike scala$collection$IterableViewLike$DroppedWhile$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.SeqViewLike.DroppedWhile
    public /* synthetic */ SeqViewLike scala$collection$SeqViewLike$DroppedWhile$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.TraversableViewLike.DroppedWhile
    public /* synthetic */ TraversableViewLike scala$collection$TraversableViewLike$DroppedWhile$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.SeqViewLike.DroppedWhile
    public int start() {
        return this.bitmap$0 ? this.start : start$lzycompute();
    }

    @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableViewLike
    public final String viewIdentifier() {
        return TraversableViewLike.DroppedWhile.Cclass.viewIdentifier(this);
    }
}
