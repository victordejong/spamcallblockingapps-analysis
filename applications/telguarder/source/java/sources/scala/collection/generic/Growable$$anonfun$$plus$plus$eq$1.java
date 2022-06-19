package scala.collection.generic;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/Growable$$anonfun$$plus$plus$eq$1.class */
public final class Growable$$anonfun$$plus$plus$eq$1 extends AbstractFunction1<A, Growable<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Growable $outer;

    public Growable$$anonfun$$plus$plus$eq$1(Growable<A> growable) {
        Objects.requireNonNull(growable);
        this.$outer = growable;
    }

    @Override // scala.Function1
    public final Growable<A> apply(A a) {
        return this.$outer.$plus$eq(a);
    }
}
