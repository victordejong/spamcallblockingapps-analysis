package scala.collection;

import scala.Function1;
import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.ObjectRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/MapLike$$anonfun$filterNot$1.class */
public final class MapLike$$anonfun$filterNot$1 extends AbstractFunction1<Tuple2<A, B>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function1 p$1;
    private final ObjectRef res$1;

    public MapLike$$anonfun$filterNot$1(MapLike mapLike, ObjectRef objectRef, Function1 function1) {
        this.res$1 = objectRef;
        this.p$1 = function1;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((Tuple2) obj);
        return BoxedUnit.UNIT;
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [scala.collection.Map, T] */
    public final void apply(Tuple2<A, B> tuple2) {
        if (BoxesRunTime.unboxToBoolean(this.p$1.apply(tuple2))) {
            ObjectRef objectRef = this.res$1;
            objectRef.elem = ((Map) objectRef.elem).$minus((Map) tuple2.mo269_1());
        }
    }
}
