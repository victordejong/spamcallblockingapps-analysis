package scala.collection;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction0$mcV$sp;
import scala.runtime.ObjectRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableLike$$anonfun$head$1.class */
public final class TraversableLike$$anonfun$head$1 extends AbstractFunction0$mcV$sp implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ TraversableLike $outer;
    public final ObjectRef result$5;

    /* JADX WARN: Multi-variable type inference failed */
    public TraversableLike$$anonfun$head$1(TraversableLike traversableLike, TraversableLike<A, Repr> traversableLike2) {
        Objects.requireNonNull(traversableLike);
        this.$outer = traversableLike;
        this.result$5 = traversableLike2;
    }

    @Override // scala.Function0
    /* renamed from: apply */
    public final void apply2() {
        this.$outer.foreach(new TraversableLike$$anonfun$head$1$$anonfun$apply$mcV$sp$5(this));
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public void apply$mcV$sp() {
        this.$outer.foreach(new TraversableLike$$anonfun$head$1$$anonfun$apply$mcV$sp$5(this));
    }
}
