package scala.runtime;

import scala.Function1$mcZI$sp;
import scala.PartialFunction$;
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractPartialFunction$mcZI$sp.class */
public abstract class AbstractPartialFunction$mcZI$sp extends AbstractPartialFunction<Object, Object> implements Function1$mcZI$sp {
    public AbstractPartialFunction$mcZI$sp() {
        Function1$mcZI$sp.Cclass.$init$(this);
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply(BoxesRunTime.unboxToInt(obj)));
    }

    @Override // scala.Function1$mcZI$sp
    public boolean apply(int i) {
        return apply$mcZI$sp(i);
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public boolean apply$mcZI$sp(int i) {
        return BoxesRunTime.unboxToBoolean(applyOrElse(BoxesRunTime.boxToInteger(i), PartialFunction$.MODULE$.empty()));
    }
}
