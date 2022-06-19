package scala.util.control;

import scala.Serializable;
import scala.sys.SystemProperties$;
/* loaded from: classes3-dex2jar.jar:scala/util/control/NoStackTrace$.class */
public final class NoStackTrace$ implements Serializable {
    public static final NoStackTrace$ MODULE$ = null;
    private boolean _noSuppression = false;

    static {
        new NoStackTrace$();
    }

    private NoStackTrace$() {
        MODULE$ = this;
        _noSuppression_$eq(SystemProperties$.MODULE$.noTraceSupression().value());
    }

    private final boolean _noSuppression() {
        return this._noSuppression;
    }

    private final void _noSuppression_$eq(boolean z) {
        this._noSuppression = z;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public final boolean noSuppression() {
        return _noSuppression();
    }
}
