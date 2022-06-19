package scala.collection.mutable;

import java.util.Objects;
import scala.Array$;
import scala.Serializable;
import scala.collection.mutable.ArrayOps;
import scala.reflect.ClassTag$;
import scala.runtime.AbstractFunction1;
import scala.runtime.ScalaRunTime$;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ArrayOps$$anonfun$1.class */
public final class ArrayOps$$anonfun$1 extends AbstractFunction1<U, ArrayBuilder<U>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ArrayOps $outer;

    public ArrayOps$$anonfun$1(ArrayOps<T> arrayOps) {
        Objects.requireNonNull(arrayOps);
        this.$outer = arrayOps;
    }

    @Override // scala.Function1
    public final ArrayBuilder<U> apply(U u) {
        ArrayBuilder<U> newBuilder;
        newBuilder = Array$.MODULE$.newBuilder(ClassTag$.MODULE$.apply(ScalaRunTime$.MODULE$.arrayElementClass(ArrayOps.Cclass.elementClass(this.$outer))));
        return newBuilder;
    }
}
