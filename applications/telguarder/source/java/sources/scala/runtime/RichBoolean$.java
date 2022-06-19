package scala.runtime;

import scala.math.Ordering$Boolean$;
/* loaded from: classes3-dex2jar.jar:scala/runtime/RichBoolean$.class */
public final class RichBoolean$ {
    public static final RichBoolean$ MODULE$ = null;

    static {
        new RichBoolean$();
    }

    private RichBoolean$() {
        MODULE$ = this;
    }

    public final boolean equals$extension(boolean z, Object obj) {
        boolean z2;
        if (obj instanceof RichBoolean) {
            if (z == ((RichBoolean) obj).self()) {
                z2 = true;
                return z2;
            }
        }
        z2 = false;
        return z2;
    }

    public final int hashCode$extension(boolean z) {
        return BoxesRunTime.boxToBoolean(z).hashCode();
    }

    public final Ordering$Boolean$ ord$extension(boolean z) {
        return Ordering$Boolean$.MODULE$;
    }
}
