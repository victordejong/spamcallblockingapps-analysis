package scala.collection.mutable;

import java.util.Objects;
import scala.collection.script.Index;
import scala.collection.script.Update;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ObservableBuffer$$anon$4.class */
public final class ObservableBuffer$$anon$4 extends Update<A> implements Undoable {
    private final /* synthetic */ ObservableBuffer $outer;
    private final int n$1;
    private final Object oldelement$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ObservableBuffer$$anon$4(ObservableBuffer observableBuffer, Object obj, int i, Object obj2) {
        super(new Index(i), obj2);
        Objects.requireNonNull(observableBuffer);
        this.$outer = observableBuffer;
        this.oldelement$1 = obj;
        this.n$1 = i;
    }

    @Override // scala.collection.mutable.Undoable
    public void undo() {
        this.$outer.update(this.n$1, this.oldelement$1);
    }
}
