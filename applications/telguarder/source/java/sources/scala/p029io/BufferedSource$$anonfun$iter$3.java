package scala.p029io;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* renamed from: scala.io.BufferedSource$$anonfun$iter$3 */
/* loaded from: classes3-dex2jar.jar:scala/io/BufferedSource$$anonfun$iter$3.class */
public final class BufferedSource$$anonfun$iter$3 extends AbstractFunction1<Object, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public BufferedSource$$anonfun$iter$3(BufferedSource bufferedSource) {
    }

    public final char apply(int i) {
        return (char) i;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToCharacter(apply(BoxesRunTime.unboxToInt(obj)));
    }
}
