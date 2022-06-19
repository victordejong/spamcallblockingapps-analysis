package scala.collection;

import java.util.Objects;
import scala.Function1;
import scala.collection.IterableViewLike;
import scala.collection.SeqViewLike;
import scala.collection.TraversableViewLike;
import scala.collection.generic.SliceInterval;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$$anon$6.class */
public final class SeqViewLike$$anon$6 extends SeqViewLike<A, Coll, This>.AbstractTransformed<A> implements SeqViewLike<A, Coll, This>.Sliced {
    private final /* synthetic */ SeqViewLike $outer;
    private final SliceInterval endpoints;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SeqViewLike$$anon$6(SeqViewLike seqViewLike, SeqViewLike<A, Coll, This> seqViewLike2) {
        super(seqViewLike);
        Objects.requireNonNull(seqViewLike);
        this.$outer = seqViewLike;
        this.endpoints = seqViewLike2;
        TraversableViewLike.Sliced.Cclass.$init$(this);
        IterableViewLike.Sliced.Cclass.$init$(this);
        SeqViewLike.Sliced.Cclass.$init$(this);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
    @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
    public A apply(int i) {
        return SeqViewLike.Sliced.Cclass.apply(this, i);
    }

    @Override // scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.TraversableViewLike.Sliced
    public SliceInterval endpoints() {
        return this.endpoints;
    }

    @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<A, U> function1) {
        SeqViewLike.Sliced.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.TraversableViewLike.Sliced
    public int from() {
        return TraversableViewLike.Sliced.Cclass.from(this);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<A> iterator() {
        return SeqViewLike.Sliced.Cclass.iterator(this);
    }

    @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
    public int length() {
        return SeqViewLike.Sliced.Cclass.length(this);
    }

    @Override // scala.collection.IterableViewLike.Sliced
    public /* synthetic */ IterableViewLike scala$collection$IterableViewLike$Sliced$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.SeqViewLike.Sliced
    public /* synthetic */ SeqViewLike scala$collection$SeqViewLike$Sliced$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.TraversableViewLike.Sliced
    public /* synthetic */ TraversableViewLike scala$collection$TraversableViewLike$Sliced$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.TraversableViewLike.Sliced
    public int until() {
        return TraversableViewLike.Sliced.Cclass.until(this);
    }

    @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableViewLike
    public final String viewIdentifier() {
        return TraversableViewLike.Sliced.Cclass.viewIdentifier(this);
    }
}
