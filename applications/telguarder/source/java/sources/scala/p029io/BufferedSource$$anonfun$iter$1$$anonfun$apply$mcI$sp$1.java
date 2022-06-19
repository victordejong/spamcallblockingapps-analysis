package scala.p029io;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction0$mcI$sp;
/* renamed from: scala.io.BufferedSource$$anonfun$iter$1$$anonfun$apply$mcI$sp$1 */
/* loaded from: classes3-dex2jar.jar:scala/io/BufferedSource$$anonfun$iter$1$$anonfun$apply$mcI$sp$1.class */
public final class BufferedSource$$anonfun$iter$1$$anonfun$apply$mcI$sp$1 extends AbstractFunction0$mcI$sp implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ BufferedSource$$anonfun$iter$1 $outer;

    public BufferedSource$$anonfun$iter$1$$anonfun$apply$mcI$sp$1(BufferedSource$$anonfun$iter$1 bufferedSource$$anonfun$iter$1) {
        Objects.requireNonNull(bufferedSource$$anonfun$iter$1);
        this.$outer = bufferedSource$$anonfun$iter$1;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object, int] */
    @Override // scala.Function0
    public final Object apply() {
        return this.$outer.$outer.scala$io$BufferedSource$$charReader().read();
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public int apply$mcI$sp() {
        return this.$outer.$outer.scala$io$BufferedSource$$charReader().read();
    }
}
