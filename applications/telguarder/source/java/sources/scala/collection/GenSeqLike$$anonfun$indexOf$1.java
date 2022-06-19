package scala.collection;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/GenSeqLike$$anonfun$indexOf$1.class */
public final class GenSeqLike$$anonfun$indexOf$1 extends AbstractFunction1<A, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Object elem$1;

    public GenSeqLike$$anonfun$indexOf$1(GenSeqLike genSeqLike, GenSeqLike<A, Repr> genSeqLike2) {
        this.elem$1 = genSeqLike2;
    }

    @Override // scala.Function1
    public final boolean apply(A a) {
        Object obj = this.elem$1;
        return obj == a ? true : obj == null ? false : obj instanceof Number ? BoxesRunTime.equalsNumObject((Number) obj, a) : obj instanceof Character ? BoxesRunTime.equalsCharObject((Character) obj, a) : obj.equals(a);
    }
}
