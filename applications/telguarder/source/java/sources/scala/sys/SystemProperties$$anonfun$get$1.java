package scala.sys;

import scala.Option;
import scala.Option$;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/sys/SystemProperties$$anonfun$get$1.class */
public final class SystemProperties$$anonfun$get$1 extends AbstractFunction0<Option<String>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final String key$1;

    public SystemProperties$$anonfun$get$1(SystemProperties systemProperties, String str) {
        this.key$1 = str;
    }

    @Override // scala.Function0
    public final Option<String> apply() {
        return Option$.MODULE$.apply(System.getProperty(this.key$1));
    }
}
