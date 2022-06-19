package scala.collection.parallel;

import java.util.Objects;
import scala.Serializable;
import scala.collection.mutable.StringBuilder;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.ObjectRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/IterableSplitter$$anonfun$buildString$1.class */
public final class IterableSplitter$$anonfun$buildString$1 extends AbstractFunction1<String, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ IterableSplitter $outer;
    private final ObjectRef output$1;

    /* JADX WARN: Multi-variable type inference failed */
    public IterableSplitter$$anonfun$buildString$1(IterableSplitter iterableSplitter, IterableSplitter<T> iterableSplitter2) {
        Objects.requireNonNull(iterableSplitter);
        this.$outer = iterableSplitter;
        this.output$1 = iterableSplitter2;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((String) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(String str) {
        IterableSplitter iterableSplitter = this.$outer;
        this.output$1.elem = (T) new StringBuilder().append((Object) ((String) r2.elem)).append((Object) new StringBuilder().append((Object) str).append((Object) "\n").toString()).toString();
    }
}
