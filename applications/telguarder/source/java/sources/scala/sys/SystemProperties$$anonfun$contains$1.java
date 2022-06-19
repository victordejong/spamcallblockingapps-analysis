package scala.sys;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction0$mcZ$sp;
/* loaded from: classes3-dex2jar.jar:scala/sys/SystemProperties$$anonfun$contains$1.class */
public final class SystemProperties$$anonfun$contains$1 extends AbstractFunction0$mcZ$sp implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ SystemProperties $outer;
    public final String key$2;

    public SystemProperties$$anonfun$contains$1(SystemProperties systemProperties, String str) {
        Objects.requireNonNull(systemProperties);
        this.$outer = systemProperties;
        this.key$2 = str;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [boolean, java.lang.Object] */
    @Override // scala.Function0
    public final Object apply() {
        return this.$outer.scala$sys$SystemProperties$$super$contains(this.key$2);
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public boolean apply$mcZ$sp() {
        return this.$outer.scala$sys$SystemProperties$$super$contains(this.key$2);
    }
}
