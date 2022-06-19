package scala.collection.generic;

import scala.Predef$;
import scala.runtime.RichInt$;
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/SliceInterval$.class */
public final class SliceInterval$ {
    public static final SliceInterval$ MODULE$ = null;

    static {
        new SliceInterval$();
    }

    private SliceInterval$() {
        MODULE$ = this;
    }

    public SliceInterval apply(int i, int i2) {
        RichInt$ richInt$ = RichInt$.MODULE$;
        Predef$ predef$ = Predef$.MODULE$;
        int max$extension = richInt$.max$extension(i, 0);
        RichInt$ richInt$2 = RichInt$.MODULE$;
        Predef$ predef$2 = Predef$.MODULE$;
        int max$extension2 = richInt$2.max$extension(i2, 0);
        return max$extension2 <= max$extension ? new SliceInterval(max$extension, max$extension) : new SliceInterval(max$extension, max$extension2);
    }
}
