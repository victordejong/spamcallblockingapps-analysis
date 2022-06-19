package scala.collection.parallel;

import scala.Function1;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$$anonfun$printDebugBuffer$1$$anonfun$apply$5.class */
public final class ParIterableLike$$anonfun$printDebugBuffer$1$$anonfun$apply$5 extends AbstractFunction1<String, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function1 append$1;

    public ParIterableLike$$anonfun$printDebugBuffer$1$$anonfun$apply$5(ParIterableLike$$anonfun$printDebugBuffer$1 parIterableLike$$anonfun$printDebugBuffer$1, Function1 function1) {
        this.append$1 = function1;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((String) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(String str) {
        this.append$1.apply(str);
    }
}
