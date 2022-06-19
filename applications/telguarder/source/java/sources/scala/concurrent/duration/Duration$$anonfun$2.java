package scala.concurrent.duration;

import scala.Predef$;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
import scala.runtime.RichChar$;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/duration/Duration$$anonfun$2.class */
public final class Duration$$anonfun$2 extends AbstractFunction1<Object, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply(BoxesRunTime.unboxToChar(obj)));
    }

    public final boolean apply(char c) {
        RichChar$ richChar$ = RichChar$.MODULE$;
        Predef$ predef$ = Predef$.MODULE$;
        return richChar$.isLetter$extension(c);
    }
}
