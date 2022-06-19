package scala.sys.process;

import java.io.InputStream;
import java.net.URL;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessBuilderImpl$URLInput$$anonfun$$lessinit$greater$1.class */
public final class ProcessBuilderImpl$URLInput$$anonfun$$lessinit$greater$1 extends AbstractFunction0<InputStream> implements Serializable {
    public static final long serialVersionUID = 0;
    private final URL url$1;

    public ProcessBuilderImpl$URLInput$$anonfun$$lessinit$greater$1(ProcessBuilder$ processBuilder$, URL url) {
        this.url$1 = url;
    }

    @Override // scala.Function0
    public final InputStream apply() {
        return this.url$1.openStream();
    }
}
