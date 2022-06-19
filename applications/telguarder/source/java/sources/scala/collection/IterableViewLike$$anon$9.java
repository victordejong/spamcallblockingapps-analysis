package scala.collection;

import java.util.Objects;
import scala.Tuple2;
import scala.collection.IterableViewLike;
/* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike$$anon$9.class */
public final class IterableViewLike$$anon$9 extends IterableViewLike<A, Coll, This>.AbstractTransformed<Tuple2<A, B>> implements IterableViewLike<A, Coll, This>.Zipped<B> {
    private final /* synthetic */ IterableViewLike $outer;
    private final GenIterable<B> other;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IterableViewLike$$anon$9(IterableViewLike iterableViewLike, IterableViewLike<A, Coll, This> iterableViewLike2) {
        super(iterableViewLike);
        Objects.requireNonNull(iterableViewLike);
        this.$outer = iterableViewLike;
        this.other = iterableViewLike2;
        IterableViewLike.Zipped.Cclass.$init$(this);
    }

    @Override // scala.collection.IterableViewLike.Transformed, scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<Tuple2<A, B>> iterator() {
        return IterableViewLike.Zipped.Cclass.iterator(this);
    }

    @Override // scala.collection.IterableViewLike.Zipped
    public GenIterable<B> other() {
        return this.other;
    }

    @Override // scala.collection.IterableViewLike.Zipped
    public /* synthetic */ IterableViewLike scala$collection$IterableViewLike$Zipped$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.IterableViewLike.AbstractTransformed, scala.collection.TraversableViewLike
    public final String viewIdentifier() {
        return IterableViewLike.Zipped.Cclass.viewIdentifier(this);
    }
}
