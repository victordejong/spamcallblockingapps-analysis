package scala.util;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.IntRef;
import scala.runtime.ScalaRunTime$;
/* loaded from: classes3-dex2jar.jar:scala/util/MurmurHash$$anonfun$symmetricHash$1.class */
public final class MurmurHash$$anonfun$symmetricHash$1 extends AbstractFunction1<T, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final IntRef a$1;
    private final IntRef b$1;
    private final IntRef c$1;
    private final IntRef n$1;

    public MurmurHash$$anonfun$symmetricHash$1(IntRef intRef, IntRef intRef2, IntRef intRef3, IntRef intRef4) {
        this.a$1 = intRef;
        this.b$1 = intRef2;
        this.n$1 = intRef3;
        this.c$1 = intRef4;
    }

    @Override // scala.Function1
    public final void apply(T t) {
        int hash = ScalaRunTime$.MODULE$.hash(t);
        this.a$1.elem += hash;
        this.b$1.elem ^= hash;
        if (hash != 0) {
            this.c$1.elem *= hash;
        }
        this.n$1.elem++;
    }
}
