package scala.collection.immutable;

import scala.Serializable;
import scala.Tuple2;
import scala.collection.immutable.HashMap;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/HashMap$SerializationProxy$$anonfun$writeObject$1.class */
public final class HashMap$SerializationProxy$$anonfun$writeObject$1 extends AbstractFunction1<Tuple2<A, B>, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public HashMap$SerializationProxy$$anonfun$writeObject$1(HashMap.SerializationProxy<A, B> serializationProxy) {
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((Tuple2) obj));
    }

    public final boolean apply(Tuple2<A, B> tuple2) {
        return tuple2 != 0;
    }
}
