package scala.collection;

import java.util.Objects;
import scala.Function1;
import scala.Serializable;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction0$mcV$sp;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableLike$$anonfun$takeWhile$1.class */
public final class TraversableLike$$anonfun$takeWhile$1 extends AbstractFunction0$mcV$sp implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ TraversableLike $outer;
    public final Builder b$10;
    public final Function1 p$6;

    public TraversableLike$$anonfun$takeWhile$1(TraversableLike traversableLike, Builder builder, Function1 function1) {
        Objects.requireNonNull(traversableLike);
        this.$outer = traversableLike;
        this.b$10 = builder;
        this.p$6 = function1;
    }

    @Override // scala.Function0
    /* renamed from: apply */
    public final void apply2() {
        this.$outer.foreach(new TraversableLike$$anonfun$takeWhile$1$$anonfun$apply$mcV$sp$7(this));
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public void apply$mcV$sp() {
        this.$outer.foreach(new TraversableLike$$anonfun$takeWhile$1$$anonfun$apply$mcV$sp$7(this));
    }
}
