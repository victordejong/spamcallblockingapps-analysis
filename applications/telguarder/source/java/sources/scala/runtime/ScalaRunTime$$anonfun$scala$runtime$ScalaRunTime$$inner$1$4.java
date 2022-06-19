package scala.runtime;

import scala.Serializable;
/* loaded from: classes3-dex2jar.jar:scala/runtime/ScalaRunTime$$anonfun$scala$runtime$ScalaRunTime$$inner$1$4.class */
public final class ScalaRunTime$$anonfun$scala$runtime$ScalaRunTime$$inner$1$4 extends AbstractFunction1<Object, String> implements Serializable {
    public static final long serialVersionUID = 0;
    private final int maxElements$1;

    public ScalaRunTime$$anonfun$scala$runtime$ScalaRunTime$$inner$1$4(int i) {
        this.maxElements$1 = i;
    }

    @Override // scala.Function1
    public final String apply(Object obj) {
        return ScalaRunTime$.MODULE$.scala$runtime$ScalaRunTime$$inner$1(obj, this.maxElements$1);
    }
}
