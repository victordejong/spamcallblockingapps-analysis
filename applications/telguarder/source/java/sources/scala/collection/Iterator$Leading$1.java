package scala.collection;

import java.util.Objects;
import scala.Function1;
import scala.Predef$;
import scala.collection.mutable.Queue;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/Iterator$Leading$1.class */
public class Iterator$Leading$1 extends AbstractIterator<A> {
    public final /* synthetic */ Iterator $outer;
    private final Queue<A> drained = new Queue<>();
    private boolean finished = false;
    private final Function1 p$5;
    private final BufferedIterator self$3;

    public Iterator$Leading$1(Iterator iterator, BufferedIterator bufferedIterator, Function1 function1) {
        Objects.requireNonNull(iterator);
        this.$outer = iterator;
        this.self$3 = bufferedIterator;
        this.p$5 = function1;
    }

    private Queue<A> drained() {
        return this.drained;
    }

    private boolean finished() {
        return this.finished;
    }

    private void finished_$eq(boolean z) {
        this.finished = z;
    }

    private boolean selfish() {
        return this.self$3.hasNext() && BoxesRunTime.unboxToBoolean(this.p$5.apply(this.self$3.head()));
    }

    public void finish() {
        Predef$.MODULE$.require(!finished());
        finished_$eq(true);
        while (selfish()) {
            drained().$plus$eq(this.self$3.next());
        }
    }

    @Override // scala.collection.Iterator
    public boolean hasNext() {
        return finished() ? drained().nonEmpty() : selfish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [A] */
    @Override // scala.collection.Iterator
    public A next() {
        return finished() ? drained().dequeue() : selfish() ? this.self$3.next() : Iterator$.MODULE$.empty().next();
    }

    public /* synthetic */ Iterator scala$collection$Iterator$Leading$$$outer() {
        return this.$outer;
    }
}
