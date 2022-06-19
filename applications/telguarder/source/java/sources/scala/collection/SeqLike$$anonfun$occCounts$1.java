package scala.collection;

import scala.Serializable;
import scala.collection.mutable.HashMap;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqLike$$anonfun$occCounts$1.class */
public final class SeqLike$$anonfun$occCounts$1 extends AbstractFunction1<Object, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final HashMap occ$3;

    /* JADX WARN: Multi-variable type inference failed */
    public SeqLike$$anonfun$occCounts$1(SeqLike seqLike, SeqLike seqLike2) {
        this.occ$3 = seqLike2;
    }

    @Override // scala.Function1
    public final void apply(Object obj) {
        HashMap hashMap = this.occ$3;
        hashMap.update(obj, BoxesRunTime.boxToInteger(BoxesRunTime.unboxToInt(hashMap.apply(obj)) + 1));
    }
}
