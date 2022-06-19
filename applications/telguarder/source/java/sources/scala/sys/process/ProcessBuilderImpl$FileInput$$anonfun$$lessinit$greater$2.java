package scala.sys.process;

import java.io.File;
import java.io.FileInputStream;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessBuilderImpl$FileInput$$anonfun$$lessinit$greater$2.class */
public final class ProcessBuilderImpl$FileInput$$anonfun$$lessinit$greater$2 extends AbstractFunction0<FileInputStream> implements Serializable {
    public static final long serialVersionUID = 0;
    private final File file$2;

    public ProcessBuilderImpl$FileInput$$anonfun$$lessinit$greater$2(ProcessBuilder$ processBuilder$, File file) {
        this.file$2 = file;
    }

    @Override // scala.Function0
    public final FileInputStream apply() {
        return new FileInputStream(this.file$2);
    }
}
