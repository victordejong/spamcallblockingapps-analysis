package scala.collection;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction0$mcI$sp;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqLike$PermutationsItr$$anonfun$2$$anonfun$apply$1.class */
public final class SeqLike$PermutationsItr$$anonfun$2$$anonfun$apply$1 extends AbstractFunction0$mcI$sp implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ SeqLike$PermutationsItr$$anonfun$2 $outer;

    public SeqLike$PermutationsItr$$anonfun$2$$anonfun$apply$1(SeqLike$PermutationsItr$$anonfun$2 seqLike$PermutationsItr$$anonfun$2) {
        Objects.requireNonNull(seqLike$PermutationsItr$$anonfun$2);
        this.$outer = seqLike$PermutationsItr$$anonfun$2;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, int] */
    @Override // scala.Function0
    public final Object apply() {
        return this.$outer.m$1.size();
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public int apply$mcI$sp() {
        return this.$outer.m$1.size();
    }
}
