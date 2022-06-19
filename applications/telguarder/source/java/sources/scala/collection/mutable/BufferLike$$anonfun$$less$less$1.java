package scala.collection.mutable;

import java.util.Objects;
import scala.Serializable;
import scala.collection.script.Message;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/BufferLike$$anonfun$$less$less$1.class */
public final class BufferLike$$anonfun$$less$less$1 extends AbstractFunction1<Message<A>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Buffer $outer;

    public BufferLike$$anonfun$$less$less$1(Buffer buffer) {
        Objects.requireNonNull(buffer);
        this.$outer = buffer;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((Message) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(Message<A> message) {
        this.$outer.$less$less(message);
    }
}
