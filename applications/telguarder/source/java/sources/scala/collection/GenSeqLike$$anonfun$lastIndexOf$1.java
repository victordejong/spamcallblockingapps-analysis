package scala.collection;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/GenSeqLike$$anonfun$lastIndexOf$1.class */
public final class GenSeqLike$$anonfun$lastIndexOf$1 extends AbstractFunction1<A, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Object elem$2;

    public GenSeqLike$$anonfun$lastIndexOf$1(GenSeqLike genSeqLike, GenSeqLike<A, Repr> genSeqLike2) {
        this.elem$2 = genSeqLike2;
    }

    @Override // scala.Function1
    public final boolean apply(A a) {
        Object obj = this.elem$2;
        return obj == a ? true : obj == null ? false : obj instanceof Number ? BoxesRunTime.equalsNumObject((Number) obj, a) : obj instanceof Character ? BoxesRunTime.equalsCharObject((Character) obj, a) : obj.equals(a);
    }
}
