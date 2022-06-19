package scala.sys.process;

import java.io.InputStream;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/BasicIO$$anonfun$toStdErr$1.class */
public final class BasicIO$$anonfun$toStdErr$1 extends AbstractFunction1<InputStream, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((InputStream) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(InputStream inputStream) {
        BasicIO$.MODULE$.transferFully(inputStream, package$.MODULE$.stderr());
    }
}
