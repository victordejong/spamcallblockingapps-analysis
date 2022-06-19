package scala;

import java.util.NoSuchElementException;
import scala.runtime.AbstractFunction0;
import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/Enumeration$$anonfun$withName$2.class */
public final class Enumeration$$anonfun$withName$2 extends AbstractFunction0<Nothing$> implements Serializable {
    public static final long serialVersionUID = 0;
    public final String s$1;

    public Enumeration$$anonfun$withName$2(Enumeration enumeration, String str) {
        this.s$1 = str;
    }

    @Override // scala.Function0
    public final Nothing$ apply() {
        throw new NoSuchElementException(new StringContext(Predef$.MODULE$.wrapRefArray(new String[]{"No value found for '", "'"})).m361s(Predef$.MODULE$.genericWrapArray(new Object[]{this.s$1})));
    }
}
