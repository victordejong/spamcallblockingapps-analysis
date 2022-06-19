package scala.collection.convert;

import java.util.List;
import scala.Serializable;
import scala.collection.mutable.Buffer;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/convert/DecorateAsJava$$anonfun$bufferAsJavaListConverter$1.class */
public final class DecorateAsJava$$anonfun$bufferAsJavaListConverter$1 extends AbstractFunction0<List<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Buffer b$1;

    public DecorateAsJava$$anonfun$bufferAsJavaListConverter$1(DecorateAsJava decorateAsJava, Buffer buffer) {
        this.b$1 = buffer;
    }

    @Override // scala.Function0
    public final List<A> apply() {
        return WrapAsJava$.MODULE$.bufferAsJavaList(this.b$1);
    }
}
