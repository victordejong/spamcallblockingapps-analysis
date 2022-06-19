package scala.math;

import java.util.Comparator;
import scala.Function1;
import scala.Function2;
import scala.Predef$;
import scala.Serializable;
import scala.math.LowPriorityEquiv;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/math/Equiv$.class */
public final class Equiv$ implements LowPriorityEquiv, Serializable {
    public static final Equiv$ MODULE$ = null;

    static {
        new Equiv$();
    }

    private Equiv$() {
        MODULE$ = this;
        LowPriorityEquiv.Cclass.$init$(this);
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <T> Equiv<T> apply(Equiv<T> equiv) {
        Predef$ predef$ = Predef$.MODULE$;
        return equiv;
    }

    /* renamed from: by */
    public <T, S> Equiv<T> m51by(Function1<T, S> function1, Equiv<S> equiv) {
        return new Equiv$$anon$4(new Equiv$$anonfun$by$1(function1, equiv));
    }

    public <T> Equiv<T> fromComparator(Comparator<T> comparator) {
        return new Equiv<T>(comparator) { // from class: scala.math.Equiv$$anon$3
            private final Comparator cmp$1;

            {
                this.cmp$1 = comparator;
            }

            @Override // scala.math.Equiv
            public boolean equiv(T t, T t2) {
                return this.cmp$1.compare(t, t2) == 0;
            }
        };
    }

    public <T> Equiv<T> fromFunction(Function2<T, T, Object> function2) {
        return new Equiv$$anon$4(function2);
    }

    public <T> Equiv<T> reference() {
        return new Equiv<T>() { // from class: scala.math.Equiv$$anon$1
            @Override // scala.math.Equiv
            public boolean equiv(T t, T t2) {
                return t == t2;
            }
        };
    }

    public <T> Equiv<T> universal() {
        return new Equiv<T>() { // from class: scala.math.Equiv$$anon$2
            @Override // scala.math.Equiv
            public boolean equiv(T t, T t2) {
                return t == t2 ? true : t == 0 ? false : t instanceof Number ? BoxesRunTime.equalsNumObject((Number) t, t2) : t instanceof Character ? BoxesRunTime.equalsCharObject((Character) t, t2) : t.equals(t2);
            }
        };
    }

    @Override // scala.math.LowPriorityEquiv
    public <T> Equiv<T> universalEquiv() {
        return LowPriorityEquiv.Cclass.universalEquiv(this);
    }
}
