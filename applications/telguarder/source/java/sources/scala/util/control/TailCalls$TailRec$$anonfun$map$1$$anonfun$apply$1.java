package scala.util.control;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
import scala.util.control.TailCalls;
/* loaded from: classes3-dex2jar.jar:scala/util/control/TailCalls$TailRec$$anonfun$map$1$$anonfun$apply$1.class */
public final class TailCalls$TailRec$$anonfun$map$1$$anonfun$apply$1 extends AbstractFunction0<TailCalls.Done<B>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ TailCalls$TailRec$$anonfun$map$1 $outer;
    private final Object a$1;

    public TailCalls$TailRec$$anonfun$map$1$$anonfun$apply$1(TailCalls$TailRec$$anonfun$map$1 tailCalls$TailRec$$anonfun$map$1, Object obj) {
        Objects.requireNonNull(tailCalls$TailRec$$anonfun$map$1);
        this.$outer = tailCalls$TailRec$$anonfun$map$1;
        this.a$1 = obj;
    }

    @Override // scala.Function0
    public final TailCalls.Done<B> apply() {
        return new TailCalls.Done<>(this.$outer.f$1.apply(this.a$1));
    }
}
