package scala.runtime;

import scala.Function1$mcFI$sp;
import scala.PartialFunction$;
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractPartialFunction$mcFI$sp.class */
public abstract class AbstractPartialFunction$mcFI$sp extends AbstractPartialFunction<Object, Object> implements Function1$mcFI$sp {
    public AbstractPartialFunction$mcFI$sp() {
        Function1$mcFI$sp.Cclass.$init$(this);
    }

    @Override // scala.Function1$mcFI$sp
    public float apply(int i) {
        return apply$mcFI$sp(i);
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToFloat(apply(BoxesRunTime.unboxToInt(obj)));
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public float apply$mcFI$sp(int i) {
        return BoxesRunTime.unboxToFloat(applyOrElse(BoxesRunTime.boxToInteger(i), PartialFunction$.MODULE$.empty()));
    }
}
