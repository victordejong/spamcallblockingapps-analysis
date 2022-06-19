package scala.runtime;

import scala.Function1$mcJD$sp;
import scala.PartialFunction$;
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractPartialFunction$mcJD$sp.class */
public abstract class AbstractPartialFunction$mcJD$sp extends AbstractPartialFunction<Object, Object> implements Function1$mcJD$sp {
    public AbstractPartialFunction$mcJD$sp() {
        Function1$mcJD$sp.Cclass.$init$(this);
    }

    @Override // scala.Function1$mcJD$sp
    public long apply(double d) {
        return apply$mcJD$sp(d);
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToLong(apply(BoxesRunTime.unboxToDouble(obj)));
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public long apply$mcJD$sp(double d) {
        return BoxesRunTime.unboxToLong(applyOrElse(BoxesRunTime.boxToDouble(d), PartialFunction$.MODULE$.empty()));
    }
}
