package scala.collection;

import java.util.Objects;
import scala.Function1;
import scala.collection.TraversableViewLike;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$$anon$3.class */
public final class TraversableViewLike$$anon$3 extends TraversableViewLike<A, Coll, This>.AbstractTransformed<B> implements TraversableViewLike<A, Coll, This>.Mapped<B> {
    private final /* synthetic */ TraversableViewLike $outer;
    private final Function1<A, B> mapping;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public TraversableViewLike$$anon$3(TraversableViewLike traversableViewLike, TraversableViewLike<A, Coll, This> traversableViewLike2) {
        super(traversableViewLike);
        Objects.requireNonNull(traversableViewLike);
        this.$outer = traversableViewLike;
        this.mapping = traversableViewLike2;
        TraversableViewLike.Mapped.Cclass.$init$(this);
    }

    @Override // scala.collection.TraversableViewLike.Transformed, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<B, U> function1) {
        TraversableViewLike.Mapped.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.TraversableViewLike.Mapped
    public Function1<A, B> mapping() {
        return this.mapping;
    }

    @Override // scala.collection.TraversableViewLike.Mapped
    public /* synthetic */ TraversableViewLike scala$collection$TraversableViewLike$Mapped$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.TraversableViewLike.AbstractTransformed, scala.collection.TraversableViewLike
    public final String viewIdentifier() {
        return TraversableViewLike.Mapped.Cclass.viewIdentifier(this);
    }
}
