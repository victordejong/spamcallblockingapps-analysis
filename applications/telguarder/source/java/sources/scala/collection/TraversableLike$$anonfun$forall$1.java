package scala.collection;

import java.util.Objects;
import scala.Function1;
import scala.Serializable;
import scala.runtime.AbstractFunction0$mcV$sp;
import scala.runtime.BooleanRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableLike$$anonfun$forall$1.class */
public final class TraversableLike$$anonfun$forall$1 extends AbstractFunction0$mcV$sp implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ TraversableLike $outer;
    public final Function1 p$3;
    public final BooleanRef result$2;

    public TraversableLike$$anonfun$forall$1(TraversableLike traversableLike, BooleanRef booleanRef, Function1 function1) {
        Objects.requireNonNull(traversableLike);
        this.$outer = traversableLike;
        this.result$2 = booleanRef;
        this.p$3 = function1;
    }

    @Override // scala.Function0
    /* renamed from: apply */
    public final void apply2() {
        this.$outer.foreach(new TraversableLike$$anonfun$forall$1$$anonfun$apply$mcV$sp$2(this));
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public void apply$mcV$sp() {
        this.$outer.foreach(new TraversableLike$$anonfun$forall$1$$anonfun$apply$mcV$sp$2(this));
    }
}
