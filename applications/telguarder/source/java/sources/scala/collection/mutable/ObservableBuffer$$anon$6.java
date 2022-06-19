package scala.collection.mutable;

import scala.collection.script.Reset;
import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ObservableBuffer$$anon$6.class */
public final class ObservableBuffer$$anon$6 extends Reset<Nothing$> implements Undoable {
    public ObservableBuffer$$anon$6(ObservableBuffer<A> observableBuffer) {
    }

    @Override // scala.collection.mutable.Undoable
    public void undo() {
        throw new UnsupportedOperationException("cannot undo");
    }
}
