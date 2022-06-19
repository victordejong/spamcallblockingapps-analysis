package scala.collection;

import java.util.Objects;
import scala.Function1;
import scala.collection.IterableViewLike;
import scala.collection.TraversableViewLike;
/* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike$$anon$8.class */
public final class IterableViewLike$$anon$8 extends IterableViewLike<A, Coll, This>.AbstractTransformed<A> implements IterableViewLike<A, Coll, This>.TakenWhile {
    private final /* synthetic */ IterableViewLike $outer;
    private final Function1<A, Object> pred;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public IterableViewLike$$anon$8(IterableViewLike iterableViewLike, IterableViewLike<A, Coll, This> iterableViewLike2) {
        super(iterableViewLike);
        Objects.requireNonNull(iterableViewLike);
        this.$outer = iterableViewLike;
        this.pred = iterableViewLike2;
        TraversableViewLike.TakenWhile.Cclass.$init$(this);
        IterableViewLike.TakenWhile.Cclass.$init$(this);
    }

    @Override // scala.collection.IterableViewLike.AbstractTransformed, scala.collection.IterableViewLike.Transformed, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<Object, U> function1) {
        TraversableViewLike.TakenWhile.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.IterableViewLike.Transformed, scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<A> iterator() {
        return IterableViewLike.TakenWhile.Cclass.iterator(this);
    }

    @Override // scala.collection.TraversableViewLike.TakenWhile
    public Function1<A, Object> pred() {
        return this.pred;
    }

    @Override // scala.collection.IterableViewLike.TakenWhile
    public /* synthetic */ IterableViewLike scala$collection$IterableViewLike$TakenWhile$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.TraversableViewLike.TakenWhile
    public /* synthetic */ TraversableViewLike scala$collection$TraversableViewLike$TakenWhile$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.IterableViewLike.AbstractTransformed, scala.collection.TraversableViewLike
    public final String viewIdentifier() {
        return TraversableViewLike.TakenWhile.Cclass.viewIdentifier(this);
    }
}
