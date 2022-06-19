package scala.collection.mutable;

import scala.collection.script.Script;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ObservableBuffer$$anon$1.class */
public final class ObservableBuffer$$anon$1 extends Script<A> implements Undoable {
    public ObservableBuffer$$anon$1(ObservableBuffer<A> observableBuffer) {
    }

    @Override // scala.collection.mutable.Undoable
    public void undo() {
        throw new UnsupportedOperationException("cannot undo");
    }
}
