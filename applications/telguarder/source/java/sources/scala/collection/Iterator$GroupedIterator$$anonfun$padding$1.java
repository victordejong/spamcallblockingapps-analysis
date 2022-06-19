package scala.collection;

import java.util.Objects;
import scala.Function0;
import scala.Serializable;
import scala.collection.Iterator;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/Iterator$GroupedIterator$$anonfun$padding$1.class */
public final class Iterator$GroupedIterator$$anonfun$padding$1 extends AbstractFunction0<B> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Iterator.GroupedIterator $outer;

    public Iterator$GroupedIterator$$anonfun$padding$1(Iterator<A>.GroupedIterator<B> groupedIterator) {
        Objects.requireNonNull(groupedIterator);
        this.$outer = groupedIterator;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [B, java.lang.Object] */
    @Override // scala.Function0
    public final B apply() {
        return ((Function0) this.$outer.scala$collection$Iterator$GroupedIterator$$pad.get()).apply();
    }
}
