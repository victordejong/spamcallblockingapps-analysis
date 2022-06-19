package scala.collection;

import java.util.Objects;
import scala.Function1;
import scala.collection.TraversableViewLike;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$$anon$7.class */
public final class TraversableViewLike$$anon$7 extends TraversableViewLike<A, Coll, This>.AbstractTransformed<A> implements TraversableViewLike<A, Coll, This>.DroppedWhile {
    private final /* synthetic */ TraversableViewLike $outer;
    private final Function1<A, Object> pred;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public TraversableViewLike$$anon$7(TraversableViewLike traversableViewLike, TraversableViewLike<A, Coll, This> traversableViewLike2) {
        super(traversableViewLike);
        Objects.requireNonNull(traversableViewLike);
        this.$outer = traversableViewLike;
        this.pred = traversableViewLike2;
        TraversableViewLike.DroppedWhile.Cclass.$init$(this);
    }

    @Override // scala.collection.TraversableViewLike.Transformed, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<A, U> function1) {
        TraversableViewLike.DroppedWhile.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.TraversableViewLike.DroppedWhile
    public Function1<A, Object> pred() {
        return this.pred;
    }

    @Override // scala.collection.TraversableViewLike.DroppedWhile
    public /* synthetic */ TraversableViewLike scala$collection$TraversableViewLike$DroppedWhile$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.TraversableViewLike.AbstractTransformed, scala.collection.TraversableViewLike
    public final String viewIdentifier() {
        return TraversableViewLike.DroppedWhile.Cclass.viewIdentifier(this);
    }
}
