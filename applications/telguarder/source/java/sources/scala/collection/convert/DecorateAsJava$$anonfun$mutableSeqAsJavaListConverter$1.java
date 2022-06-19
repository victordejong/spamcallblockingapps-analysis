package scala.collection.convert;

import java.util.List;
import scala.Serializable;
import scala.collection.mutable.Seq;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/convert/DecorateAsJava$$anonfun$mutableSeqAsJavaListConverter$1.class */
public final class DecorateAsJava$$anonfun$mutableSeqAsJavaListConverter$1 extends AbstractFunction0<List<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Seq b$2;

    public DecorateAsJava$$anonfun$mutableSeqAsJavaListConverter$1(DecorateAsJava decorateAsJava, Seq seq) {
        this.b$2 = seq;
    }

    @Override // scala.Function0
    public final List<A> apply() {
        return WrapAsJava$.MODULE$.mutableSeqAsJavaList(this.b$2);
    }
}
