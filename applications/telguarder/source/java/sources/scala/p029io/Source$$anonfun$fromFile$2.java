package scala.p029io;

import java.io.File;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* renamed from: scala.io.Source$$anonfun$fromFile$2 */
/* loaded from: classes3-dex2jar.jar:scala/io/Source$$anonfun$fromFile$2.class */
public final class Source$$anonfun$fromFile$2 extends AbstractFunction0<BufferedSource> implements Serializable {
    public static final long serialVersionUID = 0;
    private final int bufferSize$1;
    private final Codec codec$2;
    private final File file$1;

    public Source$$anonfun$fromFile$2(File file, int i, Codec codec) {
        this.file$1 = file;
        this.bufferSize$1 = i;
        this.codec$2 = codec;
    }

    @Override // scala.Function0
    public final BufferedSource apply() {
        return Source$.MODULE$.fromFile(this.file$1, this.bufferSize$1, this.codec$2);
    }
}
