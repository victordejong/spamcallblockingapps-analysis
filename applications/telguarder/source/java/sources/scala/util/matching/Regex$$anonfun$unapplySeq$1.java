package scala.util.matching;

import java.util.regex.Matcher;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/util/matching/Regex$$anonfun$unapplySeq$1.class */
public final class Regex$$anonfun$unapplySeq$1 extends AbstractFunction1<Object, String> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Matcher m$1;

    public Regex$$anonfun$unapplySeq$1(Regex regex, Matcher matcher) {
        this.m$1 = matcher;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    public final String apply(int i) {
        return this.m$1.group(i);
    }
}
