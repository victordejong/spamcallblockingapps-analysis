package scala.runtime;

import scala.Function1$mcJI$sp;
import scala.PartialFunction$;
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractPartialFunction$mcJI$sp.class */
public abstract class AbstractPartialFunction$mcJI$sp extends AbstractPartialFunction<Object, Object> implements Function1$mcJI$sp {
    public AbstractPartialFunction$mcJI$sp() {
        Function1$mcJI$sp.Cclass.$init$(this);
    }

    @Override // scala.Function1$mcJI$sp
    public long apply(int i) {
        return apply$mcJI$sp(i);
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToLong(apply(BoxesRunTime.unboxToInt(obj)));
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public long apply$mcJI$sp(int i) {
        return BoxesRunTime.unboxToLong(applyOrElse(BoxesRunTime.boxToInteger(i), PartialFunction$.MODULE$.empty()));
    }
}
