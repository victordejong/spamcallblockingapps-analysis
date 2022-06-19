package scala.collection;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction0$mcV$sp;
import scala.runtime.IntRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableLike$$anonfun$copyToArray$1.class */
public final class TraversableLike$$anonfun$copyToArray$1 extends AbstractFunction0$mcV$sp implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ TraversableLike $outer;
    public final int end$1;
    public final IntRef i$3;
    public final Object xs$1;

    public TraversableLike$$anonfun$copyToArray$1(TraversableLike traversableLike, IntRef intRef, int i, Object obj) {
        Objects.requireNonNull(traversableLike);
        this.$outer = traversableLike;
        this.i$3 = intRef;
        this.end$1 = i;
        this.xs$1 = obj;
    }

    @Override // scala.Function0
    /* renamed from: apply */
    public final void apply2() {
        this.$outer.foreach(new TraversableLike$$anonfun$copyToArray$1$$anonfun$apply$mcV$sp$8(this));
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public void apply$mcV$sp() {
        this.$outer.foreach(new TraversableLike$$anonfun$copyToArray$1$$anonfun$apply$mcV$sp$8(this));
    }
}
