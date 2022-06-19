package scala.collection.immutable;

import java.util.Objects;
import scala.collection.Iterator;
import scala.collection.SeqViewLike;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StreamViewLike$$anon$12.class */
public final class StreamViewLike$$anon$12 extends StreamViewLike<A, Coll, This>.AbstractTransformed<B> implements StreamViewLike<A, Coll, This>.Prepended<B> {
    private final /* synthetic */ StreamViewLike $outer;
    private final B fst;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public StreamViewLike$$anon$12(StreamViewLike streamViewLike, StreamViewLike<A, Coll, This> streamViewLike2) {
        super(streamViewLike);
        Objects.requireNonNull(streamViewLike);
        this.$outer = streamViewLike;
        this.fst = streamViewLike2;
        SeqViewLike.Prepended.Cclass.$init$(this);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [B, java.lang.Object] */
    @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
    public B apply(int i) {
        return SeqViewLike.Prepended.Cclass.apply(this, i);
    }

    @Override // scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.SeqViewLike.Prepended
    public B fst() {
        return this.fst;
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<B> iterator() {
        return SeqViewLike.Prepended.Cclass.iterator(this);
    }

    @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
    public int length() {
        return SeqViewLike.Prepended.Cclass.length(this);
    }

    @Override // scala.collection.SeqViewLike.Prepended
    public /* synthetic */ SeqViewLike scala$collection$SeqViewLike$Prepended$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableViewLike
    public final String viewIdentifier() {
        return SeqViewLike.Prepended.Cclass.viewIdentifier(this);
    }
}
