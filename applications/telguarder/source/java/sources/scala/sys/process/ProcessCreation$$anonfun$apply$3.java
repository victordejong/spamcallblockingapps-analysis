package scala.sys.process;

import scala.MatchError;
import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessCreation$$anonfun$apply$3.class */
public final class ProcessCreation$$anonfun$apply$3 extends AbstractFunction1<Tuple2<String, String>, String> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ProcessBuilder jpb$1;

    public ProcessCreation$$anonfun$apply$3(ProcessCreation processCreation, ProcessBuilder processBuilder) {
        this.jpb$1 = processBuilder;
    }

    public final String apply(Tuple2<String, String> tuple2) {
        if (tuple2 != null) {
            return this.jpb$1.environment().put(tuple2.mo269_1(), tuple2.mo268_2());
        }
        throw new MatchError(tuple2);
    }
}
