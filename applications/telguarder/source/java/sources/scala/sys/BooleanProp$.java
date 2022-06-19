package scala.sys;

import scala.sys.BooleanProp;
/* loaded from: classes3-dex2jar.jar:scala/sys/BooleanProp$.class */
public final class BooleanProp$ {
    public static final BooleanProp$ MODULE$ = null;

    static {
        new BooleanProp$();
    }

    private BooleanProp$() {
        MODULE$ = this;
    }

    public boolean booleanPropAsBoolean(BooleanProp booleanProp) {
        return booleanProp.value();
    }

    public BooleanProp constant(String str, boolean z) {
        return new BooleanProp.ConstantImpl(str, z);
    }

    public <T> BooleanProp keyExists(String str) {
        return new BooleanProp.BooleanPropImpl(str, new BooleanProp$$anonfun$keyExists$1());
    }

    public <T> BooleanProp valueIsTrue(String str) {
        return new BooleanProp.BooleanPropImpl(str, new BooleanProp$$anonfun$valueIsTrue$1());
    }
}
