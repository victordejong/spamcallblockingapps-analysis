package scala.collection.mutable;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/SetLike$$anonfun$clear$1.class */
public final class SetLike$$anonfun$clear$1 extends AbstractFunction1<A, SetLike<A, This>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ SetLike $outer;

    public SetLike$$anonfun$clear$1(SetLike<A, This> setLike) {
        Objects.requireNonNull(setLike);
        this.$outer = setLike;
    }

    @Override // scala.Function1
    public final SetLike<A, This> apply(A a) {
        return this.$outer.$minus$eq((SetLike) a);
    }
}
