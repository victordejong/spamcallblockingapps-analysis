package scala;

import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/ScalaReflectionException$.class */
public final class ScalaReflectionException$ extends AbstractFunction1<String, ScalaReflectionException> implements Serializable {
    public static final ScalaReflectionException$ MODULE$ = null;

    static {
        new ScalaReflectionException$();
    }

    private ScalaReflectionException$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public ScalaReflectionException apply(String str) {
        return new ScalaReflectionException(str);
    }

    @Override // scala.runtime.AbstractFunction1, scala.Function1
    public final String toString() {
        return "ScalaReflectionException";
    }

    public Option<String> unapply(ScalaReflectionException scalaReflectionException) {
        return scalaReflectionException == null ? None$.MODULE$ : new Some(scalaReflectionException.msg());
    }
}
