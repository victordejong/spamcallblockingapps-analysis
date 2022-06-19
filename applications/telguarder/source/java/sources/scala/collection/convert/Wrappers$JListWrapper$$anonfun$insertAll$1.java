package scala.collection.convert;

import java.util.List;
import scala.Serializable;
import scala.collection.convert.Wrappers;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/convert/Wrappers$JListWrapper$$anonfun$insertAll$1.class */
public final class Wrappers$JListWrapper$$anonfun$insertAll$1 extends AbstractFunction1<A, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final List ins$1;

    /* JADX WARN: Multi-variable type inference failed */
    public Wrappers$JListWrapper$$anonfun$insertAll$1(Wrappers.JListWrapper jListWrapper, Wrappers.JListWrapper<A> jListWrapper2) {
        this.ins$1 = jListWrapper2;
    }

    @Override // scala.Function1
    public final boolean apply(A a) {
        return this.ins$1.add(a);
    }
}
