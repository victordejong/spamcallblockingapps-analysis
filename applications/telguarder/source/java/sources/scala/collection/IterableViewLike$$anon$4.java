package scala.collection;

import java.util.Objects;
import scala.Function1;
import scala.collection.IterableViewLike;
import scala.collection.TraversableViewLike;
/* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike$$anon$4.class */
public final class IterableViewLike$$anon$4 extends IterableViewLike<A, Coll, This>.AbstractTransformed<B> implements IterableViewLike<A, Coll, This>.FlatMapped<B> {
    private final /* synthetic */ IterableViewLike $outer;
    private final Function1<A, GenTraversableOnce<B>> mapping;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public IterableViewLike$$anon$4(IterableViewLike iterableViewLike, IterableViewLike<A, Coll, This> iterableViewLike2) {
        super(iterableViewLike);
        Objects.requireNonNull(iterableViewLike);
        this.$outer = iterableViewLike;
        this.mapping = iterableViewLike2;
        TraversableViewLike.FlatMapped.Cclass.$init$(this);
        IterableViewLike.FlatMapped.Cclass.$init$(this);
    }

    @Override // scala.collection.IterableViewLike.AbstractTransformed, scala.collection.IterableViewLike.Transformed, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<B, U> function1) {
        TraversableViewLike.FlatMapped.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.IterableViewLike.Transformed, scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<B> iterator() {
        return IterableViewLike.FlatMapped.Cclass.iterator(this);
    }

    @Override // scala.collection.TraversableViewLike.FlatMapped
    public Function1<A, GenTraversableOnce<B>> mapping() {
        return this.mapping;
    }

    @Override // scala.collection.IterableViewLike.FlatMapped
    public /* synthetic */ IterableViewLike scala$collection$IterableViewLike$FlatMapped$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.TraversableViewLike.FlatMapped
    public /* synthetic */ TraversableViewLike scala$collection$TraversableViewLike$FlatMapped$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.IterableViewLike.AbstractTransformed, scala.collection.TraversableViewLike
    public final String viewIdentifier() {
        return TraversableViewLike.FlatMapped.Cclass.viewIdentifier(this);
    }
}
