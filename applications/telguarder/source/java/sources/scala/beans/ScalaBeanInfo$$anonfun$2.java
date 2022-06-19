package scala.beans;

import java.beans.MethodDescriptor;
import java.lang.reflect.Method;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/beans/ScalaBeanInfo$$anonfun$2.class */
public final class ScalaBeanInfo$$anonfun$2 extends AbstractFunction1<Method, MethodDescriptor> implements Serializable {
    public static final long serialVersionUID = 0;

    public ScalaBeanInfo$$anonfun$2(ScalaBeanInfo scalaBeanInfo) {
    }

    public final MethodDescriptor apply(Method method) {
        return new MethodDescriptor(method);
    }
}
