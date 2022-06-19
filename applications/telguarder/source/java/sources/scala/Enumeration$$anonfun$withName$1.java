package scala;

import scala.Enumeration;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/Enumeration$$anonfun$withName$1.class */
public final class Enumeration$$anonfun$withName$1 extends AbstractFunction1<Enumeration.Value, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final String s$1;

    public Enumeration$$anonfun$withName$1(Enumeration enumeration, String str) {
        this.s$1 = str;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((Enumeration.Value) obj));
    }

    public final boolean apply(Enumeration.Value value) {
        String obj = value.toString();
        String str = this.s$1;
        return obj != null ? obj.equals(str) : str == null;
    }
}
