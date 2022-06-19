package scala;

import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function$$anonfun$tupled$1.class */
public final class Function$$anonfun$tupled$1 extends AbstractFunction1<Tuple2<a1, a2>, b> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function2 f$5;

    public Function$$anonfun$tupled$1(Function2 function2) {
        this.f$5 = function2;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [b, java.lang.Object] */
    public final b apply(Tuple2<a1, a2> tuple2) {
        if (tuple2 != 0) {
            return this.f$5.apply(tuple2.mo269_1(), tuple2.mo268_2());
        }
        throw new MatchError(tuple2);
    }
}
