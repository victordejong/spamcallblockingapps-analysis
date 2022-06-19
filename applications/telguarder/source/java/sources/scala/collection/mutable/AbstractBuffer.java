package scala.collection.mutable;

import scala.collection.GenTraversableOnce;
import scala.collection.Seq;
import scala.collection.TraversableOnce;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.Growable;
import scala.collection.generic.Shrinkable;
import scala.collection.generic.Shrinkable$$anonfun$$minus$minus$eq$1;
import scala.collection.generic.Subtractable;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.BufferLike;
import scala.collection.script.Message;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
@ScalaSignature(bytes = "\u0006\u0001\t2Q!\u0001\u0002\u0002\u0002%\u0011a\"\u00112tiJ\f7\r\u001e\"vM\u001a,'O\u0003\u0002\u0004\t\u00059Q.\u001e;bE2,'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u0001QC\u0001\u0006\u0012'\r\u00011b\u0007\t\u0004\u00195yQ\"\u0001\u0002\n\u00059\u0011!aC!cgR\u0014\u0018m\u0019;TKF\u0004\"\u0001E\t\r\u0001\u0011)!\u0003\u0001b\u0001'\t\t\u0011)\u0005\u0002\u00151A\u0011QCF\u0007\u0002\r%\u0011qC\u0002\u0002\b\u001d>$\b.\u001b8h!\t)\u0012$\u0003\u0002\u001b\r\t\u0019\u0011I\\=\u0011\u00071ar\"\u0003\u0002\u001e\u0005\t1!)\u001e4gKJDQa\b\u0001\u0005\u0002\u0001\na\u0001P5oSRtD#A\u0011\u0011\u00071\u0001q\u0002")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/AbstractBuffer.class */
public abstract class AbstractBuffer<A> extends AbstractSeq<A> implements Buffer<A> {
    public AbstractBuffer() {
        Growable.Cclass.$init$(this);
        Shrinkable.Cclass.$init$(this);
        Subtractable.Cclass.$init$(this);
        BufferLike.Cclass.$init$(this);
        Buffer.Cclass.$init$(this);
    }

    @Override // scala.collection.mutable.BufferLike, scala.collection.script.Scriptable
    public void $less$less(Message<A> message) {
        BufferLike.Cclass.$less$less(this, message);
    }

    @Override // scala.collection.mutable.BufferLike, scala.collection.generic.Subtractable
    public Buffer<A> $minus(A a) {
        Buffer<A> $minus$eq;
        $minus$eq = clone().$minus$eq(a);
        return $minus$eq;
    }

    @Override // scala.collection.mutable.BufferLike, scala.collection.generic.Subtractable
    public Buffer<A> $minus(A a, A a2, Seq<A> seq) {
        return BufferLike.Cclass.$minus(this, a, a2, seq);
    }

    @Override // scala.collection.generic.Shrinkable
    public Shrinkable<A> $minus$eq(A a, A a2, Seq<A> seq) {
        return Shrinkable.Cclass.$minus$eq(this, a, a2, seq);
    }

    @Override // scala.collection.mutable.BufferLike, scala.collection.generic.Shrinkable
    public Buffer $minus$eq(Object obj) {
        return BufferLike.Cclass.$minus$eq(this, obj);
    }

    @Override // scala.collection.mutable.BufferLike, scala.collection.generic.Subtractable
    public Buffer<A> $minus$minus(GenTraversableOnce<A> genTraversableOnce) {
        return BufferLike.Cclass.$minus$minus(this, genTraversableOnce);
    }

    @Override // scala.collection.generic.Shrinkable
    public Shrinkable<A> $minus$minus$eq(TraversableOnce<A> traversableOnce) {
        return traversableOnce.foreach(new Shrinkable$$anonfun$$minus$minus$eq$1(this));
    }

    @Override // scala.collection.generic.Growable
    public Growable<A> $plus$eq(A a, A a2, Seq<A> seq) {
        Growable<A> $plus$plus$eq;
        $plus$plus$eq = $plus$eq((AbstractBuffer<A>) a).$plus$eq(a2).$plus$plus$eq(seq);
        return $plus$plus$eq;
    }

    @Override // scala.collection.mutable.BufferLike
    public Buffer<A> $plus$plus(GenTraversableOnce<A> genTraversableOnce) {
        return BufferLike.Cclass.$plus$plus(this, genTraversableOnce);
    }

    @Override // scala.collection.generic.Growable
    public Growable<A> $plus$plus$eq(TraversableOnce<A> traversableOnce) {
        return Growable.Cclass.$plus$plus$eq(this, traversableOnce);
    }

    @Override // scala.collection.mutable.BufferLike
    public Buffer $plus$plus$eq$colon(TraversableOnce traversableOnce) {
        return insertAll(0, traversableOnce.toTraversable());
    }

    @Override // scala.collection.mutable.BufferLike
    public void append(Seq<A> seq) {
        BufferLike.Cclass.append(this, seq);
    }

    @Override // scala.collection.mutable.BufferLike
    public void appendAll(TraversableOnce<A> traversableOnce) {
        BufferLike.Cclass.appendAll(this, traversableOnce);
    }

    @Override // scala.collection.mutable.AbstractSeq, scala.collection.mutable.Cloneable
    public Buffer<A> clone() {
        return BufferLike.Cclass.clone(this);
    }

    @Override // scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<Buffer> companion() {
        return Buffer.Cclass.companion(this);
    }

    @Override // scala.collection.mutable.BufferLike
    public void insert(int i, Seq<A> seq) {
        BufferLike.Cclass.insert(this, i, seq);
    }

    @Override // scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.PartialFunction
    public /* bridge */ /* synthetic */ boolean isDefinedAt(Object obj) {
        return isDefinedAt(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.mutable.BufferLike
    public void prepend(Seq<A> seq) {
        BufferLike.Cclass.prepend(this, seq);
    }

    @Override // scala.collection.mutable.BufferLike
    public void prependAll(TraversableOnce<A> traversableOnce) {
        BufferLike.Cclass.prependAll(this, traversableOnce);
    }

    @Override // scala.collection.mutable.BufferLike
    public Seq<A> readOnly() {
        return BufferLike.Cclass.readOnly(this);
    }

    @Override // scala.collection.mutable.BufferLike
    public void remove(int i, int i2) {
        BufferLike.Cclass.remove(this, i, i2);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    public /* bridge */ /* synthetic */ Subtractable repr() {
        return (Subtractable) repr();
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
    public String stringPrefix() {
        return BufferLike.Cclass.stringPrefix(this);
    }

    @Override // scala.collection.mutable.BufferLike
    public void trimEnd(int i) {
        BufferLike.Cclass.trimEnd(this, i);
    }

    @Override // scala.collection.mutable.BufferLike
    public void trimStart(int i) {
        BufferLike.Cclass.trimStart(this, i);
    }
}
