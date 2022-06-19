package scala;

import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/Option$$anonfun$orNull$1.class */
public final class Option$$anonfun$orNull$1 extends AbstractFunction0<A1> implements Serializable {
    public static final long serialVersionUID = 0;
    public final Predef$$less$colon$less ev$1;

    /* JADX WARN: Multi-variable type inference failed */
    public Option$$anonfun$orNull$1(Option option, Option<A> option2) {
        this.ev$1 = option2;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [A1, java.lang.Object] */
    @Override // scala.Function0
    public final A1 apply() {
        return this.ev$1.apply(null);
    }
}
