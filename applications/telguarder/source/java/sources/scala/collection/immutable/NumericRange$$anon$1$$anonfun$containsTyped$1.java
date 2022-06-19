package scala.collection.immutable;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/NumericRange$$anon$1$$anonfun$containsTyped$1.class */
public final class NumericRange$$anon$1$$anonfun$containsTyped$1 extends AbstractFunction1<T, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ NumericRange$$anon$1 $outer;
    private final Object el$1;

    public NumericRange$$anon$1$$anonfun$containsTyped$1(NumericRange$$anon$1 numericRange$$anon$1, Object obj) {
        Objects.requireNonNull(numericRange$$anon$1);
        this.$outer = numericRange$$anon$1;
        this.el$1 = obj;
    }

    @Override // scala.Function1
    public final boolean apply(T t) {
        Object apply = this.$outer.fm$1.apply(t);
        Object obj = this.el$1;
        return apply == obj ? true : apply == null ? false : apply instanceof Number ? BoxesRunTime.equalsNumObject((Number) apply, obj) : apply instanceof Character ? BoxesRunTime.equalsCharObject((Character) apply, obj) : apply.equals(obj);
    }
}
