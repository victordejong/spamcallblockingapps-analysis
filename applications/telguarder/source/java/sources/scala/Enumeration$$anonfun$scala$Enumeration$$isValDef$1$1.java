package scala;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/Enumeration$$anonfun$scala$Enumeration$$isValDef$1$1.class */
public final class Enumeration$$anonfun$scala$Enumeration$$isValDef$1$1 extends AbstractFunction1<Field, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Method m$1;

    public Enumeration$$anonfun$scala$Enumeration$$isValDef$1$1(Enumeration enumeration, Method method) {
        this.m$1 = method;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((Field) obj));
    }

    public final boolean apply(Field field) {
        boolean z;
        String name = field.getName();
        String name2 = this.m$1.getName();
        if (name != null ? name.equals(name2) : name2 == null) {
            Class<?> type = field.getType();
            Class<?> returnType = this.m$1.getReturnType();
            if (type != null ? type.equals(returnType) : returnType == null) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }
}
