package scala;

import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/UninitializedFieldError$.class */
public final class UninitializedFieldError$ extends AbstractFunction1<String, UninitializedFieldError> implements Serializable {
    public static final UninitializedFieldError$ MODULE$ = null;

    static {
        new UninitializedFieldError$();
    }

    private UninitializedFieldError$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public UninitializedFieldError apply(String str) {
        return new UninitializedFieldError(str);
    }

    @Override // scala.runtime.AbstractFunction1, scala.Function1
    public final String toString() {
        return "UninitializedFieldError";
    }

    public Option<String> unapply(UninitializedFieldError uninitializedFieldError) {
        return uninitializedFieldError == null ? None$.MODULE$ : new Some(uninitializedFieldError.msg());
    }
}
