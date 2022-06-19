package scala.collection.mutable;

import scala.Function1;
import scala.collection.generic.GenericCompanion;
import scala.collection.mutable.Cloneable;
import scala.collection.mutable.Iterable;
import scala.collection.mutable.Seq;
import scala.collection.mutable.SeqLike;
import scala.collection.mutable.Traversable;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.mutable.ParSeq;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
@ScalaSignature(bytes = "\u0006\u0001\t2Q!\u0001\u0002\u0002\u0002%\u00111\"\u00112tiJ\f7\r^*fc*\u00111\u0001B\u0001\b[V$\u0018M\u00197f\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\fG.Y\u0002\u0001+\tQ\u0001cE\u0002\u0001\u0017i\u00012\u0001D\u0007\u000f\u001b\u0005!\u0011BA\u0001\u0005!\ty\u0001\u0003\u0004\u0001\u0005\u000bE\u0001!\u0019\u0001\n\u0003\u0003\u0005\u000b\"aE\f\u0011\u0005Q)R\"\u0001\u0004\n\u0005Y1!a\u0002(pi\"Lgn\u001a\t\u0003)aI!!\u0007\u0004\u0003\u0007\u0005s\u0017\u0010E\u0002\u001c99i\u0011AA\u0005\u0003;\t\u00111aU3r\u0011\u0015y\u0002\u0001\"\u0001!\u0003\u0019a\u0014N\\5u}Q\t\u0011\u0005E\u0002\u001c\u00019\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/AbstractSeq.class */
public abstract class AbstractSeq<A> extends scala.collection.AbstractSeq<A> implements Seq<A> {
    public AbstractSeq() {
        Traversable.Cclass.$init$(this);
        Iterable.Cclass.$init$(this);
        Cloneable.Cclass.$init$(this);
        SeqLike.Cclass.$init$(this);
        Seq.Cclass.$init$(this);
    }

    public Object clone() {
        return Cloneable.Cclass.clone(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<Seq> companion() {
        return Seq.Cclass.companion(this);
    }

    @Override // scala.collection.AbstractSeq, scala.PartialFunction
    public /* bridge */ /* synthetic */ boolean isDefinedAt(Object obj) {
        return isDefinedAt(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    public Combiner<A, ParSeq<A>> parCombiner() {
        return SeqLike.Cclass.parCombiner(this);
    }

    @Override // scala.collection.mutable.Cloneable
    public /* synthetic */ Object scala$collection$mutable$Cloneable$$super$clone() {
        return super.clone();
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public Seq<A> seq() {
        return Seq.Cclass.seq(this);
    }

    @Override // scala.collection.mutable.SeqLike
    public SeqLike<A, Seq<A>> transform(Function1<A, A> function1) {
        return SeqLike.Cclass.transform(this, function1);
    }
}
