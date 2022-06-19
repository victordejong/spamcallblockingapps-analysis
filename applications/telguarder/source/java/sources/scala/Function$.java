package scala;

import scala.collection.Seq;
/* loaded from: classes3-dex2jar.jar:scala/Function$.class */
public final class Function$ {
    public static final Function$ MODULE$ = null;

    static {
        new Function$();
    }

    private Function$() {
        MODULE$ = this;
    }

    public <a> Function1<a, a> chain(Seq<Function1<a, a>> seq) {
        return new Function$$anonfun$chain$1(seq);
    }

    /* renamed from: const */
    public <T, U> T m5956const(T t, U u) {
        return t;
    }

    public <a1, a2, b> Function1<Tuple2<a1, a2>, b> tupled(Function2<a1, a2, b> function2) {
        return new Function$$anonfun$tupled$1(function2);
    }

    public <a1, a2, a3, b> Function1<Tuple3<a1, a2, a3>, b> tupled(Function3<a1, a2, a3, b> function3) {
        return new Function$$anonfun$tupled$2(function3);
    }

    public <a1, a2, a3, a4, b> Function1<Tuple4<a1, a2, a3, a4>, b> tupled(Function4<a1, a2, a3, a4, b> function4) {
        return new Function$$anonfun$tupled$3(function4);
    }

    public <a1, a2, a3, a4, a5, b> Function1<Tuple5<a1, a2, a3, a4, a5>, b> tupled(Function5<a1, a2, a3, a4, a5, b> function5) {
        return new Function$$anonfun$tupled$4(function5);
    }

    public <a1, a2, b> Function2<a1, a2, b> uncurried(Function1<a1, Function1<a2, b>> function1) {
        return new Function$$anonfun$uncurried$1(function1);
    }

    /* renamed from: uncurried */
    public <a1, a2, a3, b> Function3<a1, a2, a3, b> m5957uncurried(Function1<a1, Function1<a2, Function1<a3, b>>> function1) {
        return new Function$$anonfun$uncurried$2(function1);
    }

    /* renamed from: uncurried */
    public <a1, a2, a3, a4, b> Function4<a1, a2, a3, a4, b> m5958uncurried(Function1<a1, Function1<a2, Function1<a3, Function1<a4, b>>>> function1) {
        return new Function$$anonfun$uncurried$3(function1);
    }

    /* renamed from: uncurried */
    public <a1, a2, a3, a4, a5, b> Function5<a1, a2, a3, a4, a5, b> m5959uncurried(Function1<a1, Function1<a2, Function1<a3, Function1<a4, Function1<a5, b>>>>> function1) {
        return new Function$$anonfun$uncurried$4(function1);
    }

    public <T, R> PartialFunction<T, R> unlift(Function1<T, Option<R>> function1) {
        return PartialFunction$.MODULE$.unlifted(function1);
    }

    public <a1, a2, b> Function2<a1, a2, b> untupled(Function1<Tuple2<a1, a2>, b> function1) {
        return new Function$$anonfun$untupled$1(function1);
    }

    /* renamed from: untupled */
    public <a1, a2, a3, b> Function3<a1, a2, a3, b> m5960untupled(Function1<Tuple3<a1, a2, a3>, b> function1) {
        return new Function$$anonfun$untupled$2(function1);
    }

    /* renamed from: untupled */
    public <a1, a2, a3, a4, b> Function4<a1, a2, a3, a4, b> m5961untupled(Function1<Tuple4<a1, a2, a3, a4>, b> function1) {
        return new Function$$anonfun$untupled$3(function1);
    }

    /* renamed from: untupled */
    public <a1, a2, a3, a4, a5, b> Function5<a1, a2, a3, a4, a5, b> m5962untupled(Function1<Tuple5<a1, a2, a3, a4, a5>, b> function1) {
        return new Function$$anonfun$untupled$4(function1);
    }
}
