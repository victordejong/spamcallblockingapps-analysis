package scala.collection;

import java.util.Objects;
import scala.Function1;
import scala.collection.IterableViewLike;
import scala.collection.TraversableViewLike;
/* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike$$anon$2.class */
public final class IterableViewLike$$anon$2 extends IterableViewLike<A, Coll, This>.AbstractTransformed<B> implements IterableViewLike<A, Coll, This>.Appended<B> {
    private final /* synthetic */ IterableViewLike $outer;
    private final GenTraversable<B> rest;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IterableViewLike$$anon$2(IterableViewLike iterableViewLike, IterableViewLike<A, Coll, This> iterableViewLike2) {
        super(iterableViewLike);
        Objects.requireNonNull(iterableViewLike);
        this.$outer = iterableViewLike;
        this.rest = iterableViewLike2;
        TraversableViewLike.Appended.Cclass.$init$(this);
        IterableViewLike.Appended.Cclass.$init$(this);
    }

    @Override // scala.collection.IterableViewLike.AbstractTransformed, scala.collection.IterableViewLike.Transformed, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<B, U> function1) {
        TraversableViewLike.Appended.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.IterableViewLike.Transformed, scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<B> iterator() {
        return IterableViewLike.Appended.Cclass.iterator(this);
    }

    @Override // scala.collection.TraversableViewLike.Appended
    public GenTraversable<B> rest() {
        return this.rest;
    }

    @Override // scala.collection.IterableViewLike.Appended
    public /* synthetic */ IterableViewLike scala$collection$IterableViewLike$Appended$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.TraversableViewLike.Appended
    public /* synthetic */ TraversableViewLike scala$collection$TraversableViewLike$Appended$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.IterableViewLike.AbstractTransformed, scala.collection.TraversableViewLike
    public final String viewIdentifier() {
        return TraversableViewLike.Appended.Cclass.viewIdentifier(this);
    }
}
