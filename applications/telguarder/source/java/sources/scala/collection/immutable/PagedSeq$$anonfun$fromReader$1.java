package scala.collection.immutable;

import java.io.Reader;
import scala.Serializable;
import scala.runtime.AbstractFunction3;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/PagedSeq$$anonfun$fromReader$1.class */
public final class PagedSeq$$anonfun$fromReader$1 extends AbstractFunction3<char[], Object, Object, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Reader source$3;

    public PagedSeq$$anonfun$fromReader$1(Reader reader) {
        this.source$3 = reader;
    }

    public final int apply(char[] cArr, int i, int i2) {
        return this.source$3.read(cArr, i, i2);
    }

    @Override // scala.Function3
    public final /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2, Object obj3) {
        return BoxesRunTime.boxToInteger(apply((char[]) obj, BoxesRunTime.unboxToInt(obj2), BoxesRunTime.unboxToInt(obj3)));
    }
}
