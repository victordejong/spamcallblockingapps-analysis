package scala.collection.immutable;

import java.io.ObjectOutputStream;
import scala.MatchError;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.immutable.HashMap;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/HashMap$SerializationProxy$$anonfun$writeObject$2.class */
public final class HashMap$SerializationProxy$$anonfun$writeObject$2 extends AbstractFunction1<Tuple2<A, B>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ObjectOutputStream out$1;

    /* JADX WARN: Multi-variable type inference failed */
    public HashMap$SerializationProxy$$anonfun$writeObject$2(HashMap.SerializationProxy serializationProxy, HashMap.SerializationProxy<A, B> serializationProxy2) {
        this.out$1 = serializationProxy2;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((Tuple2) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(Tuple2<A, B> tuple2) {
        if (tuple2 != 0) {
            this.out$1.writeObject(tuple2.mo269_1());
            this.out$1.writeObject(tuple2.mo268_2());
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
            return;
        }
        throw new MatchError(tuple2);
    }
}
