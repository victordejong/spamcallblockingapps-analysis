package scala.collection;

import java.util.Objects;
import scala.Function1;
import scala.collection.IterableViewLike;
import scala.collection.SeqViewLike;
import scala.collection.TraversableViewLike;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$$anon$8.class */
public final class SeqViewLike$$anon$8 extends SeqViewLike<A, Coll, This>.AbstractTransformed<A> implements SeqViewLike<A, Coll, This>.TakenWhile {
    private final /* synthetic */ SeqViewLike $outer;
    private volatile boolean bitmap$0;
    private final int len;
    private final Function1<A, Object> pred;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SeqViewLike$$anon$8(SeqViewLike seqViewLike, SeqViewLike<A, Coll, This> seqViewLike2) {
        super(seqViewLike);
        Objects.requireNonNull(seqViewLike);
        this.$outer = seqViewLike;
        this.pred = seqViewLike2;
        TraversableViewLike.TakenWhile.Cclass.$init$(this);
        IterableViewLike.TakenWhile.Cclass.$init$(this);
        SeqViewLike.TakenWhile.Cclass.$init$(this);
    }

    private int len$lzycompute() {
        synchronized (this) {
            if (!this.bitmap$0) {
                this.len = SeqViewLike.TakenWhile.Cclass.len(this);
                this.bitmap$0 = true;
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.len;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
    @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
    public A apply(int i) {
        return SeqViewLike.TakenWhile.Cclass.apply(this, i);
    }

    @Override // scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<Object, U> function1) {
        TraversableViewLike.TakenWhile.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<Object> iterator() {
        return IterableViewLike.TakenWhile.Cclass.iterator(this);
    }

    @Override // scala.collection.SeqViewLike.TakenWhile
    public int len() {
        return this.bitmap$0 ? this.len : len$lzycompute();
    }

    @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
    public int length() {
        return SeqViewLike.TakenWhile.Cclass.length(this);
    }

    @Override // scala.collection.TraversableViewLike.TakenWhile
    public Function1<A, Object> pred() {
        return this.pred;
    }

    @Override // scala.collection.IterableViewLike.TakenWhile
    public /* synthetic */ IterableViewLike scala$collection$IterableViewLike$TakenWhile$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.SeqViewLike.TakenWhile
    public /* synthetic */ SeqViewLike scala$collection$SeqViewLike$TakenWhile$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.TraversableViewLike.TakenWhile
    public /* synthetic */ TraversableViewLike scala$collection$TraversableViewLike$TakenWhile$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableViewLike
    public final String viewIdentifier() {
        return TraversableViewLike.TakenWhile.Cclass.viewIdentifier(this);
    }
}
