package scala.runtime;

import scala.Function$;
import scala.Function$$anonfun$untupled$1;
import scala.Function1;
import scala.Tuple2;
import scala.collection.AbstractTraversable;
import scala.collection.Traversable;
/* loaded from: classes3-dex2jar.jar:scala/runtime/ZippedTraversable2$.class */
public final class ZippedTraversable2$ {
    public static final ZippedTraversable2$ MODULE$ = null;

    static {
        new ZippedTraversable2$();
    }

    private ZippedTraversable2$() {
        MODULE$ = this;
    }

    public <El1, El2> Traversable<Tuple2<El1, El2>> zippedTraversable2ToTraversable(ZippedTraversable2<El1, El2> zippedTraversable2) {
        return new AbstractTraversable<Tuple2<El1, El2>>(zippedTraversable2) { // from class: scala.runtime.ZippedTraversable2$$anon$1
            private final ZippedTraversable2 zz$1;

            {
                this.zz$1 = zippedTraversable2;
            }

            @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
            public <U> void foreach(Function1<Tuple2<El1, El2>, U> function1) {
                ZippedTraversable2 zippedTraversable22 = this.zz$1;
                Function$ function$ = Function$.MODULE$;
                zippedTraversable22.foreach(new Function$$anonfun$untupled$1(function1));
            }
        };
    }
}
