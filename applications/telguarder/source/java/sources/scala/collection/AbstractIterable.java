package scala.collection;

import scala.Function1;
import scala.Function2;
import scala.Option;
import scala.Tuple2;
import scala.collection.GenIterable;
import scala.collection.Iterable;
import scala.collection.IterableLike;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenericCompanion;
import scala.collection.immutable.Stream;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u00012Q!\u0001\u0002\u0002\u0002\u001d\u0011\u0001#\u00112tiJ\f7\r^%uKJ\f'\r\\3\u000b\u0005\r!\u0011AC2pY2,7\r^5p]*\tQ!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0005!y1c\u0001\u0001\n3A\u0019!bC\u0007\u000e\u0003\tI!\u0001\u0004\u0002\u0003'\u0005\u00137\u000f\u001e:bGR$&/\u0019<feN\f'\r\\3\u0011\u00059yA\u0002\u0001\u0003\u0007!\u0001!)\u0019A\t\u0003\u0003\u0005\u000b\"A\u0005\f\u0011\u0005M!R\"\u0001\u0003\n\u0005U!!a\u0002(pi\"Lgn\u001a\t\u0003']I!\u0001\u0007\u0003\u0003\u0007\u0005s\u0017\u0010E\u0002\u000b55I!a\u0007\u0002\u0003\u0011%#XM]1cY\u0016DQ!\b\u0001\u0005\u0002y\ta\u0001P5oSRtD#A\u0010\u0011\u0007)\u0001Q\u0002")
/* loaded from: classes3-dex2jar.jar:scala/collection/AbstractIterable.class */
public abstract class AbstractIterable<A> extends AbstractTraversable<A> implements Iterable<A> {
    public AbstractIterable() {
        GenIterable.Cclass.$init$(this);
        IterableLike.Cclass.$init$(this);
        Iterable.Cclass.$init$(this);
    }

    @Override // scala.collection.IterableLike, scala.Equals
    public boolean canEqual(Object obj) {
        return IterableLike.Cclass.canEqual(this, obj);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<Iterable> companion() {
        return Iterable.Cclass.companion(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <B> void copyToArray(Object obj, int i, int i2) {
        IterableLike.Cclass.copyToArray(this, obj, i, i2);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public Object drop(int i) {
        return IterableLike.Cclass.drop(this, i);
    }

    @Override // scala.collection.IterableLike
    public Object dropRight(int i) {
        return IterableLike.Cclass.dropRight(this, i);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean exists(Function1<A, Object> function1) {
        return IterableLike.Cclass.exists(this, function1);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Option<A> find(Function1<A, Object> function1) {
        return IterableLike.Cclass.find(this, function1);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <B> B foldRight(B b, Function2<A, B, B> function2) {
        return (B) IterableLike.Cclass.foldRight(this, b, function2);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean forall(Function1<A, Object> function1) {
        return IterableLike.Cclass.forall(this, function1);
    }

    @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<A, U> function1) {
        IterableLike.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.IterableLike
    public Iterator<Iterable<A>> grouped(int i) {
        return IterableLike.Cclass.grouped(this, i);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public A head() {
        return (A) IterableLike.Cclass.head(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        return IterableLike.Cclass.isEmpty(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <B> B reduceRight(Function2<A, B, B> function2) {
        return (B) IterableLike.Cclass.reduceRight(this, function2);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <B> boolean sameElements(GenIterable<B> genIterable) {
        return IterableLike.Cclass.sameElements(this, genIterable);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public Iterable<A> seq() {
        return Iterable.Cclass.seq(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public Object slice(int i, int i2) {
        return IterableLike.Cclass.slice(this, i, i2);
    }

    @Override // scala.collection.IterableLike
    public Iterator<Iterable<A>> sliding(int i) {
        return IterableLike.Cclass.sliding(this, i);
    }

    @Override // scala.collection.IterableLike
    public Iterator<Iterable<A>> sliding(int i, int i2) {
        return IterableLike.Cclass.sliding(this, i, i2);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public Object take(int i) {
        return IterableLike.Cclass.take(this, i);
    }

    @Override // scala.collection.IterableLike
    public Object takeRight(int i) {
        return IterableLike.Cclass.takeRight(this, i);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public Object takeWhile(Function1 function1) {
        return IterableLike.Cclass.takeWhile(this, function1);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public Iterable<A> thisCollection() {
        return IterableLike.Cclass.thisCollection(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public Iterable toCollection(Object obj) {
        return IterableLike.Cclass.toCollection(this, obj);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Iterable<A> toIterable() {
        return IterableLike.Cclass.toIterable(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Iterator<A> toIterator() {
        return IterableLike.Cclass.toIterator(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Stream<A> toStream() {
        return IterableLike.Cclass.toStream(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public Object view() {
        return IterableLike.Cclass.view(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public IterableView<A, Iterable<A>> view(int i, int i2) {
        return IterableLike.Cclass.view(this, i, i2);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <A1, B, That> That zip(GenIterable<B> genIterable, CanBuildFrom<Iterable<A>, Tuple2<A1, B>, That> canBuildFrom) {
        return (That) IterableLike.Cclass.zip(this, genIterable, canBuildFrom);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <B, A1, That> That zipAll(GenIterable<B> genIterable, A1 a1, B b, CanBuildFrom<Iterable<A>, Tuple2<A1, B>, That> canBuildFrom) {
        return (That) IterableLike.Cclass.zipAll(this, genIterable, a1, b, canBuildFrom);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <A1, That> That zipWithIndex(CanBuildFrom<Iterable<A>, Tuple2<A1, Object>, That> canBuildFrom) {
        return (That) IterableLike.Cclass.zipWithIndex(this, canBuildFrom);
    }
}
