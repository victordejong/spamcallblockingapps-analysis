package scala.collection.mutable;

import java.util.Objects;
import scala.collection.script.End$;
import scala.collection.script.Include;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ObservableBuffer$$anon$2.class */
public final class ObservableBuffer$$anon$2 extends Include<A> implements Undoable {
    private final /* synthetic */ ObservableBuffer $outer;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ObservableBuffer$$anon$2(ObservableBuffer observableBuffer, ObservableBuffer<A> observableBuffer2) {
        super(End$.MODULE$, observableBuffer2);
        Objects.requireNonNull(observableBuffer);
        this.$outer = observableBuffer;
    }

    @Override // scala.collection.mutable.Undoable
    public void undo() {
        this.$outer.trimEnd(1);
    }
}
