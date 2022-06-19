package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction0;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/Enumeration$$anonfun$scala$Enumeration$$nameOf$1.class */
public final class Enumeration$$anonfun$scala$Enumeration$$nameOf$1 extends AbstractFunction0<String> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Enumeration $outer;
    private final int i$1;

    public Enumeration$$anonfun$scala$Enumeration$$nameOf$1(Enumeration enumeration, int i) {
        Objects.requireNonNull(enumeration);
        this.$outer = enumeration;
        this.i$1 = i;
    }

    @Override // scala.Function0
    public final String apply() {
        this.$outer.scala$Enumeration$$populateNameMap();
        return this.$outer.scala$Enumeration$$nmap().apply(BoxesRunTime.boxToInteger(this.i$1));
    }
}
