package scala;

import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/Unit$.class */
public final class Unit$ implements AnyValCompanion {
    public static final Unit$ MODULE$ = null;

    static {
        new Unit$();
    }

    private Unit$() {
        MODULE$ = this;
    }

    public BoxedUnit box(BoxedUnit boxedUnit) {
        return BoxedUnit.UNIT;
    }

    public String toString() {
        return "object scala.Unit";
    }

    public void unbox(Object obj) {
    }
}
