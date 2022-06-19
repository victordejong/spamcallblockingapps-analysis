package scala.collection;

import java.util.Objects;
import scala.Function1;
import scala.collection.IterableViewLike;
import scala.collection.TraversableViewLike;
/* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike$$anon$3.class */
public final class IterableViewLike$$anon$3 extends IterableViewLike<A, Coll, This>.AbstractTransformed<B> implements IterableViewLike<A, Coll, This>.Mapped<B> {
    private final /* synthetic */ IterableViewLike $outer;
    private final Function1<A, B> mapping;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public IterableViewLike$$anon$3(IterableViewLike iterableViewLike, IterableViewLike<A, Coll, This> iterableViewLike2) {
        super(iterableViewLike);
        Objects.requireNonNull(iterableViewLike);
        this.$outer = iterableViewLike;
        this.mapping = iterableViewLike2;
        TraversableViewLike.Mapped.Cclass.$init$(this);
        IterableViewLike.Mapped.Cclass.$init$(this);
    }

    @Override // scala.collection.IterableViewLike.AbstractTransformed, scala.collection.IterableViewLike.Transformed, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<B, U> function1) {
        TraversableViewLike.Mapped.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.IterableViewLike.Transformed, scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<B> iterator() {
        return IterableViewLike.Mapped.Cclass.iterator(this);
    }

    @Override // scala.collection.TraversableViewLike.Mapped
    public Function1<A, B> mapping() {
        return this.mapping;
    }

    @Override // scala.collection.IterableViewLike.Mapped
    public /* synthetic */ IterableViewLike scala$collection$IterableViewLike$Mapped$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.TraversableViewLike.Mapped
    public /* synthetic */ TraversableViewLike scala$collection$TraversableViewLike$Mapped$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.IterableViewLike.AbstractTransformed, scala.collection.TraversableViewLike
    public final String viewIdentifier() {
        return TraversableViewLike.Mapped.Cclass.viewIdentifier(this);
    }
}
