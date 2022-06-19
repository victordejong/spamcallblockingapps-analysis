package scala.sys.process;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.sys.process.ProcessBuilder;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessCreation$$anonfun$cat$1.class */
public final class ProcessCreation$$anonfun$cat$1 extends AbstractFunction1<ProcessBuilder.Source, ProcessBuilder> implements Serializable {
    public static final long serialVersionUID = 0;

    public ProcessCreation$$anonfun$cat$1(ProcessCreation processCreation) {
    }

    public final ProcessBuilder apply(ProcessBuilder.Source source) {
        return source.cat();
    }
}
