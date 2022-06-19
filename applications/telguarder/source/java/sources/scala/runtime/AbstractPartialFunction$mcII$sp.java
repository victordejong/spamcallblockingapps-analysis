package scala.runtime;

import scala.Function1$mcII$sp;
import scala.PartialFunction$;
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractPartialFunction$mcII$sp.class */
public abstract class AbstractPartialFunction$mcII$sp extends AbstractPartialFunction<Object, Object> implements Function1$mcII$sp {
    public AbstractPartialFunction$mcII$sp() {
        Function1$mcII$sp.Cclass.$init$(this);
    }

    @Override // scala.Function1$mcII$sp
    public int apply(int i) {
        return apply$mcII$sp(i);
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToInteger(apply(BoxesRunTime.unboxToInt(obj)));
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public int apply$mcII$sp(int i) {
        return BoxesRunTime.unboxToInt(applyOrElse(BoxesRunTime.boxToInteger(i), PartialFunction$.MODULE$.empty()));
    }
}
