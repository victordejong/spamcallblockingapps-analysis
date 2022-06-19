package scala.collection;

import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/DefaultMap$$anonfun$$minus$1.class */
public final class DefaultMap$$anonfun$$minus$1 extends AbstractFunction1<Tuple2<A, B>, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Object key$1;

    public DefaultMap$$anonfun$$minus$1(DefaultMap defaultMap, DefaultMap<A, B> defaultMap2) {
        this.key$1 = defaultMap2;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((Tuple2) obj));
    }

    public final boolean apply(Tuple2<A, B> tuple2) {
        Object obj = this.key$1;
        Object mo269_1 = tuple2.mo269_1();
        return !(obj == mo269_1 ? true : obj == null ? false : obj instanceof Number ? BoxesRunTime.equalsNumObject((Number) obj, mo269_1) : obj instanceof Character ? BoxesRunTime.equalsCharObject((Character) obj, mo269_1) : obj.equals(mo269_1));
    }
}
