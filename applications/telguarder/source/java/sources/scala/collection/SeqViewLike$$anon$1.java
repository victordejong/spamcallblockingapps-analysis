package scala.collection;

import java.util.Objects;
import scala.Function1;
import scala.collection.IterableViewLike;
import scala.collection.SeqViewLike;
import scala.collection.TraversableViewLike;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$$anon$1.class */
public final class SeqViewLike$$anon$1 extends SeqViewLike<A, Coll, This>.AbstractTransformed<B> implements SeqViewLike<A, Coll, This>.Forced<B> {
    private final /* synthetic */ SeqViewLike $outer;
    private final GenSeq<B> forced;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SeqViewLike$$anon$1(SeqViewLike seqViewLike, SeqViewLike<A, Coll, This> seqViewLike2) {
        super(seqViewLike);
        Objects.requireNonNull(seqViewLike);
        this.$outer = seqViewLike;
        this.forced = (GenSeq) seqViewLike2.apply();
        TraversableViewLike.Forced.Cclass.$init$(this);
        IterableViewLike.Forced.Cclass.$init$(this);
        SeqViewLike.Forced.Cclass.$init$(this);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [B, java.lang.Object] */
    @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
    public B apply(int i) {
        return SeqViewLike.Forced.Cclass.apply(this, i);
    }

    @Override // scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.TraversableViewLike.Forced
    public GenSeq<B> forced() {
        return this.forced;
    }

    @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<B, U> function1) {
        TraversableViewLike.Forced.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<B> iterator() {
        return IterableViewLike.Forced.Cclass.iterator(this);
    }

    @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
    public int length() {
        return SeqViewLike.Forced.Cclass.length(this);
    }

    @Override // scala.collection.IterableViewLike.Forced
    public /* synthetic */ IterableViewLike scala$collection$IterableViewLike$Forced$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.SeqViewLike.Forced
    public /* synthetic */ SeqViewLike scala$collection$SeqViewLike$Forced$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.TraversableViewLike.Forced
    public /* synthetic */ TraversableViewLike scala$collection$TraversableViewLike$Forced$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableViewLike
    public final String viewIdentifier() {
        return TraversableViewLike.Forced.Cclass.viewIdentifier(this);
    }
}
