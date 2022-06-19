package scala.collection;

import java.util.Objects;
import scala.Function1;
import scala.collection.TraversableViewLike;
import scala.collection.generic.SliceInterval;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$$anon$6.class */
public final class TraversableViewLike$$anon$6 extends TraversableViewLike<A, Coll, This>.AbstractTransformed<A> implements TraversableViewLike<A, Coll, This>.Sliced {
    private final /* synthetic */ TraversableViewLike $outer;
    private final SliceInterval endpoints;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public TraversableViewLike$$anon$6(TraversableViewLike traversableViewLike, TraversableViewLike<A, Coll, This> traversableViewLike2) {
        super(traversableViewLike);
        Objects.requireNonNull(traversableViewLike);
        this.$outer = traversableViewLike;
        this.endpoints = traversableViewLike2;
        TraversableViewLike.Sliced.Cclass.$init$(this);
    }

    @Override // scala.collection.TraversableViewLike.Sliced
    public SliceInterval endpoints() {
        return this.endpoints;
    }

    @Override // scala.collection.TraversableViewLike.Transformed, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<A, U> function1) {
        TraversableViewLike.Sliced.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.TraversableViewLike.Sliced
    public int from() {
        return TraversableViewLike.Sliced.Cclass.from(this);
    }

    @Override // scala.collection.TraversableViewLike.Sliced
    public /* synthetic */ TraversableViewLike scala$collection$TraversableViewLike$Sliced$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.TraversableViewLike.Sliced
    public int until() {
        return TraversableViewLike.Sliced.Cclass.until(this);
    }

    @Override // scala.collection.TraversableViewLike.AbstractTransformed, scala.collection.TraversableViewLike
    public final String viewIdentifier() {
        return TraversableViewLike.Sliced.Cclass.viewIdentifier(this);
    }
}
