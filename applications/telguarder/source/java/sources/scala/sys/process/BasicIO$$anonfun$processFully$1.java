package scala.sys.process;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import scala.Function1;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/BasicIO$$anonfun$processFully$1.class */
public final class BasicIO$$anonfun$processFully$1 extends AbstractFunction1<InputStream, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function1 processLine$1;

    public BasicIO$$anonfun$processFully$1(Function1 function1) {
        this.processLine$1 = function1;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((InputStream) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(InputStream inputStream) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        try {
            BasicIO$.MODULE$.processLinesFully(this.processLine$1, new BasicIO$$anonfun$processFully$1$$anonfun$apply$6(this, bufferedReader));
        } finally {
            bufferedReader.close();
        }
    }
}
