package scala.runtime;

import scala.Function1$mcVD$sp;
import scala.PartialFunction$;
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractPartialFunction$mcVD$sp.class */
public abstract class AbstractPartialFunction$mcVD$sp extends AbstractPartialFunction<Object, BoxedUnit> implements Function1$mcVD$sp {
    public AbstractPartialFunction$mcVD$sp() {
        Function1$mcVD$sp.Cclass.$init$(this);
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public /* bridge */ /* synthetic */ BoxedUnit apply(Object obj) {
        apply(BoxesRunTime.unboxToDouble(obj));
        return BoxedUnit.UNIT;
    }

    @Override // scala.Function1$mcVD$sp
    public void apply(double d) {
        apply$mcVD$sp(d);
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public void apply$mcVD$sp(double d) {
        applyOrElse(BoxesRunTime.boxToDouble(d), PartialFunction$.MODULE$.empty());
    }
}
