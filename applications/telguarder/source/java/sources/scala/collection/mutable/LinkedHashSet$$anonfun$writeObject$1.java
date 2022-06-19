package scala.collection.mutable;

import java.io.ObjectOutputStream;
import scala.Serializable;
import scala.collection.mutable.LinkedHashSet;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/LinkedHashSet$$anonfun$writeObject$1.class */
public final class LinkedHashSet$$anonfun$writeObject$1 extends AbstractFunction1<LinkedHashSet.Entry<A>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ObjectOutputStream out$1;

    /* JADX WARN: Multi-variable type inference failed */
    public LinkedHashSet$$anonfun$writeObject$1(LinkedHashSet linkedHashSet, LinkedHashSet<A> linkedHashSet2) {
        this.out$1 = linkedHashSet2;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((LinkedHashSet.Entry) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(LinkedHashSet.Entry<A> entry) {
        this.out$1.writeObject(entry.key());
    }
}
