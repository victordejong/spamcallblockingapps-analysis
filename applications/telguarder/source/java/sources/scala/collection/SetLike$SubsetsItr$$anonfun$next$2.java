package scala.collection;

import java.util.Objects;
import scala.Serializable;
import scala.collection.SetLike;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/SetLike$SubsetsItr$$anonfun$next$2.class */
public final class SetLike$SubsetsItr$$anonfun$next$2 extends AbstractFunction1<Object, Builder<A, This>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ SetLike.SubsetsItr $outer;
    private final Builder buf$1;

    /* JADX WARN: Multi-variable type inference failed */
    public SetLike$SubsetsItr$$anonfun$next$2(SetLike.SubsetsItr subsetsItr, SetLike<A, This>.SubsetsItr subsetsItr2) {
        Objects.requireNonNull(subsetsItr);
        this.$outer = subsetsItr;
        this.buf$1 = subsetsItr2;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    public final Builder<A, This> apply(int i) {
        return this.buf$1.$plus$eq((Builder) this.$outer.scala$collection$SetLike$SubsetsItr$$elms.apply(i));
    }
}
