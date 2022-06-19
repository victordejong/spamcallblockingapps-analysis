package scala.p029io;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction0$mcI$sp;
/* renamed from: scala.io.BufferedSource$$anonfun$iter$1 */
/* loaded from: classes3-dex2jar.jar:scala/io/BufferedSource$$anonfun$iter$1.class */
public final class BufferedSource$$anonfun$iter$1 extends AbstractFunction0$mcI$sp implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ BufferedSource $outer;

    public BufferedSource$$anonfun$iter$1(BufferedSource bufferedSource) {
        Objects.requireNonNull(bufferedSource);
        this.$outer = bufferedSource;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, int] */
    @Override // scala.Function0
    public final Object apply() {
        return this.$outer.codec().wrap(new BufferedSource$$anonfun$iter$1$$anonfun$apply$mcI$sp$1(this));
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public int apply$mcI$sp() {
        return this.$outer.codec().wrap(new BufferedSource$$anonfun$iter$1$$anonfun$apply$mcI$sp$1(this));
    }

    public /* synthetic */ BufferedSource scala$io$BufferedSource$$anonfun$$$outer() {
        return this.$outer;
    }
}
