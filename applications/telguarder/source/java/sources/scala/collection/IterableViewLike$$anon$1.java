package scala.collection;

import java.util.Objects;
import scala.Function1;
import scala.collection.IterableViewLike;
import scala.collection.TraversableViewLike;
/* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike$$anon$1.class */
public final class IterableViewLike$$anon$1 extends IterableViewLike<A, Coll, This>.AbstractTransformed<B> implements IterableViewLike<A, Coll, This>.Forced<B> {
    private final /* synthetic */ IterableViewLike $outer;
    private final GenSeq<B> forced;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public IterableViewLike$$anon$1(IterableViewLike iterableViewLike, IterableViewLike<A, Coll, This> iterableViewLike2) {
        super(iterableViewLike);
        Objects.requireNonNull(iterableViewLike);
        this.$outer = iterableViewLike;
        this.forced = (GenSeq) iterableViewLike2.apply();
        TraversableViewLike.Forced.Cclass.$init$(this);
        IterableViewLike.Forced.Cclass.$init$(this);
    }

    @Override // scala.collection.TraversableViewLike.Forced
    public GenSeq<B> forced() {
        return this.forced;
    }

    @Override // scala.collection.IterableViewLike.AbstractTransformed, scala.collection.IterableViewLike.Transformed, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<B, U> function1) {
        TraversableViewLike.Forced.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.IterableViewLike.Transformed, scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<B> iterator() {
        return IterableViewLike.Forced.Cclass.iterator(this);
    }

    @Override // scala.collection.IterableViewLike.Forced
    public /* synthetic */ IterableViewLike scala$collection$IterableViewLike$Forced$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.TraversableViewLike.Forced
    public /* synthetic */ TraversableViewLike scala$collection$TraversableViewLike$Forced$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.IterableViewLike.AbstractTransformed, scala.collection.TraversableViewLike
    public final String viewIdentifier() {
        return TraversableViewLike.Forced.Cclass.viewIdentifier(this);
    }
}
