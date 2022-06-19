package scala;

import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function$$anonfun$tupled$3.class */
public final class Function$$anonfun$tupled$3 extends AbstractFunction1<Tuple4<a1, a2, a3, a4>, b> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function4 f$7;

    public Function$$anonfun$tupled$3(Function4 function4) {
        this.f$7 = function4;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [b, java.lang.Object] */
    public final b apply(Tuple4<a1, a2, a3, a4> tuple4) {
        if (tuple4 != 0) {
            return this.f$7.apply(tuple4.mo237_1(), tuple4.mo236_2(), tuple4.mo235_3(), tuple4.mo234_4());
        }
        throw new MatchError(tuple4);
    }
}
