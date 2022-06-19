package scala.beans;

import java.lang.reflect.Method;
import java.util.Objects;
import scala.Predef$;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/beans/ScalaBeanInfo$$anonfun$1.class */
public final class ScalaBeanInfo$$anonfun$1 extends AbstractFunction1<Method, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ScalaBeanInfo $outer;

    public ScalaBeanInfo$$anonfun$1(ScalaBeanInfo scalaBeanInfo) {
        Objects.requireNonNull(scalaBeanInfo);
        this.$outer = scalaBeanInfo;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((Method) obj));
    }

    public final boolean apply(Method method) {
        return Predef$.MODULE$.refArrayOps(this.$outer.scala$beans$ScalaBeanInfo$$methods).exists(new ScalaBeanInfo$$anonfun$1$$anonfun$apply$1(this, method));
    }
}
