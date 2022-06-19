package scala.p029io;

import java.io.InputStream;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* renamed from: scala.io.Source$$anonfun$3 */
/* loaded from: classes3-dex2jar.jar:scala/io/Source$$anonfun$3.class */
public final class Source$$anonfun$3 extends AbstractFunction0<BufferedSource> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Codec codec$1;
    private final InputStream is$1;

    public Source$$anonfun$3(InputStream inputStream, Codec codec) {
        this.is$1 = inputStream;
        this.codec$1 = codec;
    }

    @Override // scala.Function0
    public final BufferedSource apply() {
        return Source$.MODULE$.fromInputStream(this.is$1, this.codec$1);
    }
}
