package scala.collection.immutable;

import scala.Serializable;
import scala.collection.mutable.StringBuilder;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/PagedSeq$$anonfun$toString$1.class */
public final class PagedSeq$$anonfun$toString$1 extends AbstractFunction1<T, StringBuilder> implements Serializable {
    public static final long serialVersionUID = 0;
    private final StringBuilder buf$1;

    /* JADX WARN: Multi-variable type inference failed */
    public PagedSeq$$anonfun$toString$1(PagedSeq pagedSeq, PagedSeq<T> pagedSeq2) {
        this.buf$1 = pagedSeq2;
    }

    @Override // scala.Function1
    public final StringBuilder apply(T t) {
        return this.buf$1.append(t);
    }
}
