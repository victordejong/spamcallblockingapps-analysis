package scala.collection.mutable;

import scala.collection.script.Reset;
import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ObservableMap$$anon$4.class */
public final class ObservableMap$$anon$4 extends Reset<Nothing$> implements Undoable {
    public ObservableMap$$anon$4(ObservableMap<A, B> observableMap) {
    }

    @Override // scala.collection.mutable.Undoable
    public void undo() {
        throw new UnsupportedOperationException("cannot undo");
    }
}
