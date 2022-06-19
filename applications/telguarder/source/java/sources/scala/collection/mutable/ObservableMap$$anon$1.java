package scala.collection.mutable;

import java.util.Objects;
import scala.Tuple2;
import scala.collection.script.Include;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ObservableMap$$anon$1.class */
public final class ObservableMap$$anon$1 extends Include<Tuple2<A, B>> implements Undoable {
    private final /* synthetic */ ObservableMap $outer;
    private final Object key$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ObservableMap$$anon$1(ObservableMap observableMap, Object obj, Object obj2) {
        super(new Tuple2(obj, obj2));
        Objects.requireNonNull(observableMap);
        this.$outer = observableMap;
        this.key$1 = obj;
    }

    @Override // scala.collection.mutable.Undoable
    public void undo() {
        this.$outer.$minus$eq((ObservableMap) this.key$1);
    }
}
