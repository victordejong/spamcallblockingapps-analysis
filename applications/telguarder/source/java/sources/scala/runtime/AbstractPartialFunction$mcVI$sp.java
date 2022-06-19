package scala.runtime;

import scala.Function1$mcVI$sp;
import scala.PartialFunction$;
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractPartialFunction$mcVI$sp.class */
public abstract class AbstractPartialFunction$mcVI$sp extends AbstractPartialFunction<Object, BoxedUnit> implements Function1$mcVI$sp {
    public AbstractPartialFunction$mcVI$sp() {
        Function1$mcVI$sp.Cclass.$init$(this);
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public /* bridge */ /* synthetic */ BoxedUnit apply(Object obj) {
        apply(BoxesRunTime.unboxToInt(obj));
        return BoxedUnit.UNIT;
    }

    @Override // scala.Function1$mcVI$sp
    public void apply(int i) {
        apply$mcVI$sp(i);
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public void apply$mcVI$sp(int i) {
        applyOrElse(BoxesRunTime.boxToInteger(i), PartialFunction$.MODULE$.empty());
    }
}
