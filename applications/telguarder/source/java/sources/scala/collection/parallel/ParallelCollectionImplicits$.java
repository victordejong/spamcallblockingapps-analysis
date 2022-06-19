package scala.collection.parallel;

import scala.Predef$;
import scala.Tuple2;
import scala.collection.GenTraversableOnce;
import scala.collection.Set;
import scala.collection.Set$;
import scala.collection.generic.CanBuildFrom;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParallelCollectionImplicits$.class */
public final class ParallelCollectionImplicits$ {
    public static final ParallelCollectionImplicits$ MODULE$ = null;

    static {
        new ParallelCollectionImplicits$();
    }

    private ParallelCollectionImplicits$() {
        MODULE$ = this;
    }

    public <From, Elem, To> Object factory2ops(CanBuildFrom<From, Elem, To> canBuildFrom) {
        return new ParallelCollectionImplicits$$anon$4(canBuildFrom);
    }

    public ThrowableOps throwable2ops(Throwable th) {
        return new ThrowableOps(th) { // from class: scala.collection.parallel.ParallelCollectionImplicits$$anon$1
            private final Throwable self$1;

            {
                this.self$1 = th;
            }

            /* JADX WARN: Type inference failed for: r2v14, types: [scala.collection.Set] */
            /* JADX WARN: Type inference failed for: r2v9, types: [scala.collection.Set] */
            @Override // scala.collection.parallel.ThrowableOps
            public Throwable alongWith(Throwable th2) {
                CompositeThrowable compositeThrowable;
                Tuple2 tuple2 = new Tuple2(this.self$1, th2);
                if (tuple2.mo269_1() instanceof CompositeThrowable) {
                    CompositeThrowable compositeThrowable2 = (CompositeThrowable) tuple2.mo269_1();
                    if (tuple2.mo268_2() instanceof CompositeThrowable) {
                        compositeThrowable = new CompositeThrowable(compositeThrowable2.throwables().$plus$plus(((CompositeThrowable) tuple2.mo268_2()).throwables()));
                        return compositeThrowable;
                    }
                }
                compositeThrowable = tuple2.mo269_1() instanceof CompositeThrowable ? new CompositeThrowable(((CompositeThrowable) tuple2.mo269_1()).throwables().$plus((Set<Throwable>) th2)) : tuple2.mo268_2() instanceof CompositeThrowable ? new CompositeThrowable(((CompositeThrowable) tuple2.mo268_2()).throwables().$plus((Set<Throwable>) this.self$1)) : new CompositeThrowable((Set) Set$.MODULE$.apply(Predef$.MODULE$.wrapRefArray(new Throwable[]{this.self$1, th2})));
                return compositeThrowable;
            }
        };
    }

    public <T> Object traversable2ops(GenTraversableOnce<T> genTraversableOnce) {
        return new ParallelCollectionImplicits$$anon$2(genTraversableOnce);
    }
}
