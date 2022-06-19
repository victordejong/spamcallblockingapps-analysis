package scala.sys;

import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/sys/SystemProperties$$anonfun$$minus$eq$1.class */
public final class SystemProperties$$anonfun$$minus$eq$1 extends AbstractFunction0<String> implements Serializable {
    public static final long serialVersionUID = 0;
    private final String key$3;

    public SystemProperties$$anonfun$$minus$eq$1(SystemProperties systemProperties, String str) {
        this.key$3 = str;
    }

    @Override // scala.Function0
    public final String apply() {
        return System.clearProperty(this.key$3);
    }
}
