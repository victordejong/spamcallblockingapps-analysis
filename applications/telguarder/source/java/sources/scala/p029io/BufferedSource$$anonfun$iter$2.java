package scala.p029io;

import scala.Serializable;
import scala.runtime.AbstractFunction1$mcZI$sp;
import scala.runtime.BoxesRunTime;
/* renamed from: scala.io.BufferedSource$$anonfun$iter$2 */
/* loaded from: classes3-dex2jar.jar:scala/io/BufferedSource$$anonfun$iter$2.class */
public final class BufferedSource$$anonfun$iter$2 extends AbstractFunction1$mcZI$sp implements Serializable {
    public static final long serialVersionUID = 0;

    public BufferedSource$$anonfun$iter$2(BufferedSource bufferedSource) {
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply(BoxesRunTime.unboxToInt(obj)));
    }

    @Override // scala.Function1$mcZI$sp
    public final boolean apply(int i) {
        return apply$mcZI$sp(i);
    }

    @Override // scala.runtime.AbstractFunction1, scala.Function1
    public boolean apply$mcZI$sp(int i) {
        return i != -1;
    }
}
