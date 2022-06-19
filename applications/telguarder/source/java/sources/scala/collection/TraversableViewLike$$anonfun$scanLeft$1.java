package scala.collection;

import java.util.Objects;
import scala.Function2;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$$anonfun$scanLeft$1.class */
public final class TraversableViewLike$$anonfun$scanLeft$1 extends AbstractFunction0<Seq<B>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ TraversableViewLike $outer;
    private final Function2 op$1;
    private final Object z$1;

    public TraversableViewLike$$anonfun$scanLeft$1(TraversableViewLike traversableViewLike, Object obj, Function2 function2) {
        Objects.requireNonNull(traversableViewLike);
        this.$outer = traversableViewLike;
        this.z$1 = obj;
        this.op$1 = function2;
    }

    @Override // scala.Function0
    public final Seq<B> apply() {
        return (Seq) this.$outer.thisSeq().scanLeft(this.z$1, this.op$1, Seq$.MODULE$.canBuildFrom());
    }
}
