package scala.collection.parallel;

import java.util.Objects;
import scala.Serializable;
import scala.collection.GenSeq;
import scala.runtime.AbstractFunction0$mcZ$sp;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$$anonfun$startsWith$1.class */
public final class ParSeqLike$$anonfun$startsWith$1 extends AbstractFunction0$mcZ$sp implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParSeqLike $outer;
    private final int offset$1;
    private final GenSeq that$2;

    public ParSeqLike$$anonfun$startsWith$1(ParSeqLike parSeqLike, GenSeq genSeq, int i) {
        Objects.requireNonNull(parSeqLike);
        this.$outer = parSeqLike;
        this.that$2 = genSeq;
        this.offset$1 = i;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [boolean, java.lang.Object] */
    @Override // scala.Function0
    public final Object apply() {
        return apply$mcZ$sp();
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public boolean apply$mcZ$sp() {
        return this.$outer.seq().startsWith(this.that$2, this.offset$1);
    }
}
