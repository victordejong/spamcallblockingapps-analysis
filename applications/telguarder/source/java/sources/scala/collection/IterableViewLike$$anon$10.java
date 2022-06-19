package scala.collection;

import java.util.Objects;
import scala.Tuple2;
import scala.collection.IterableViewLike;
/* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike$$anon$10.class */
public final class IterableViewLike$$anon$10 extends IterableViewLike<A, Coll, This>.AbstractTransformed<Tuple2<A1, B>> implements IterableViewLike<A, Coll, This>.ZippedAll<A1, B> {
    private final /* synthetic */ IterableViewLike $outer;
    private final GenIterable<B> other;
    private final B thatElem;
    private final A1 thisElem;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public IterableViewLike$$anon$10(IterableViewLike iterableViewLike, GenIterable genIterable, Object obj, Object obj2) {
        super(iterableViewLike);
        Objects.requireNonNull(iterableViewLike);
        this.$outer = iterableViewLike;
        this.other = genIterable;
        this.thisElem = obj;
        this.thatElem = obj2;
        IterableViewLike.ZippedAll.Cclass.$init$(this);
    }

    @Override // scala.collection.IterableViewLike.Transformed, scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<Tuple2<A1, B>> iterator() {
        return IterableViewLike.ZippedAll.Cclass.iterator(this);
    }

    @Override // scala.collection.IterableViewLike.ZippedAll
    public GenIterable<B> other() {
        return this.other;
    }

    @Override // scala.collection.IterableViewLike.ZippedAll
    public /* synthetic */ IterableViewLike scala$collection$IterableViewLike$ZippedAll$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.IterableViewLike.ZippedAll
    public B thatElem() {
        return this.thatElem;
    }

    @Override // scala.collection.IterableViewLike.ZippedAll
    public A1 thisElem() {
        return this.thisElem;
    }

    @Override // scala.collection.IterableViewLike.AbstractTransformed, scala.collection.TraversableViewLike
    public final String viewIdentifier() {
        return IterableViewLike.ZippedAll.Cclass.viewIdentifier(this);
    }
}
