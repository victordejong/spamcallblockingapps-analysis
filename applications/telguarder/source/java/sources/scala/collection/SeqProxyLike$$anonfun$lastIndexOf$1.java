package scala.collection;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqProxyLike$$anonfun$lastIndexOf$1.class */
public final class SeqProxyLike$$anonfun$lastIndexOf$1 extends AbstractFunction1<A, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Object elem$1;

    public SeqProxyLike$$anonfun$lastIndexOf$1(SeqProxyLike seqProxyLike, SeqProxyLike<A, Repr> seqProxyLike2) {
        this.elem$1 = seqProxyLike2;
    }

    @Override // scala.Function1
    public final boolean apply(A a) {
        Object obj = this.elem$1;
        return obj == a ? true : obj == null ? false : obj instanceof Number ? BoxesRunTime.equalsNumObject((Number) obj, a) : obj instanceof Character ? BoxesRunTime.equalsCharObject((Character) obj, a) : obj.equals(a);
    }
}
