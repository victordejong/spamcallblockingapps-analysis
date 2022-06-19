package scala.util.hashing;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.IntRef;
import scala.runtime.ScalaRunTime$;
/* loaded from: classes3-dex2jar.jar:scala/util/hashing/MurmurHash3$$anonfun$orderedHash$1.class */
public final class MurmurHash3$$anonfun$orderedHash$1 extends AbstractFunction1<Object, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ MurmurHash3 $outer;
    private final IntRef h$1;
    private final IntRef n$2;

    public MurmurHash3$$anonfun$orderedHash$1(MurmurHash3 murmurHash3, IntRef intRef, IntRef intRef2) {
        Objects.requireNonNull(murmurHash3);
        this.$outer = murmurHash3;
        this.n$2 = intRef;
        this.h$1 = intRef2;
    }

    @Override // scala.Function1
    public final void apply(Object obj) {
        IntRef intRef = this.h$1;
        intRef.elem = this.$outer.mix(intRef.elem, ScalaRunTime$.MODULE$.hash(obj));
        this.n$2.elem++;
    }
}
