package scala;

import scala.languageFeature;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/language$.class */
public final class language$ {
    public static final language$ MODULE$ = null;
    private volatile byte bitmap$0;
    private languageFeature.dynamics dynamics;
    private languageFeature.existentials existentials;
    private languageFeature.higherKinds higherKinds;
    private languageFeature.implicitConversions implicitConversions;
    private languageFeature.postfixOps postfixOps;
    private languageFeature.reflectiveCalls reflectiveCalls;

    static {
        new language$();
    }

    private language$() {
        MODULE$ = this;
    }

    private languageFeature.dynamics dynamics$lzycompute() {
        synchronized (this) {
            if (((byte) (this.bitmap$0 & 1)) == 0) {
                this.dynamics = languageFeature$dynamics$.MODULE$;
                this.bitmap$0 = (byte) (this.bitmap$0 | 1);
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.dynamics;
    }

    private languageFeature.existentials existentials$lzycompute() {
        synchronized (this) {
            if (((byte) (this.bitmap$0 & 32)) == 0) {
                this.existentials = languageFeature$existentials$.MODULE$;
                this.bitmap$0 = (byte) (this.bitmap$0 | 32);
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.existentials;
    }

    private languageFeature.higherKinds higherKinds$lzycompute() {
        synchronized (this) {
            if (((byte) (this.bitmap$0 & 16)) == 0) {
                this.higherKinds = languageFeature$higherKinds$.MODULE$;
                this.bitmap$0 = (byte) (this.bitmap$0 | 16);
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.higherKinds;
    }

    private languageFeature.implicitConversions implicitConversions$lzycompute() {
        synchronized (this) {
            if (((byte) (this.bitmap$0 & 8)) == 0) {
                this.implicitConversions = languageFeature$implicitConversions$.MODULE$;
                this.bitmap$0 = (byte) (this.bitmap$0 | 8);
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.implicitConversions;
    }

    private languageFeature.postfixOps postfixOps$lzycompute() {
        synchronized (this) {
            if (((byte) (this.bitmap$0 & 2)) == 0) {
                this.postfixOps = languageFeature$postfixOps$.MODULE$;
                this.bitmap$0 = (byte) (this.bitmap$0 | 2);
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.postfixOps;
    }

    private languageFeature.reflectiveCalls reflectiveCalls$lzycompute() {
        synchronized (this) {
            if (((byte) (this.bitmap$0 & 4)) == 0) {
                this.reflectiveCalls = languageFeature$reflectiveCalls$.MODULE$;
                this.bitmap$0 = (byte) (this.bitmap$0 | 4);
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.reflectiveCalls;
    }

    public languageFeature.dynamics dynamics() {
        return ((byte) (this.bitmap$0 & 1)) == 0 ? dynamics$lzycompute() : this.dynamics;
    }

    public languageFeature.existentials existentials() {
        return ((byte) (this.bitmap$0 & 32)) == 0 ? existentials$lzycompute() : this.existentials;
    }

    public languageFeature.higherKinds higherKinds() {
        return ((byte) (this.bitmap$0 & 16)) == 0 ? higherKinds$lzycompute() : this.higherKinds;
    }

    public languageFeature.implicitConversions implicitConversions() {
        return ((byte) (this.bitmap$0 & 8)) == 0 ? implicitConversions$lzycompute() : this.implicitConversions;
    }

    public languageFeature.postfixOps postfixOps() {
        return ((byte) (this.bitmap$0 & 2)) == 0 ? postfixOps$lzycompute() : this.postfixOps;
    }

    public languageFeature.reflectiveCalls reflectiveCalls() {
        return ((byte) (this.bitmap$0 & 4)) == 0 ? reflectiveCalls$lzycompute() : this.reflectiveCalls;
    }
}
