package scala.collection;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqLike$$anonfun$contains$1.class */
public final class SeqLike$$anonfun$contains$1 extends AbstractFunction1<A, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Object elem$1;

    public SeqLike$$anonfun$contains$1(SeqLike seqLike, SeqLike<A, Repr> seqLike2) {
        this.elem$1 = seqLike2;
    }

    @Override // scala.Function1
    public final boolean apply(A a) {
        Object obj = this.elem$1;
        return a == obj ? true : a == 0 ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, obj) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, obj) : a.equals(obj);
    }
}
