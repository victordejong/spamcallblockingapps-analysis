package scala.collection.mutable;

import java.util.Objects;
import scala.Some;
import scala.Tuple2;
import scala.collection.script.Remove;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ObservableMap$$anon$3.class */
public final class ObservableMap$$anon$3 extends Remove<Tuple2<A, B>> implements Undoable {
    private final /* synthetic */ ObservableMap $outer;
    private final Object key$2;
    private final Some x2$2;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ObservableMap$$anon$3(ObservableMap observableMap, Some some, Object obj) {
        super(new Tuple2(obj, some.m362x()));
        Objects.requireNonNull(observableMap);
        this.$outer = observableMap;
        this.x2$2 = some;
        this.key$2 = obj;
    }

    @Override // scala.collection.mutable.Undoable
    public void undo() {
        this.$outer.update(this.key$2, this.x2$2.m362x());
    }
}
