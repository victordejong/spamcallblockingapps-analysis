package scala.collection.parallel;

import scala.Array$;
import scala.Predef$;
import scala.Predef$any2stringadd$;
import scala.Serializable;
import scala.collection.immutable.StringOps;
import scala.collection.mutable.ArrayOps;
import scala.collection.mutable.StringBuilder;
import scala.reflect.ClassTag$;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/CompositeThrowable$$anonfun$$lessinit$greater$1.class */
public final class CompositeThrowable$$anonfun$$lessinit$greater$1 extends AbstractFunction1<Throwable, String> implements Serializable {
    public static final long serialVersionUID = 0;

    public final String apply(Throwable th) {
        StringBuilder append = new StringBuilder().append((Object) Predef$any2stringadd$.MODULE$.$plus$extension(Predef$.MODULE$.any2stringadd(th), "\n"));
        Predef$ predef$ = Predef$.MODULE$;
        ArrayOps refArrayOps = Predef$.MODULE$.refArrayOps((Object[]) Predef$.MODULE$.refArrayOps(th.getStackTrace()).take(10));
        Predef$ predef$2 = Predef$.MODULE$;
        return append.append((Object) predef$.genericArrayOps(refArrayOps.$plus$plus(new StringOps("..."), Array$.MODULE$.canBuildFrom(ClassTag$.MODULE$.Any()))).mkString("\n")).toString();
    }
}
