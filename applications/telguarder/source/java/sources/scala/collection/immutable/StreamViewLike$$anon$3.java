package scala.collection.immutable;

import java.util.Objects;
import scala.Function1;
import scala.collection.IterableViewLike;
import scala.collection.Iterator;
import scala.collection.SeqViewLike;
import scala.collection.TraversableViewLike;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StreamViewLike$$anon$3.class */
public final class StreamViewLike$$anon$3 extends StreamViewLike<A, Coll, This>.AbstractTransformed<B> implements StreamViewLike<A, Coll, This>.Mapped<B> {
    private final /* synthetic */ StreamViewLike $outer;
    private final Function1<A, B> mapping;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StreamViewLike$$anon$3(StreamViewLike streamViewLike, StreamViewLike<A, Coll, This> streamViewLike2) {
        super(streamViewLike);
        Objects.requireNonNull(streamViewLike);
        this.$outer = streamViewLike;
        this.mapping = streamViewLike2;
        TraversableViewLike.Mapped.Cclass.$init$(this);
        IterableViewLike.Mapped.Cclass.$init$(this);
        SeqViewLike.Mapped.Cclass.$init$(this);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [B, java.lang.Object] */
    @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
    public B apply(int i) {
        return SeqViewLike.Mapped.Cclass.apply(this, i);
    }

    @Override // scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<B, U> function1) {
        TraversableViewLike.Mapped.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<B> iterator() {
        return IterableViewLike.Mapped.Cclass.iterator(this);
    }

    @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
    public int length() {
        return SeqViewLike.Mapped.Cclass.length(this);
    }

    @Override // scala.collection.TraversableViewLike.Mapped
    public Function1<A, B> mapping() {
        return this.mapping;
    }

    @Override // scala.collection.IterableViewLike.Mapped
    public /* synthetic */ IterableViewLike scala$collection$IterableViewLike$Mapped$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.SeqViewLike.Mapped
    public /* synthetic */ SeqViewLike scala$collection$SeqViewLike$Mapped$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.TraversableViewLike.Mapped
    public /* synthetic */ TraversableViewLike scala$collection$TraversableViewLike$Mapped$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableViewLike
    public final String viewIdentifier() {
        return TraversableViewLike.Mapped.Cclass.viewIdentifier(this);
    }
}
