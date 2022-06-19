package scala.collection;

import scala.MatchError;
import scala.Serializable;
import scala.Some;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/GenMapLike$$anonfun$liftedTree1$1$1.class */
public final class GenMapLike$$anonfun$liftedTree1$1$1 extends AbstractFunction1<Tuple2<A, B>, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final GenMap x2$1;

    /* JADX WARN: Multi-variable type inference failed */
    public GenMapLike$$anonfun$liftedTree1$1$1(GenMapLike genMapLike, GenMapLike<A, B, Repr> genMapLike2) {
        this.x2$1 = genMapLike2;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((Tuple2) obj));
    }

    public final boolean apply(Tuple2<A, B> tuple2) {
        boolean z;
        if (tuple2 != 0) {
            Serializable serializable = this.x2$1.get(tuple2.mo269_1());
            if (serializable instanceof Some) {
                Some some = (Some) serializable;
                Object mo268_2 = tuple2.mo268_2();
                Object m362x = some.m362x();
                if (mo268_2 == m362x ? true : mo268_2 == null ? false : mo268_2 instanceof Number ? BoxesRunTime.equalsNumObject((Number) mo268_2, m362x) : mo268_2 instanceof Character ? BoxesRunTime.equalsCharObject((Character) mo268_2, m362x) : mo268_2.equals(m362x)) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        }
        throw new MatchError(tuple2);
    }
}
