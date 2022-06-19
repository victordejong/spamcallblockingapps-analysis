package scala;

import scala.collection.Seq;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function$$anonfun$chain$1.class */
public final class Function$$anonfun$chain$1 extends AbstractFunction1<a, a> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Seq fs$1;

    public Function$$anonfun$chain$1(Seq seq) {
        this.fs$1 = seq;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [a, java.lang.Object] */
    @Override // scala.Function1
    public final a apply(a a) {
        return this.fs$1.$div$colon(a, new Function$$anonfun$chain$1$$anonfun$apply$1(this));
    }
}
