package scala.runtime;

import scala.Function1$mcVF$sp;
import scala.PartialFunction$;
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractPartialFunction$mcVF$sp.class */
public abstract class AbstractPartialFunction$mcVF$sp extends AbstractPartialFunction<Object, BoxedUnit> implements Function1$mcVF$sp {
    public AbstractPartialFunction$mcVF$sp() {
        Function1$mcVF$sp.Cclass.$init$(this);
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public /* bridge */ /* synthetic */ BoxedUnit apply(Object obj) {
        apply(BoxesRunTime.unboxToFloat(obj));
        return BoxedUnit.UNIT;
    }

    @Override // scala.Function1$mcVF$sp
    public void apply(float f) {
        apply$mcVF$sp(f);
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public void apply$mcVF$sp(float f) {
        applyOrElse(BoxesRunTime.boxToFloat(f), PartialFunction$.MODULE$.empty());
    }
}
