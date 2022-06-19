package scala.collection;

import java.util.Objects;
import scala.Function1;
import scala.collection.TraversableViewLike;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$$anon$2.class */
public final class TraversableViewLike$$anon$2 extends TraversableViewLike<A, Coll, This>.AbstractTransformed<B> implements TraversableViewLike<A, Coll, This>.Appended<B> {
    private final /* synthetic */ TraversableViewLike $outer;
    private final GenTraversable<B> rest;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TraversableViewLike$$anon$2(TraversableViewLike traversableViewLike, TraversableViewLike<A, Coll, This> traversableViewLike2) {
        super(traversableViewLike);
        Objects.requireNonNull(traversableViewLike);
        this.$outer = traversableViewLike;
        this.rest = traversableViewLike2;
        TraversableViewLike.Appended.Cclass.$init$(this);
    }

    @Override // scala.collection.TraversableViewLike.Transformed, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<B, U> function1) {
        TraversableViewLike.Appended.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.TraversableViewLike.Appended
    public GenTraversable<B> rest() {
        return this.rest;
    }

    @Override // scala.collection.TraversableViewLike.Appended
    public /* synthetic */ TraversableViewLike scala$collection$TraversableViewLike$Appended$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.TraversableViewLike.AbstractTransformed, scala.collection.TraversableViewLike
    public final String viewIdentifier() {
        return TraversableViewLike.Appended.Cclass.viewIdentifier(this);
    }
}
