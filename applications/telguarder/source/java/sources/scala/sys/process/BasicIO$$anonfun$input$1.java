package scala.sys.process;

import java.io.OutputStream;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/BasicIO$$anonfun$input$1.class */
public final class BasicIO$$anonfun$input$1 extends AbstractFunction1<OutputStream, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final boolean connect$1;

    public BasicIO$$anonfun$input$1(boolean z) {
        this.connect$1 = z;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((OutputStream) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(OutputStream outputStream) {
        if (this.connect$1) {
            BasicIO$.MODULE$.connectToIn(outputStream);
        }
        outputStream.close();
    }
}
