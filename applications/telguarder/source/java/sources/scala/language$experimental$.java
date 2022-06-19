package scala;

import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/language$experimental$.class */
public class language$experimental$ {
    public static final language$experimental$ MODULE$ = null;
    private volatile boolean bitmap$0;
    private languageFeature$experimental$macros macros;

    static {
        new language$experimental$();
    }

    public language$experimental$() {
        MODULE$ = this;
    }

    private languageFeature$experimental$macros macros$lzycompute() {
        synchronized (this) {
            if (!this.bitmap$0) {
                this.macros = languageFeature$experimental$macros$.MODULE$;
                this.bitmap$0 = true;
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.macros;
    }

    public languageFeature$experimental$macros macros() {
        return this.bitmap$0 ? this.macros : macros$lzycompute();
    }
}
