package scala.collection.mutable;

import scala.collection.generic.GenericCompanion;
import scala.collection.mutable.Iterable;
import scala.collection.mutable.Traversable;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.mutable.ParIterable;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\t2Q!\u0001\u0002\u0002\u0002%\u0011\u0001#\u00112tiJ\f7\r^%uKJ\f'\r\\3\u000b\u0005\r!\u0011aB7vi\u0006\u0014G.\u001a\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\f7\u0001A\u000b\u0003\u0015A\u00192\u0001A\u0006\u001b!\raQBD\u0007\u0002\t%\u0011\u0011\u0001\u0002\t\u0003\u001fAa\u0001\u0001B\u0003\u0012\u0001\t\u0007!CA\u0001B#\t\u0019r\u0003\u0005\u0002\u0015+5\ta!\u0003\u0002\u0017\r\t9aj\u001c;iS:<\u0007C\u0001\u000b\u0019\u0013\tIbAA\u0002B]f\u00042a\u0007\u000f\u000f\u001b\u0005\u0011\u0011BA\u000f\u0003\u0005!IE/\u001a:bE2,\u0007\"B\u0010\u0001\t\u0003\u0001\u0013A\u0002\u001fj]&$h\bF\u0001\"!\rY\u0002A\u0004")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/AbstractIterable.class */
public abstract class AbstractIterable<A> extends scala.collection.AbstractIterable<A> implements Iterable<A> {
    public AbstractIterable() {
        Traversable.Cclass.$init$(this);
        Iterable.Cclass.$init$(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<Iterable> companion() {
        return Iterable.Cclass.companion(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    public Combiner<A, ParIterable<A>> parCombiner() {
        return Iterable.Cclass.parCombiner(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public Iterable<A> seq() {
        return Iterable.Cclass.seq(this);
    }
}
