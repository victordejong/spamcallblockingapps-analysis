package scala.collection;

import java.util.Objects;
import scala.collection.SeqViewLike;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$$anon$11.class */
public final class SeqViewLike$$anon$11 extends SeqViewLike<A, Coll, This>.AbstractTransformed<A> implements SeqViewLike<A, Coll, This>.Reversed {
    private final /* synthetic */ SeqViewLike $outer;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SeqViewLike$$anon$11(SeqViewLike<A, Coll, This> seqViewLike) {
        super(seqViewLike);
        Objects.requireNonNull(seqViewLike);
        this.$outer = seqViewLike;
        SeqViewLike.Reversed.Cclass.$init$(this);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
    @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
    public A apply(int i) {
        return SeqViewLike.Reversed.Cclass.apply(this, i);
    }

    @Override // scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<A> iterator() {
        return SeqViewLike.Reversed.Cclass.iterator(this);
    }

    @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
    public int length() {
        return SeqViewLike.Reversed.Cclass.length(this);
    }

    @Override // scala.collection.SeqViewLike.Reversed
    public /* synthetic */ SeqViewLike scala$collection$SeqViewLike$Reversed$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableViewLike
    public final String viewIdentifier() {
        return SeqViewLike.Reversed.Cclass.viewIdentifier(this);
    }
}
