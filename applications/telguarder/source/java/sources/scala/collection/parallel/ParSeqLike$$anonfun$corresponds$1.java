package scala.collection.parallel;

import java.util.Objects;
import scala.Function2;
import scala.Serializable;
import scala.collection.GenSeq;
import scala.runtime.AbstractFunction0$mcZ$sp;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$$anonfun$corresponds$1.class */
public final class ParSeqLike$$anonfun$corresponds$1 extends AbstractFunction0$mcZ$sp implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParSeqLike $outer;
    private final Function2 p$1;
    private final GenSeq that$5;

    public ParSeqLike$$anonfun$corresponds$1(ParSeqLike parSeqLike, GenSeq genSeq, Function2 function2) {
        Objects.requireNonNull(parSeqLike);
        this.$outer = parSeqLike;
        this.that$5 = genSeq;
        this.p$1 = function2;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [boolean, java.lang.Object] */
    @Override // scala.Function0
    public final Object apply() {
        return apply$mcZ$sp();
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public boolean apply$mcZ$sp() {
        return this.$outer.seq().corresponds(this.that$5, this.p$1);
    }
}
