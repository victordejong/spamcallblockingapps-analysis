package scala.sys;

import java.io.File;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/sys/Prop$FileProp$$anonfun$$lessinit$greater$1.class */
public final class Prop$FileProp$$anonfun$$lessinit$greater$1 extends AbstractFunction1<String, File> implements Serializable {
    public static final long serialVersionUID = 0;

    public final File apply(String str) {
        return new File(str);
    }
}
