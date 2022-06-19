package scala.collection;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction1$mcZI$sp;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/BitSetLike$$anonfun$subsetOf$1.class */
public final class BitSetLike$$anonfun$subsetOf$1 extends AbstractFunction1$mcZI$sp implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ BitSetLike $outer;
    private final BitSet other$5;

    /* JADX WARN: Multi-variable type inference failed */
    public BitSetLike$$anonfun$subsetOf$1(BitSetLike bitSetLike, BitSetLike<This> bitSetLike2) {
        Objects.requireNonNull(bitSetLike);
        this.$outer = bitSetLike;
        this.other$5 = bitSetLike2;
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
        return (this.$outer.word(i) & (this.other$5.word(i) ^ (-1))) == 0;
    }
}
