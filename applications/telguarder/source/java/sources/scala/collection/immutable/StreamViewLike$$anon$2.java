package scala.collection.immutable;

import java.util.Objects;
import scala.Function1;
import scala.collection.GenSeq;
import scala.collection.GenTraversable;
import scala.collection.IterableViewLike;
import scala.collection.Iterator;
import scala.collection.SeqViewLike;
import scala.collection.TraversableViewLike;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StreamViewLike$$anon$2.class */
public final class StreamViewLike$$anon$2 extends StreamViewLike<A, Coll, This>.AbstractTransformed<B> implements StreamViewLike<A, Coll, This>.Appended<B> {
    private final /* synthetic */ StreamViewLike $outer;
    private volatile boolean bitmap$0;
    private final GenTraversable<B> rest;
    private final GenSeq<Object> restSeq;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StreamViewLike$$anon$2(StreamViewLike streamViewLike, StreamViewLike<A, Coll, This> streamViewLike2) {
        super(streamViewLike);
        Objects.requireNonNull(streamViewLike);
        this.$outer = streamViewLike;
        this.rest = streamViewLike2;
        TraversableViewLike.Appended.Cclass.$init$(this);
        IterableViewLike.Appended.Cclass.$init$(this);
        SeqViewLike.Appended.Cclass.$init$(this);
    }

    private GenSeq restSeq$lzycompute() {
        synchronized (this) {
            if (!this.bitmap$0) {
                this.restSeq = SeqViewLike.Appended.Cclass.restSeq(this);
                this.bitmap$0 = true;
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.restSeq;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [B, java.lang.Object] */
    @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
    public B apply(int i) {
        return SeqViewLike.Appended.Cclass.apply(this, i);
    }

    @Override // scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<B, U> function1) {
        TraversableViewLike.Appended.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<B> iterator() {
        return IterableViewLike.Appended.Cclass.iterator(this);
    }

    @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
    public int length() {
        return SeqViewLike.Appended.Cclass.length(this);
    }

    @Override // scala.collection.TraversableViewLike.Appended
    public GenTraversable<B> rest() {
        return this.rest;
    }

    @Override // scala.collection.SeqViewLike.Appended
    public GenSeq<B> restSeq() {
        return this.bitmap$0 ? this.restSeq : restSeq$lzycompute();
    }

    @Override // scala.collection.IterableViewLike.Appended
    public /* synthetic */ IterableViewLike scala$collection$IterableViewLike$Appended$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.SeqViewLike.Appended
    public /* synthetic */ SeqViewLike scala$collection$SeqViewLike$Appended$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.TraversableViewLike.Appended
    public /* synthetic */ TraversableViewLike scala$collection$TraversableViewLike$Appended$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableViewLike
    public final String viewIdentifier() {
        return TraversableViewLike.Appended.Cclass.viewIdentifier(this);
    }
}
