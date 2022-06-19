package scala.collection;

import java.util.Objects;
import scala.Function1;
import scala.collection.TraversableViewLike;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$$anon$8.class */
public final class TraversableViewLike$$anon$8 extends TraversableViewLike<A, Coll, This>.AbstractTransformed<A> implements TraversableViewLike<A, Coll, This>.TakenWhile {
    private final /* synthetic */ TraversableViewLike $outer;
    private final Function1<A, Object> pred;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public TraversableViewLike$$anon$8(TraversableViewLike traversableViewLike, TraversableViewLike<A, Coll, This> traversableViewLike2) {
        super(traversableViewLike);
        Objects.requireNonNull(traversableViewLike);
        this.$outer = traversableViewLike;
        this.pred = traversableViewLike2;
        TraversableViewLike.TakenWhile.Cclass.$init$(this);
    }

    @Override // scala.collection.TraversableViewLike.Transformed, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<A, U> function1) {
        TraversableViewLike.TakenWhile.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.TraversableViewLike.TakenWhile
    public Function1<A, Object> pred() {
        return this.pred;
    }

    @Override // scala.collection.TraversableViewLike.TakenWhile
    public /* synthetic */ TraversableViewLike scala$collection$TraversableViewLike$TakenWhile$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.TraversableViewLike.AbstractTransformed, scala.collection.TraversableViewLike
    public final String viewIdentifier() {
        return TraversableViewLike.TakenWhile.Cclass.viewIdentifier(this);
    }
}
