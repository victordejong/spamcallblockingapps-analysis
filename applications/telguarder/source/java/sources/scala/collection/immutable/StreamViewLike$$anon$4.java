package scala.collection.immutable;

import java.util.Objects;
import scala.Function1;
import scala.collection.GenTraversableOnce;
import scala.collection.IterableViewLike;
import scala.collection.Iterator;
import scala.collection.SeqViewLike;
import scala.collection.TraversableViewLike;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StreamViewLike$$anon$4.class */
public final class StreamViewLike$$anon$4 extends StreamViewLike<A, Coll, This>.AbstractTransformed<B> implements StreamViewLike<A, Coll, This>.FlatMapped<B> {
    private final /* synthetic */ StreamViewLike $outer;
    private volatile boolean bitmap$0;
    private final int[] index;
    private final Function1<A, GenTraversableOnce<B>> mapping;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StreamViewLike$$anon$4(StreamViewLike streamViewLike, StreamViewLike<A, Coll, This> streamViewLike2) {
        super(streamViewLike);
        Objects.requireNonNull(streamViewLike);
        this.$outer = streamViewLike;
        this.mapping = streamViewLike2;
        TraversableViewLike.FlatMapped.Cclass.$init$(this);
        IterableViewLike.FlatMapped.Cclass.$init$(this);
        SeqViewLike.FlatMapped.Cclass.$init$(this);
    }

    private int[] index$lzycompute() {
        synchronized (this) {
            if (!this.bitmap$0) {
                this.index = SeqViewLike.FlatMapped.Cclass.index(this);
                this.bitmap$0 = true;
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.index;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [B, java.lang.Object] */
    @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
    public B apply(int i) {
        return SeqViewLike.FlatMapped.Cclass.apply(this, i);
    }

    @Override // scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.SeqViewLike.FlatMapped
    public int findRow(int i, int i2, int i3) {
        return SeqViewLike.FlatMapped.Cclass.findRow(this, i, i2, i3);
    }

    @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<B, U> function1) {
        TraversableViewLike.FlatMapped.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.SeqViewLike.FlatMapped
    public int[] index() {
        return this.bitmap$0 ? this.index : index$lzycompute();
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<B> iterator() {
        return IterableViewLike.FlatMapped.Cclass.iterator(this);
    }

    @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
    public int length() {
        return SeqViewLike.FlatMapped.Cclass.length(this);
    }

    @Override // scala.collection.TraversableViewLike.FlatMapped
    public Function1<A, GenTraversableOnce<B>> mapping() {
        return this.mapping;
    }

    @Override // scala.collection.IterableViewLike.FlatMapped
    public /* synthetic */ IterableViewLike scala$collection$IterableViewLike$FlatMapped$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.SeqViewLike.FlatMapped
    public /* synthetic */ SeqViewLike scala$collection$SeqViewLike$FlatMapped$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.TraversableViewLike.FlatMapped
    public /* synthetic */ TraversableViewLike scala$collection$TraversableViewLike$FlatMapped$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableViewLike
    public final String viewIdentifier() {
        return TraversableViewLike.FlatMapped.Cclass.viewIdentifier(this);
    }
}
