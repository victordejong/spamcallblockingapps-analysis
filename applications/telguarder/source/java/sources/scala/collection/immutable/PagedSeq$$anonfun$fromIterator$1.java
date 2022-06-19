package scala.collection.immutable;

import scala.Serializable;
import scala.collection.Iterator;
import scala.runtime.AbstractFunction3;
import scala.runtime.BoxesRunTime;
import scala.runtime.ScalaRunTime$;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/PagedSeq$$anonfun$fromIterator$1.class */
public final class PagedSeq$$anonfun$fromIterator$1 extends AbstractFunction3<Object, Object, Object, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Iterator source$1;

    public PagedSeq$$anonfun$fromIterator$1(Iterator iterator) {
        this.source$1 = iterator;
    }

    public final int apply(Object obj, int i, int i2) {
        int i3 = 0;
        while (i3 < i2 && this.source$1.hasNext()) {
            ScalaRunTime$.MODULE$.array_update(obj, i + i3, this.source$1.next());
            i3++;
        }
        int i4 = i3;
        if (i3 == 0) {
            i4 = -1;
        }
        return i4;
    }

    @Override // scala.Function3
    public final /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2, Object obj3) {
        return BoxesRunTime.boxToInteger(apply(obj, BoxesRunTime.unboxToInt(obj2), BoxesRunTime.unboxToInt(obj3)));
    }
}
