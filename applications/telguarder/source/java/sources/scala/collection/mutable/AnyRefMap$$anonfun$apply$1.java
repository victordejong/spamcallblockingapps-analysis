package scala.collection.mutable;

import scala.MatchError;
import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/AnyRefMap$$anonfun$apply$1.class */
public final class AnyRefMap$$anonfun$apply$1 extends AbstractFunction1<Tuple2<K, V>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final AnyRefMap arm$1;

    public AnyRefMap$$anonfun$apply$1(AnyRefMap anyRefMap) {
        this.arm$1 = anyRefMap;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((Tuple2) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(Tuple2<K, V> tuple2) {
        if (tuple2 != 0) {
            this.arm$1.update(tuple2.mo269_1(), tuple2.mo268_2());
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
            return;
        }
        throw new MatchError(tuple2);
    }
}
