package scala.collection;

import java.util.Objects;
import scala.Function2;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$$anonfun$scanRight$1.class */
public final class TraversableViewLike$$anonfun$scanRight$1 extends AbstractFunction0<Seq<B>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ TraversableViewLike $outer;
    private final Function2 op$2;
    private final Object z$2;

    public TraversableViewLike$$anonfun$scanRight$1(TraversableViewLike traversableViewLike, Object obj, Function2 function2) {
        Objects.requireNonNull(traversableViewLike);
        this.$outer = traversableViewLike;
        this.z$2 = obj;
        this.op$2 = function2;
    }

    @Override // scala.Function0
    public final Seq<B> apply() {
        return (Seq) this.$outer.thisSeq().scanRight(this.z$2, this.op$2, Seq$.MODULE$.canBuildFrom());
    }
}
