package scala.sys;

import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/sys/SystemProperties$$anonfun$$plus$eq$1.class */
public final class SystemProperties$$anonfun$$plus$eq$1 extends AbstractFunction0<String> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Tuple2 kv$1;

    public SystemProperties$$anonfun$$plus$eq$1(SystemProperties systemProperties, Tuple2 tuple2) {
        this.kv$1 = tuple2;
    }

    @Override // scala.Function0
    public final String apply() {
        return System.setProperty((String) this.kv$1.mo269_1(), (String) this.kv$1.mo268_2());
    }
}
