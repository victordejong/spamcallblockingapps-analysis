package scala.collection;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction1$mcZI$sp;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/BitSetLike$$anonfun$isEmpty$1.class */
public final class BitSetLike$$anonfun$isEmpty$1 extends AbstractFunction1$mcZI$sp implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ BitSetLike $outer;

    public BitSetLike$$anonfun$isEmpty$1(BitSetLike<This> bitSetLike) {
        Objects.requireNonNull(bitSetLike);
        this.$outer = bitSetLike;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply(BoxesRunTime.unboxToInt(obj)));
    }

    @Override // scala.Function1$mcZI$sp
    public final boolean apply(int i) {
        return apply$mcZI$sp(i);
    }

    @Override // scala.runtime.AbstractFunction1, scala.Function1
    public boolean apply$mcZI$sp(int i) {
        return this.$outer.word(i) == 0;
    }
}
