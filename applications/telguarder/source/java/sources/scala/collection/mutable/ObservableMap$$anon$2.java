package scala.collection.mutable;

import java.util.Objects;
import scala.Some;
import scala.Tuple2;
import scala.collection.script.Update;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ObservableMap$$anon$2.class */
public final class ObservableMap$$anon$2 extends Update<Tuple2<A, B>> implements Undoable {
    private final /* synthetic */ ObservableMap $outer;
    private final Object key$1;
    private final Some x2$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ObservableMap$$anon$2(ObservableMap observableMap, Object obj, Object obj2, Some some) {
        super(new Tuple2(obj, obj2));
        Objects.requireNonNull(observableMap);
        this.$outer = observableMap;
        this.key$1 = obj;
        this.x2$1 = some;
    }

    @Override // scala.collection.mutable.Undoable
    public void undo() {
        this.$outer.$plus$eq(new Tuple2(this.key$1, this.x2$1.m362x()));
    }
}
