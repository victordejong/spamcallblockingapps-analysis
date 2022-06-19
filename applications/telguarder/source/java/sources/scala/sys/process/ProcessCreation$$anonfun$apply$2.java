package scala.sys.process;

import java.io.File;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessCreation$$anonfun$apply$2.class */
public final class ProcessCreation$$anonfun$apply$2 extends AbstractFunction1<File, ProcessBuilder> implements Serializable {
    public static final long serialVersionUID = 0;
    public final ProcessBuilder jpb$1;

    public ProcessCreation$$anonfun$apply$2(ProcessCreation processCreation, ProcessBuilder processBuilder) {
        this.jpb$1 = processBuilder;
    }

    public final ProcessBuilder apply(File file) {
        return this.jpb$1.directory(file);
    }
}
