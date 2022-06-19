package scala.collection.parallel;

import java.util.Objects;
import scala.Serializable;
import scala.collection.GenSeq;
import scala.runtime.AbstractFunction0$mcZ$sp;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$$anonfun$endsWith$1.class */
public final class ParSeqLike$$anonfun$endsWith$1 extends AbstractFunction0$mcZ$sp implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ ParSeqLike $outer;
    public final GenSeq that$4;

    /* JADX WARN: Multi-variable type inference failed */
    public ParSeqLike$$anonfun$endsWith$1(ParSeqLike parSeqLike, ParSeqLike<T, Repr, Sequential> parSeqLike2) {
        Objects.requireNonNull(parSeqLike);
        this.$outer = parSeqLike;
        this.that$4 = parSeqLike2;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [boolean, java.lang.Object] */
    @Override // scala.Function0
    public final Object apply() {
        return this.$outer.seq().endsWith(this.that$4);
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public boolean apply$mcZ$sp() {
        return this.$outer.seq().endsWith(this.that$4);
    }
}
