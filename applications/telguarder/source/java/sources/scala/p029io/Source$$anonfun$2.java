package scala.p029io;

import java.io.InputStream;
import scala.Function0;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* renamed from: scala.io.Source$$anonfun$2 */
/* loaded from: classes3-dex2jar.jar:scala/io/Source$$anonfun$2.class */
public final class Source$$anonfun$2 extends AbstractFunction0<BufferedSource> implements Serializable {
    public static final long serialVersionUID = 0;
    private final int bufferSize$2;
    private final Function0 close$1;
    private final Codec codec$3;
    private final InputStream inputStream$2;
    private final Function0 reset$1;

    public Source$$anonfun$2(InputStream inputStream, int i, Function0 function0, Function0 function02, Codec codec) {
        this.inputStream$2 = inputStream;
        this.bufferSize$2 = i;
        this.reset$1 = function0;
        this.close$1 = function02;
        this.codec$3 = codec;
    }

    @Override // scala.Function0
    public final BufferedSource apply() {
        return Source$.MODULE$.createBufferedSource(this.inputStream$2, this.bufferSize$2, this.reset$1, this.close$1, this.codec$3);
    }
}
