package scala.collection.convert;

import java.util.List;
import scala.Serializable;
import scala.collection.mutable.Buffer;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/convert/DecorateAsScala$$anonfun$asScalaBufferConverter$1.class */
public final class DecorateAsScala$$anonfun$asScalaBufferConverter$1 extends AbstractFunction0<Buffer<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final List l$1;

    public DecorateAsScala$$anonfun$asScalaBufferConverter$1(DecorateAsScala decorateAsScala, List list) {
        this.l$1 = list;
    }

    @Override // scala.Function0
    public final Buffer<A> apply() {
        return WrapAsScala$.MODULE$.asScalaBuffer(this.l$1);
    }
}
