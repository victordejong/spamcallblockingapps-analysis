package scala.collection.parallel.mutable;

import scala.Serializable;
import scala.collection.generic.Growable;
import scala.collection.generic.Sizing;
import scala.runtime.AbstractFunction2;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/LazyCombiner$$anonfun$size$1.class */
public final class LazyCombiner$$anonfun$size$1 extends AbstractFunction2<Object, Buff, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public LazyCombiner$$anonfun$size$1(LazyCombiner<Elem, To, Buff> lazyCombiner) {
    }

    public final int apply(int i, Growable growable) {
        return i + ((Sizing) growable).size();
    }

    @Override // scala.Function2
    public final /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2) {
        return BoxesRunTime.boxToInteger(apply(BoxesRunTime.unboxToInt(obj), (Growable) obj2));
    }
}
