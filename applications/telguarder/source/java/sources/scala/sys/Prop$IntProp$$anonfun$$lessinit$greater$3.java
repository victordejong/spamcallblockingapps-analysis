package scala.sys;

import scala.Predef$;
import scala.Serializable;
import scala.collection.immutable.StringOps;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/sys/Prop$IntProp$$anonfun$$lessinit$greater$3.class */
public final class Prop$IntProp$$anonfun$$lessinit$greater$3 extends AbstractFunction1<String, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public final int apply(String str) {
        Predef$ predef$ = Predef$.MODULE$;
        return new StringOps(str).toInt();
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToInteger(apply((String) obj));
    }
}
