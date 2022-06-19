package scala.util.hashing;

import scala.Function1;
import scala.Serializable;
import scala.runtime.BoxesRunTime;
import scala.util.hashing.Hashing;
/* loaded from: classes3-dex2jar.jar:scala/util/hashing/Hashing$.class */
public final class Hashing$ implements Serializable {
    public static final Hashing$ MODULE$ = null;

    static {
        new Hashing$();
    }

    private Hashing$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    /* renamed from: default */
    public <T> Hashing.Default<T> m6474default() {
        return new Hashing.Default<>();
    }

    public <T> Object fromFunction(Function1<T, Object> function1) {
        return new Hashing<T>(function1) { // from class: scala.util.hashing.Hashing$$anon$1
            private final Function1 f$1;

            {
                this.f$1 = function1;
            }

            @Override // scala.util.hashing.Hashing
            public int hash(T t) {
                return BoxesRunTime.unboxToInt(this.f$1.apply(t));
            }
        };
    }
}
