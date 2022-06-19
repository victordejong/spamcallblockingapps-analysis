package scala;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Objects;
import scala.Enumeration;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/Enumeration$$anonfun$1.class */
public final class Enumeration$$anonfun$1 extends AbstractFunction1<Method, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Enumeration $outer;
    private final Field[] fields$1;

    public Enumeration$$anonfun$1(Enumeration enumeration, Field[] fieldArr) {
        Objects.requireNonNull(enumeration);
        this.$outer = enumeration;
        this.fields$1 = fieldArr;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((Method) obj));
    }

    public final boolean apply(Method method) {
        Class<?> declaringClass;
        return Predef$.MODULE$.refArrayOps(method.getParameterTypes()).isEmpty() && Enumeration.Value.class.isAssignableFrom(method.getReturnType()) && ((declaringClass = method.getDeclaringClass()) == null || !declaringClass.equals(Enumeration.class)) && this.$outer.scala$Enumeration$$isValDef$1(method, this.fields$1);
    }
}
