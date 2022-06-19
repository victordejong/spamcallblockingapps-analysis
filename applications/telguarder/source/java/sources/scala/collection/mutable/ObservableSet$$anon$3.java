package scala.collection.mutable;

import scala.collection.script.Reset;
import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ObservableSet$$anon$3.class */
public final class ObservableSet$$anon$3 extends Reset<Nothing$> implements Undoable {
    public ObservableSet$$anon$3(ObservableSet<A> observableSet) {
    }

    @Override // scala.collection.mutable.Undoable
    public void undo() {
        throw new UnsupportedOperationException("cannot undo");
    }
}
