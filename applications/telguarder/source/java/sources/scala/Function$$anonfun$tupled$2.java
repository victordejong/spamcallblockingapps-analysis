package scala;

import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function$$anonfun$tupled$2.class */
public final class Function$$anonfun$tupled$2 extends AbstractFunction1<Tuple3<a1, a2, a3>, b> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function3 f$6;

    public Function$$anonfun$tupled$2(Function3 function3) {
        this.f$6 = function3;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [b, java.lang.Object] */
    public final b apply(Tuple3<a1, a2, a3> tuple3) {
        if (tuple3 != 0) {
            return this.f$6.apply(tuple3.mo240_1(), tuple3.mo239_2(), tuple3.mo238_3());
        }
        throw new MatchError(tuple3);
    }
}
