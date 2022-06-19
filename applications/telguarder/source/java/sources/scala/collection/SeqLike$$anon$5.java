package scala.collection;

import scala.collection.IndexedSeq;
import scala.collection.IndexedSeqLike;
import scala.collection.generic.GenericCompanion;
import scala.collection.mutable.Buffer;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqLike$$anon$5.class */
public final class SeqLike$$anon$5 extends AbstractSeq<B> implements IndexedSeq<B> {
    private final Object[] Warr;
    private final int delta;
    private final int done;

    /* renamed from: i */
    private int f1524i;
    private final int length;
    private final Iterator<B> wit;

    /* JADX WARN: Multi-variable type inference failed */
    public SeqLike$$anon$5(Seq seq, int i, int i2, boolean z) {
        IndexedSeqLike.Cclass.$init$(this);
        IndexedSeq.Cclass.$init$(this);
        int i3 = i2 - i;
        this.Warr = new Object[i3];
        this.delta = z ? 1 : -1;
        this.done = z ? i3 : -1;
        this.wit = seq.iterator().drop(i);
        this.f1524i = z ? 0 : i3 - 1;
        while (m185i() != this.done) {
            this.Warr[m185i()] = wit().next();
            i_$eq(m185i() + this.delta);
        }
        this.length = i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // scala.collection.GenSeqLike
    public B apply(int i) {
        return this.Warr[i];
    }

    @Override // scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<IndexedSeq> companion() {
        return IndexedSeq.Cclass.companion(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike
    public int hashCode() {
        return IndexedSeqLike.Cclass.hashCode(this);
    }

    /* renamed from: i */
    public int m185i() {
        return this.f1524i;
    }

    public void i_$eq(int i) {
        this.f1524i = i;
    }

    @Override // scala.collection.AbstractSeq, scala.PartialFunction
    public /* bridge */ /* synthetic */ boolean isDefinedAt(Object obj) {
        return isDefinedAt(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<B> iterator() {
        return IndexedSeqLike.Cclass.iterator(this);
    }

    @Override // scala.collection.GenSeqLike
    public int length() {
        return this.length;
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public IndexedSeq<B> seq() {
        return IndexedSeq.Cclass.seq(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public IndexedSeq<B> thisCollection() {
        return IndexedSeqLike.Cclass.thisCollection(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <A1> Buffer<A1> toBuffer() {
        return IndexedSeqLike.Cclass.toBuffer(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public IndexedSeq toCollection(Object obj) {
        return IndexedSeqLike.Cclass.toCollection(this, obj);
    }

    public Iterator<B> wit() {
        return this.wit;
    }
}
