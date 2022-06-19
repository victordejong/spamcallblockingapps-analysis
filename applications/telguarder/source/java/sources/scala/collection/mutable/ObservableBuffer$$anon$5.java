package scala.collection.mutable;

import java.util.Objects;
import scala.Predef$;
import scala.collection.script.Index;
import scala.collection.script.Remove;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ObservableBuffer$$anon$5.class */
public final class ObservableBuffer$$anon$5 extends Remove<A> implements Undoable {
    private final /* synthetic */ ObservableBuffer $outer;
    private final int n$2;
    private final Object oldelement$2;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ObservableBuffer$$anon$5(ObservableBuffer observableBuffer, Object obj, int i) {
        super(new Index(i), obj);
        Objects.requireNonNull(observableBuffer);
        this.$outer = observableBuffer;
        this.oldelement$2 = obj;
        this.n$2 = i;
    }

    @Override // scala.collection.mutable.Undoable
    public void undo() {
        this.$outer.insert(this.n$2, Predef$.MODULE$.genericWrapArray(new Object[]{this.oldelement$2}));
    }
}
