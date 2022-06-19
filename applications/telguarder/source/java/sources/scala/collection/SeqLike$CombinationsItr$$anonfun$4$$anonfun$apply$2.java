package scala.collection;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction0$mcI$sp;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqLike$CombinationsItr$$anonfun$4$$anonfun$apply$2.class */
public final class SeqLike$CombinationsItr$$anonfun$4$$anonfun$apply$2 extends AbstractFunction0$mcI$sp implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ SeqLike$CombinationsItr$$anonfun$4 $outer;

    public SeqLike$CombinationsItr$$anonfun$4$$anonfun$apply$2(SeqLike$CombinationsItr$$anonfun$4 seqLike$CombinationsItr$$anonfun$4) {
        Objects.requireNonNull(seqLike$CombinationsItr$$anonfun$4);
        this.$outer = seqLike$CombinationsItr$$anonfun$4;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, int] */
    @Override // scala.Function0
    public final Object apply() {
        return this.$outer.m$2.size();
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public int apply$mcI$sp() {
        return this.$outer.m$2.size();
    }
}
