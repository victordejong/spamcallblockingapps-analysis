package scala.collection.convert;

import java.util.List;
import scala.Serializable;
import scala.collection.Seq;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/convert/DecorateAsJava$$anonfun$seqAsJavaListConverter$1.class */
public final class DecorateAsJava$$anonfun$seqAsJavaListConverter$1 extends AbstractFunction0<List<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Seq b$3;

    public DecorateAsJava$$anonfun$seqAsJavaListConverter$1(DecorateAsJava decorateAsJava, Seq seq) {
        this.b$3 = seq;
    }

    @Override // scala.Function0
    public final List<A> apply() {
        return WrapAsJava$.MODULE$.seqAsJavaList(this.b$3);
    }
}
