package scala.collection;

import java.util.Objects;
import scala.collection.SeqViewLike;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$$anon$12.class */
public final class SeqViewLike$$anon$12 extends SeqViewLike<A, Coll, This>.AbstractTransformed<B> implements SeqViewLike<A, Coll, This>.Patched<B> {
    private final /* synthetic */ SeqViewLike $outer;
    private volatile boolean bitmap$0;
    private final int from;
    private final GenSeq<B> patch;
    private final int replaced;
    private final int scala$collection$SeqViewLike$Patched$$plen;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SeqViewLike$$anon$12(SeqViewLike seqViewLike, int i, GenSeq genSeq, int i2) {
        super(seqViewLike);
        Objects.requireNonNull(seqViewLike);
        this.$outer = seqViewLike;
        this.from = i;
        this.patch = genSeq;
        this.replaced = i2;
        SeqViewLike.Patched.Cclass.$init$(this);
    }

    private int scala$collection$SeqViewLike$Patched$$plen$lzycompute() {
        int length;
        synchronized (this) {
            if (!this.bitmap$0) {
                length = patch().length();
                this.scala$collection$SeqViewLike$Patched$$plen = length;
                this.bitmap$0 = true;
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.scala$collection$SeqViewLike$Patched$$plen;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [B, java.lang.Object] */
    @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
    public B apply(int i) {
        return SeqViewLike.Patched.Cclass.apply(this, i);
    }

    @Override // scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.SeqViewLike.Patched
    public int from() {
        return this.from;
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<B> iterator() {
        return SeqViewLike.Patched.Cclass.iterator(this);
    }

    @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
    public int length() {
        return SeqViewLike.Patched.Cclass.length(this);
    }

    @Override // scala.collection.SeqViewLike.Patched
    public GenSeq<B> patch() {
        return this.patch;
    }

    @Override // scala.collection.SeqViewLike.Patched
    public int replaced() {
        return this.replaced;
    }

    @Override // scala.collection.SeqViewLike.Patched
    public /* synthetic */ SeqViewLike scala$collection$SeqViewLike$Patched$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.SeqViewLike.Patched
    public int scala$collection$SeqViewLike$Patched$$plen() {
        return this.bitmap$0 ? this.scala$collection$SeqViewLike$Patched$$plen : scala$collection$SeqViewLike$Patched$$plen$lzycompute();
    }

    @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableViewLike
    public final String viewIdentifier() {
        return SeqViewLike.Patched.Cclass.viewIdentifier(this);
    }
}
