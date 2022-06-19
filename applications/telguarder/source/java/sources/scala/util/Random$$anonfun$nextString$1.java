package scala.util;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction0$mcC$sp;
/* loaded from: classes3-dex2jar.jar:scala/util/Random$$anonfun$nextString$1.class */
public final class Random$$anonfun$nextString$1 extends AbstractFunction0$mcC$sp implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ Random $outer;

    public Random$$anonfun$nextString$1(Random random) {
        Objects.requireNonNull(random);
        this.$outer = random;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, char] */
    @Override // scala.Function0
    public final Object apply() {
        return this.$outer.scala$util$Random$$safeChar$1();
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public char apply$mcC$sp() {
        return this.$outer.scala$util$Random$$safeChar$1();
    }
}
