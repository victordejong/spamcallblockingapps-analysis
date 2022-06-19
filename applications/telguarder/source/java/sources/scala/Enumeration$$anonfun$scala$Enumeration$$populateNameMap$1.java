package scala;

import java.lang.reflect.Method;
import java.util.Objects;
import scala.Enumeration;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/Enumeration$$anonfun$scala$Enumeration$$populateNameMap$1.class */
public final class Enumeration$$anonfun$scala$Enumeration$$populateNameMap$1 extends AbstractFunction1<Method, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Enumeration $outer;

    public Enumeration$$anonfun$scala$Enumeration$$populateNameMap$1(Enumeration enumeration) {
        Objects.requireNonNull(enumeration);
        this.$outer = enumeration;
    }

    public final Object apply(Method method) {
        BoxedUnit boxedUnit;
        String name = method.getName();
        Enumeration.Value value = (Enumeration.Value) method.invoke(this.$outer, new Object[0]);
        if (value.scala$Enumeration$$outerEnum() == this.$outer) {
            boxedUnit = this.$outer.scala$Enumeration$$nmap().$plus$eq(new Tuple2<>(BoxesRunTime.boxToInteger(BoxesRunTime.unboxToInt(Enumeration.Val.class.getMethod("id", new Class[0]).invoke(value, new Object[0]))), name));
        } else {
            boxedUnit = BoxedUnit.UNIT;
        }
        return boxedUnit;
    }
}
