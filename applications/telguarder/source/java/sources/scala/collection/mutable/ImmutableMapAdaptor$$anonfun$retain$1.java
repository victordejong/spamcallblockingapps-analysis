package scala.collection.mutable;

import scala.Function2;
import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ImmutableMapAdaptor$$anonfun$retain$1.class */
public final class ImmutableMapAdaptor$$anonfun$retain$1 extends AbstractFunction1<Tuple2<A, B>, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function2 p$1;

    /* JADX WARN: Multi-variable type inference failed */
    public ImmutableMapAdaptor$$anonfun$retain$1(ImmutableMapAdaptor immutableMapAdaptor, ImmutableMapAdaptor<A, B> immutableMapAdaptor2) {
        this.p$1 = immutableMapAdaptor2;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((Tuple2) obj));
    }

    public final boolean apply(Tuple2<A, B> tuple2) {
        return BoxesRunTime.unboxToBoolean(this.p$1.apply(tuple2.mo269_1(), tuple2.mo268_2()));
    }
}
