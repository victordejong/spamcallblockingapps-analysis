package scala.util.control;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/util/control/Exception$$anonfun$catching$1.class */
public final class Exception$$anonfun$catching$1 extends AbstractFunction1<Class<?>, String> implements Serializable {
    public static final long serialVersionUID = 0;

    public final String apply(Class<?> cls) {
        return cls.getName();
    }
}
