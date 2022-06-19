package scala.collection.mutable;

import java.io.ObjectInputStream;
import java.util.Objects;
import scala.Serializable;
import scala.collection.mutable.LinkedHashSet;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/LinkedHashSet$$anonfun$readObject$1.class */
public final class LinkedHashSet$$anonfun$readObject$1 extends AbstractFunction0<LinkedHashSet.Entry<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ LinkedHashSet $outer;
    private final ObjectInputStream in$1;

    /* JADX WARN: Multi-variable type inference failed */
    public LinkedHashSet$$anonfun$readObject$1(LinkedHashSet linkedHashSet, LinkedHashSet<A> linkedHashSet2) {
        Objects.requireNonNull(linkedHashSet);
        this.$outer = linkedHashSet;
        this.in$1 = linkedHashSet2;
    }

    @Override // scala.Function0
    public final LinkedHashSet.Entry<A> apply() {
        return this.$outer.createNewEntry((LinkedHashSet) this.in$1.readObject(), (Object) null);
    }
}
