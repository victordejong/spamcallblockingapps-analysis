package scala.util;

import java.util.Objects;
import scala.Function1;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/util/Success$$anonfun$map$1.class */
public final class Success$$anonfun$map$1 extends AbstractFunction0<U> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Success $outer;
    private final Function1 f$1;

    /* JADX WARN: Multi-variable type inference failed */
    public Success$$anonfun$map$1(Success success, Success<T> success2) {
        Objects.requireNonNull(success);
        this.$outer = success;
        this.f$1 = success2;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [U, java.lang.Object] */
    @Override // scala.Function0
    public final U apply() {
        return this.f$1.apply(this.$outer.value());
    }
}
