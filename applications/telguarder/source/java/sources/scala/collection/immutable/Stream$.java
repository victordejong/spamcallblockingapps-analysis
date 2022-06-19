package scala.collection.immutable;

import scala.Function0;
import scala.Function1;
import scala.PartialFunction;
import scala.Predef$;
import scala.Serializable;
import scala.collection.Seq;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.SeqFactory;
import scala.collection.immutable.Stream;
import scala.collection.mutable.Builder;
import scala.math.Integral;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stream$.class */
public final class Stream$ extends SeqFactory<Stream> implements Serializable {
    public static final Stream$ MODULE$ = null;

    static {
        new Stream$();
    }

    private Stream$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    @Override // scala.collection.generic.GenericCompanion
    public <A> Stream<A> apply(Seq<A> seq) {
        return seq.toStream();
    }

    public <A> CanBuildFrom<Stream<?>, A, Stream<A>> canBuildFrom() {
        return new Stream.StreamCanBuildFrom();
    }

    public <A, B, That> Stream.Cons<B> collectedTail(B b, Stream<A> stream, PartialFunction<A, B> partialFunction, CanBuildFrom<Stream<A>, B, That> canBuildFrom) {
        Stream$cons$ stream$cons$ = Stream$cons$.MODULE$;
        return new Stream.Cons<>(b, new Stream$$anonfun$collectedTail$1(stream, partialFunction, canBuildFrom));
    }

    public <A> Stream.ConsWrapper<A> consWrapper(Function0<Stream<A>> function0) {
        return new Stream.ConsWrapper<>(function0);
    }

    public <A> Stream<A> continually(Function0<A> function0) {
        Stream$cons$ stream$cons$ = Stream$cons$.MODULE$;
        return new Stream.Cons(function0.apply(), new Stream$$anonfun$continually$1(function0));
    }

    @Override // scala.collection.generic.GenericCompanion
    public <A> Stream<A> empty() {
        return Stream$Empty$.MODULE$;
    }

    @Override // scala.collection.generic.GenTraversableFactory
    public <A> Stream<A> fill(int i, Function0<A> function0) {
        Stream$Empty$ stream$Empty$;
        if (i <= 0) {
            stream$Empty$ = Stream$Empty$.MODULE$;
        } else {
            Stream$cons$ stream$cons$ = Stream$cons$.MODULE$;
            stream$Empty$ = new Stream.Cons(function0.apply(), new Stream$$anonfun$fill$1(i, function0));
        }
        return stream$Empty$;
    }

    public <A> Stream.Cons<A> filteredTail(Stream<A> stream, Function1<A, Object> function1) {
        Stream$cons$ stream$cons$ = Stream$cons$.MODULE$;
        return new Stream.Cons<>(stream.head(), new Stream$$anonfun$filteredTail$1(stream, function1));
    }

    public Stream<Object> from(int i) {
        return from(i, 1);
    }

    public Stream<Object> from(int i, int i2) {
        Stream$cons$ stream$cons$ = Stream$cons$.MODULE$;
        return new Stream.Cons(BoxesRunTime.boxToInteger(i), new Stream$$anonfun$from$1(i, i2));
    }

    @Override // scala.collection.generic.GenTraversableFactory
    public <A> Stream<A> iterate(A a, int i, Function1<A, A> function1) {
        return iterate(a, function1).take(i);
    }

    public <A> Stream<A> iterate(A a, Function1<A, A> function1) {
        Stream$cons$ stream$cons$ = Stream$cons$.MODULE$;
        return new Stream.Cons(a, new Stream$$anonfun$iterate$1(a, function1));
    }

    @Override // scala.collection.generic.GenericCompanion
    public <A> Builder<A, Stream<A>> newBuilder() {
        return new Stream.StreamBuilder();
    }

    @Override // scala.collection.generic.GenTraversableFactory
    public <T> Stream<T> range(T t, T t2, T t3, Integral<T> integral) {
        Stream$Empty$ stream$Empty$;
        Predef$ predef$ = Predef$.MODULE$;
        Integral<T> integral2 = integral;
        if (integral2.mkOrderingOps(t3).$less(integral2.zero()) ? integral2.mkOrderingOps(t).$less$eq(t2) : integral2.mkOrderingOps(t2).$less$eq(t)) {
            stream$Empty$ = Stream$Empty$.MODULE$;
        } else {
            Stream$cons$ stream$cons$ = Stream$cons$.MODULE$;
            stream$Empty$ = new Stream.Cons(t, new Stream$$anonfun$range$1(t, t2, t3, integral, integral2));
        }
        return stream$Empty$;
    }

    public final Stream scala$collection$immutable$Stream$$loop$4(int i, int i2, Function1 function1) {
        Stream$Empty$ stream$Empty$;
        if (i >= i2) {
            stream$Empty$ = Stream$Empty$.MODULE$;
        } else {
            Stream$cons$ stream$cons$ = Stream$cons$.MODULE$;
            stream$Empty$ = new Stream.Cons(function1.apply(BoxesRunTime.boxToInteger(i)), new Stream$$anonfun$scala$collection$immutable$Stream$$loop$4$1(i2, function1, i));
        }
        return stream$Empty$;
    }

    @Override // scala.collection.generic.GenTraversableFactory
    public <A> Stream<A> tabulate(int i, Function1<Object, A> function1) {
        return scala$collection$immutable$Stream$$loop$4(0, i, function1);
    }
}
