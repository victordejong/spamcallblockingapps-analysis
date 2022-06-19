package scala.beans;

import java.lang.reflect.Method;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/beans/ScalaBeanInfo$$anonfun$1$$anonfun$apply$1.class */
public final class ScalaBeanInfo$$anonfun$1$$anonfun$apply$1 extends AbstractFunction1<String, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Method m$1;

    public ScalaBeanInfo$$anonfun$1$$anonfun$apply$1(ScalaBeanInfo$$anonfun$1 scalaBeanInfo$$anonfun$1, Method method) {
        this.m$1 = method;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((String) obj));
    }

    public final boolean apply(String str) {
        String name = this.m$1.getName();
        return str != null ? str.equals(name) : name == null;
    }
}
