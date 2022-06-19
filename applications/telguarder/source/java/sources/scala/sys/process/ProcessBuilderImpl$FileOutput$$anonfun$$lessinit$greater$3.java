package scala.sys.process;

import java.io.File;
import java.io.FileOutputStream;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessBuilderImpl$FileOutput$$anonfun$$lessinit$greater$3.class */
public final class ProcessBuilderImpl$FileOutput$$anonfun$$lessinit$greater$3 extends AbstractFunction0<FileOutputStream> implements Serializable {
    public static final long serialVersionUID = 0;
    private final boolean append$1;
    private final File file$1;

    public ProcessBuilderImpl$FileOutput$$anonfun$$lessinit$greater$3(ProcessBuilder$ processBuilder$, File file, boolean z) {
        this.file$1 = file;
        this.append$1 = z;
    }

    @Override // scala.Function0
    public final FileOutputStream apply() {
        return new FileOutputStream(this.file$1, this.append$1);
    }
}
