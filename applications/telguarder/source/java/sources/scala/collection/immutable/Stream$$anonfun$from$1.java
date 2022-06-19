package scala.collection.immutable;

import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stream$$anonfun$from$1.class */
public final class Stream$$anonfun$from$1 extends AbstractFunction0<Stream<Object>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final int start$1;
    private final int step$1;

    public Stream$$anonfun$from$1(int i, int i2) {
        this.start$1 = i;
        this.step$1 = i2;
    }

    @Override // scala.Function0
    public final Stream<Object> apply() {
        Stream$ stream$ = Stream$.MODULE$;
        int i = this.start$1;
        int i2 = this.step$1;
        return stream$.from(i + i2, i2);
    }
}
