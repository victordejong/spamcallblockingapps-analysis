package scala.runtime;

import scala.Function1$mcVJ$sp;
import scala.PartialFunction$;
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractPartialFunction$mcVJ$sp.class */
public abstract class AbstractPartialFunction$mcVJ$sp extends AbstractPartialFunction<Object, BoxedUnit> implements Function1$mcVJ$sp {
    public AbstractPartialFunction$mcVJ$sp() {
        Function1$mcVJ$sp.Cclass.$init$(this);
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public /* bridge */ /* synthetic */ BoxedUnit apply(Object obj) {
        apply(BoxesRunTime.unboxToLong(obj));
        return BoxedUnit.UNIT;
    }

    @Override // scala.Function1$mcVJ$sp
    public void apply(long j) {
        apply$mcVJ$sp(j);
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public void apply$mcVJ$sp(long j) {
        applyOrElse(BoxesRunTime.boxToLong(j), PartialFunction$.MODULE$.empty());
    }
}
