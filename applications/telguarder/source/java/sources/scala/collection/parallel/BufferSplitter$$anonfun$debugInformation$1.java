package scala.collection.parallel;

import java.util.Objects;
import scala.Function1;
import scala.Serializable;
import scala.collection.mutable.StringBuilder;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/BufferSplitter$$anonfun$debugInformation$1.class */
public final class BufferSplitter$$anonfun$debugInformation$1 extends AbstractFunction1<Function1<String, BoxedUnit>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ BufferSplitter $outer;

    public BufferSplitter$$anonfun$debugInformation$1(BufferSplitter<T> bufferSplitter) {
        Objects.requireNonNull(bufferSplitter);
        this.$outer = bufferSplitter;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((Function1) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(Function1<String, BoxedUnit> function1) {
        function1.apply("---------------");
        function1.apply("Buffer iterator");
        function1.apply(new StringBuilder().append((Object) "buffer: ").append(this.$outer.scala$collection$parallel$BufferSplitter$$buffer()).toString());
        function1.apply(new StringBuilder().append((Object) "index: ").append(BoxesRunTime.boxToInteger(this.$outer.scala$collection$parallel$BufferSplitter$$index())).toString());
        function1.apply(new StringBuilder().append((Object) "until: ").append(BoxesRunTime.boxToInteger(this.$outer.scala$collection$parallel$BufferSplitter$$until())).toString());
        function1.apply("---------------");
    }
}
