package scala;

import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function$$anonfun$tupled$4.class */
public final class Function$$anonfun$tupled$4 extends AbstractFunction1<Tuple5<a1, a2, a3, a4, a5>, b> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function5 f$8;

    public Function$$anonfun$tupled$4(Function5 function5) {
        this.f$8 = function5;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [b, java.lang.Object] */
    public final b apply(Tuple5<a1, a2, a3, a4, a5> tuple5) {
        if (tuple5 != 0) {
            return this.f$8.apply(tuple5.mo233_1(), tuple5.mo232_2(), tuple5.mo231_3(), tuple5.mo230_4(), tuple5.mo229_5());
        }
        throw new MatchError(tuple5);
    }
}
