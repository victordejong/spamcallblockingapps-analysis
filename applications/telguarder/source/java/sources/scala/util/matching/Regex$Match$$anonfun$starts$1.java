package scala.util.matching;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction1$mcII$sp;
import scala.runtime.BoxesRunTime;
import scala.util.matching.Regex;
/* loaded from: classes3-dex2jar.jar:scala/util/matching/Regex$Match$$anonfun$starts$1.class */
public final class Regex$Match$$anonfun$starts$1 extends AbstractFunction1$mcII$sp implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ Regex.Match $outer;

    public Regex$Match$$anonfun$starts$1(Regex.Match match) {
        Objects.requireNonNull(match);
        this.$outer = match;
    }

    @Override // scala.Function1$mcII$sp
    public final int apply(int i) {
        return this.$outer.matcher().start(i);
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToInteger(apply(BoxesRunTime.unboxToInt(obj)));
    }

    @Override // scala.runtime.AbstractFunction1, scala.Function1
    public int apply$mcII$sp(int i) {
        return this.$outer.matcher().start(i);
    }
}
