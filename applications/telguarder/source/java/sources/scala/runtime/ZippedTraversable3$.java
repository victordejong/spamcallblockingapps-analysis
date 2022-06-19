package scala.runtime;

import scala.Function$;
import scala.Function$$anonfun$untupled$2;
import scala.Function1;
import scala.Tuple3;
import scala.collection.AbstractTraversable;
import scala.collection.Traversable;
/* loaded from: classes3-dex2jar.jar:scala/runtime/ZippedTraversable3$.class */
public final class ZippedTraversable3$ {
    public static final ZippedTraversable3$ MODULE$ = null;

    static {
        new ZippedTraversable3$();
    }

    private ZippedTraversable3$() {
        MODULE$ = this;
    }

    public <El1, El2, El3> Traversable<Tuple3<El1, El2, El3>> zippedTraversable3ToTraversable(ZippedTraversable3<El1, El2, El3> zippedTraversable3) {
        return new AbstractTraversable<Tuple3<El1, El2, El3>>(zippedTraversable3) { // from class: scala.runtime.ZippedTraversable3$$anon$1
            private final ZippedTraversable3 zz$1;

            {
                this.zz$1 = zippedTraversable3;
            }

            @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
            public <U> void foreach(Function1<Tuple3<El1, El2, El3>, U> function1) {
                ZippedTraversable3 zippedTraversable32 = this.zz$1;
                Function$ function$ = Function$.MODULE$;
                zippedTraversable32.foreach(new Function$$anonfun$untupled$2(function1));
            }
        };
    }
}
