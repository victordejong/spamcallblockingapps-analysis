package scala.collection.immutable;

import scala.Serializable;
import scala.collection.Iterator;
import scala.runtime.AbstractFunction3;
import scala.runtime.BoxesRunTime;
import scala.runtime.ObjectRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/PagedSeq$$anonfun$fromStrings$1.class */
public final class PagedSeq$$anonfun$fromStrings$1 extends AbstractFunction3<char[], Object, Object, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ObjectRef current$1;
    private final Iterator source$2;

    public PagedSeq$$anonfun$fromStrings$1(Iterator iterator, ObjectRef objectRef) {
        this.source$2 = iterator;
        this.current$1 = objectRef;
    }

    public final int apply(char[] cArr, int i, int i2) {
        return PagedSeq$.MODULE$.scala$collection$immutable$PagedSeq$$more$1(cArr, i, i2, this.source$2, this.current$1);
    }

    @Override // scala.Function3
    public final /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2, Object obj3) {
        return BoxesRunTime.boxToInteger(apply((char[]) obj, BoxesRunTime.unboxToInt(obj2), BoxesRunTime.unboxToInt(obj3)));
    }
}
