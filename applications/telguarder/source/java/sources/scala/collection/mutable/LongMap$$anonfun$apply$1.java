package scala.collection.mutable;

import scala.MatchError;
import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/LongMap$$anonfun$apply$1.class */
public final class LongMap$$anonfun$apply$1 extends AbstractFunction1<Tuple2<Object, V>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final LongMap lm$1;

    public LongMap$$anonfun$apply$1(LongMap longMap) {
        this.lm$1 = longMap;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((Tuple2) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(Tuple2<Object, V> tuple2) {
        if (tuple2 != 0) {
            this.lm$1.update(tuple2._1$mcJ$sp(), (long) tuple2.mo268_2());
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
            return;
        }
        throw new MatchError(tuple2);
    }
}
