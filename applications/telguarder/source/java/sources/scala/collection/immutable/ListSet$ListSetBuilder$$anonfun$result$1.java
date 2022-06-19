package scala.collection.immutable;

import scala.Serializable;
import scala.collection.immutable.ListSet;
import scala.runtime.AbstractFunction2;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/ListSet$ListSetBuilder$$anonfun$result$1.class */
public final class ListSet$ListSetBuilder$$anonfun$result$1 extends AbstractFunction2<ListSet<Elem>, Elem, ListSet<Elem>> implements Serializable {
    public static final long serialVersionUID = 0;

    public ListSet$ListSetBuilder$$anonfun$result$1(ListSet.ListSetBuilder<Elem> listSetBuilder) {
    }

    @Override // scala.Function2
    public final /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2) {
        return apply((ListSet<ListSet>) obj, (ListSet) obj2);
    }

    public final ListSet<Elem> apply(ListSet<Elem> listSet, Elem elem) {
        return listSet.scala$collection$immutable$ListSet$$unchecked_$plus(elem);
    }
}
