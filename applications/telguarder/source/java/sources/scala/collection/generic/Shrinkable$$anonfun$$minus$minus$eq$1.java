package scala.collection.generic;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/Shrinkable$$anonfun$$minus$minus$eq$1.class */
public final class Shrinkable$$anonfun$$minus$minus$eq$1 extends AbstractFunction1<A, Shrinkable<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Shrinkable $outer;

    public Shrinkable$$anonfun$$minus$minus$eq$1(Shrinkable<A> shrinkable) {
        Objects.requireNonNull(shrinkable);
        this.$outer = shrinkable;
    }

    @Override // scala.Function1
    public final Shrinkable<A> apply(A a) {
        return this.$outer.$minus$eq(a);
    }
}
