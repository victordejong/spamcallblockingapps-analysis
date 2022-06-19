package scala.collection.mutable;

import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ListMap$$anonfun$get$1.class */
public final class ListMap$$anonfun$get$1 extends AbstractFunction1<Tuple2<A, B>, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Object key$1;

    public ListMap$$anonfun$get$1(ListMap listMap, ListMap<A, B> listMap2) {
        this.key$1 = listMap2;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((Tuple2) obj));
    }

    public final boolean apply(Tuple2<A, B> tuple2) {
        Object mo269_1 = tuple2.mo269_1();
        Object obj = this.key$1;
        return mo269_1 == obj ? true : mo269_1 == null ? false : mo269_1 instanceof Number ? BoxesRunTime.equalsNumObject((Number) mo269_1, obj) : mo269_1 instanceof Character ? BoxesRunTime.equalsCharObject((Character) mo269_1, obj) : mo269_1.equals(obj);
    }
}
