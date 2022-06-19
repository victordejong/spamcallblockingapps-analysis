package scala.concurrent;

import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicInteger;
import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.None$;
import scala.Option;
import scala.Predef$;
import scala.Predef$ArrowAssoc$;
import scala.Tuple2;
import scala.collection.TraversableOnce;
import scala.collection.TraversableOnce$;
import scala.collection.generic.CanBuildFrom;
import scala.collection.immutable.Map;
import scala.collection.immutable.Map$;
import scala.collection.mutable.SeqLike;
import scala.runtime.BoxedUnit;
import scala.util.Try;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Future$.class */
public final class Future$ {
    public static final Future$ MODULE$ = null;
    private final Map<Class<?>, Class<?>> toBoxed;

    static {
        new Future$();
    }

    private Future$() {
        MODULE$ = this;
        Map$ Map = Predef$.MODULE$.Map();
        Predef$ predef$ = Predef$.MODULE$;
        Predef$ArrowAssoc$ predef$ArrowAssoc$ = Predef$ArrowAssoc$.MODULE$;
        Tuple2 tuple2 = new Tuple2(Predef$.MODULE$.ArrowAssoc(Boolean.TYPE), Boolean.class);
        Predef$ArrowAssoc$ predef$ArrowAssoc$2 = Predef$ArrowAssoc$.MODULE$;
        Tuple2 tuple22 = new Tuple2(Predef$.MODULE$.ArrowAssoc(Byte.TYPE), Byte.class);
        Predef$ArrowAssoc$ predef$ArrowAssoc$3 = Predef$ArrowAssoc$.MODULE$;
        Tuple2 tuple23 = new Tuple2(Predef$.MODULE$.ArrowAssoc(Character.TYPE), Character.class);
        Predef$ArrowAssoc$ predef$ArrowAssoc$4 = Predef$ArrowAssoc$.MODULE$;
        Tuple2 tuple24 = new Tuple2(Predef$.MODULE$.ArrowAssoc(Short.TYPE), Short.class);
        Predef$ArrowAssoc$ predef$ArrowAssoc$5 = Predef$ArrowAssoc$.MODULE$;
        Tuple2 tuple25 = new Tuple2(Predef$.MODULE$.ArrowAssoc(Integer.TYPE), Integer.class);
        Predef$ArrowAssoc$ predef$ArrowAssoc$6 = Predef$ArrowAssoc$.MODULE$;
        Tuple2 tuple26 = new Tuple2(Predef$.MODULE$.ArrowAssoc(Long.TYPE), Long.class);
        Predef$ArrowAssoc$ predef$ArrowAssoc$7 = Predef$ArrowAssoc$.MODULE$;
        Tuple2 tuple27 = new Tuple2(Predef$.MODULE$.ArrowAssoc(Float.TYPE), Float.class);
        Predef$ArrowAssoc$ predef$ArrowAssoc$8 = Predef$ArrowAssoc$.MODULE$;
        Tuple2 tuple28 = new Tuple2(Predef$.MODULE$.ArrowAssoc(Double.TYPE), Double.class);
        Predef$ArrowAssoc$ predef$ArrowAssoc$9 = Predef$ArrowAssoc$.MODULE$;
        this.toBoxed = (Map) Map.apply(predef$.wrapRefArray(new Tuple2[]{tuple2, tuple22, tuple23, tuple24, tuple25, tuple26, tuple27, tuple28, new Tuple2(Predef$.MODULE$.ArrowAssoc(BoxedUnit.TYPE), BoxedUnit.class)}));
    }

    public <T> Future<T> apply(Function0<T> function0, ExecutionContext executionContext) {
        return scala.concurrent.impl.Future$.MODULE$.apply(function0, executionContext);
    }

    public <T> Future<T> failed(Throwable th) {
        return Promise$.MODULE$.failed(th).future();
    }

    public <T> Future<Option<T>> find(TraversableOnce<Future<T>> traversableOnce, Function1<T, Object> function1, ExecutionContext executionContext) {
        Future<T> future;
        SeqLike buffer = traversableOnce.toBuffer();
        if (buffer.isEmpty()) {
            future = successful(None$.MODULE$);
        } else {
            Promise<T> apply = Promise$.MODULE$.apply();
            buffer.foreach(new Future$$anonfun$find$1(executionContext, new Future$$anonfun$2(function1, apply, new AtomicInteger(buffer.size()))));
            future = apply.future();
        }
        return future;
    }

    public <T> Future<T> firstCompletedOf(TraversableOnce<Future<T>> traversableOnce, ExecutionContext executionContext) {
        Promise<T> apply = Promise$.MODULE$.apply();
        traversableOnce.foreach(new Future$$anonfun$firstCompletedOf$1(executionContext, new Future$$anonfun$1(apply)));
        return apply.future();
    }

    public <T, R> Future<R> fold(TraversableOnce<Future<T>> traversableOnce, R r, Function2<R, T, R> function2, ExecutionContext executionContext) {
        return traversableOnce.isEmpty() ? successful(r) : sequence(traversableOnce, TraversableOnce$.MODULE$.OnceCanBuildFrom(), executionContext).map(new Future$$anonfun$fold$1(r, function2), executionContext);
    }

    public <T> Future<T> fromTry(Try<T> r4) {
        return Promise$.MODULE$.fromTry(r4).future();
    }

    public <T, R> Future<R> reduce(TraversableOnce<Future<T>> traversableOnce, Function2<R, T, R> function2, ExecutionContext executionContext) {
        return traversableOnce.isEmpty() ? failed(new NoSuchElementException("reduce attempted on empty collection")) : sequence(traversableOnce, TraversableOnce$.MODULE$.OnceCanBuildFrom(), executionContext).map(new Future$$anonfun$reduce$1(function2), executionContext);
    }

    public <A, M extends TraversableOnce<Object>> Future<M> sequence(M m, CanBuildFrom<M, A, M> canBuildFrom, ExecutionContext executionContext) {
        return ((Future) m.foldLeft(successful(canBuildFrom.apply(m)), new Future$$anonfun$sequence$1(executionContext))).map(new Future$$anonfun$sequence$2(), executionContext);
    }

    public <T> Future<T> successful(T t) {
        return Promise$.MODULE$.successful(t).future();
    }

    public Map<Class<?>, Class<?>> toBoxed() {
        return this.toBoxed;
    }

    public <A, B, M extends TraversableOnce<Object>> Future<M> traverse(M m, Function1<A, Future<B>> function1, CanBuildFrom<M, B, M> canBuildFrom, ExecutionContext executionContext) {
        return ((Future) m.foldLeft(successful(canBuildFrom.apply(m)), new Future$$anonfun$traverse$1(function1, executionContext))).map(new Future$$anonfun$traverse$2(), executionContext);
    }
}
