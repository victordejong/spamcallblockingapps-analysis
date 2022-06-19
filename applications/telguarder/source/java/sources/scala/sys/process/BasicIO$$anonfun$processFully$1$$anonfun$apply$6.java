package scala.sys.process;

import java.io.BufferedReader;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/BasicIO$$anonfun$processFully$1$$anonfun$apply$6.class */
public final class BasicIO$$anonfun$processFully$1$$anonfun$apply$6 extends AbstractFunction0<String> implements Serializable {
    public static final long serialVersionUID = 0;
    private final BufferedReader reader$1;

    public BasicIO$$anonfun$processFully$1$$anonfun$apply$6(BasicIO$$anonfun$processFully$1 basicIO$$anonfun$processFully$1, BufferedReader bufferedReader) {
        this.reader$1 = bufferedReader;
    }

    @Override // scala.Function0
    public final String apply() {
        return this.reader$1.readLine();
    }
}
