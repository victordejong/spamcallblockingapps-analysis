package scala.util;

import scala.Serializable;
import scala.runtime.AbstractFunction1$mcII$sp;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/util/MurmurHash$$anonfun$2.class */
public final class MurmurHash$$anonfun$2 extends AbstractFunction1$mcII$sp implements Serializable {
    public static final long serialVersionUID = 0;

    @Override // scala.Function1$mcII$sp
    public final int apply(int i) {
        return MurmurHash$.MODULE$.nextMagicB(i);
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToInteger(apply(BoxesRunTime.unboxToInt(obj)));
    }

    @Override // scala.runtime.AbstractFunction1, scala.Function1
    public int apply$mcII$sp(int i) {
        return MurmurHash$.MODULE$.nextMagicB(i);
    }
}
