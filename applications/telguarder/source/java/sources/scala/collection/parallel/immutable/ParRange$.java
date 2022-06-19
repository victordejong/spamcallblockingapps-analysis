package scala.collection.parallel.immutable;

import scala.Serializable;
import scala.collection.immutable.Range;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/ParRange$.class */
public final class ParRange$ implements Serializable {
    public static final ParRange$ MODULE$ = null;

    static {
        new ParRange$();
    }

    private ParRange$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public ParRange apply(int i, int i2, int i3, boolean z) {
        return new ParRange(z ? new Range.Inclusive(i, i2, i3) : new Range(i, i2, i3));
    }
}
