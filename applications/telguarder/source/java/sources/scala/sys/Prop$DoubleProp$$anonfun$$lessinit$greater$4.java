package scala.sys;

import scala.Predef$;
import scala.Serializable;
import scala.collection.immutable.StringOps;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/sys/Prop$DoubleProp$$anonfun$$lessinit$greater$4.class */
public final class Prop$DoubleProp$$anonfun$$lessinit$greater$4 extends AbstractFunction1<String, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public final double apply(String str) {
        Predef$ predef$ = Predef$.MODULE$;
        return new StringOps(str).toDouble();
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToDouble(apply((String) obj));
    }
}
