package scala.collection;

import java.util.Objects;
import scala.Function1;
import scala.collection.IterableViewLike;
import scala.collection.TraversableViewLike;
import scala.collection.generic.SliceInterval;
/* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike$$anon$6.class */
public final class IterableViewLike$$anon$6 extends IterableViewLike<A, Coll, This>.AbstractTransformed<A> implements IterableViewLike<A, Coll, This>.Sliced {
    private final /* synthetic */ IterableViewLike $outer;
    private final SliceInterval endpoints;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public IterableViewLike$$anon$6(IterableViewLike iterableViewLike, IterableViewLike<A, Coll, This> iterableViewLike2) {
        super(iterableViewLike);
        Objects.requireNonNull(iterableViewLike);
        this.$outer = iterableViewLike;
        this.endpoints = iterableViewLike2;
        TraversableViewLike.Sliced.Cclass.$init$(this);
        IterableViewLike.Sliced.Cclass.$init$(this);
    }

    @Override // scala.collection.TraversableViewLike.Sliced
    public SliceInterval endpoints() {
        return this.endpoints;
    }

    @Override // scala.collection.IterableViewLike.AbstractTransformed, scala.collection.IterableViewLike.Transformed, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<Object, U> function1) {
        TraversableViewLike.Sliced.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.TraversableViewLike.Sliced
    public int from() {
        return TraversableViewLike.Sliced.Cclass.from(this);
    }

    @Override // scala.collection.IterableViewLike.Transformed, scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<A> iterator() {
        return IterableViewLike.Sliced.Cclass.iterator(this);
    }

    @Override // scala.collection.IterableViewLike.Sliced
    public /* synthetic */ IterableViewLike scala$collection$IterableViewLike$Sliced$$$outer() {
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

    @Override // scala.collection.IterableViewLike.AbstractTransformed, scala.collection.TraversableViewLike
    public final String viewIdentifier() {
        return TraversableViewLike.Sliced.Cclass.viewIdentifier(this);
    }
}
