package scala.collection.mutable;

import java.util.Objects;
import scala.collection.script.Include;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ObservableSet$$anon$1.class */
public final class ObservableSet$$anon$1 extends Include<A> implements Undoable {
    private final /* synthetic */ ObservableSet $outer;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ObservableSet$$anon$1(ObservableSet observableSet, ObservableSet<A> observableSet2) {
        super(observableSet2);
        Objects.requireNonNull(observableSet);
        this.$outer = observableSet;
    }

    @Override // scala.collection.mutable.Undoable
    public void undo() {
        this.$outer.$minus$eq((ObservableSet) elem());
    }
}
