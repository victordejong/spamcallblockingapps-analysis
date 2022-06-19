package scala.math;

import scala.Function1;
import scala.Predef$;
import scala.Serializable;
import scala.runtime.AbstractFunction2;
/* loaded from: classes3-dex2jar.jar:scala/math/Equiv$$anonfun$by$1.class */
public final class Equiv$$anonfun$by$1 extends AbstractFunction2<T, T, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Equiv evidence$1$1;
    private final Function1 f$1;

    public Equiv$$anonfun$by$1(Function1 function1, Equiv equiv) {
        this.f$1 = function1;
        this.evidence$1$1 = equiv;
    }

    @Override // scala.Function2
    public final boolean apply(T t, T t2) {
        Predef$ predef$ = Predef$.MODULE$;
        return this.evidence$1$1.equiv(this.f$1.apply(t), this.f$1.apply(t2));
    }
}
