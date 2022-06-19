package scala.util.matching;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
import scala.util.matching.Regex;
/* loaded from: classes3-dex2jar.jar:scala/util/matching/Regex$$anonfun$unapplySeq$2.class */
public final class Regex$$anonfun$unapplySeq$2 extends AbstractFunction1<Object, String> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Regex.Match m$2;

    public Regex$$anonfun$unapplySeq$2(Regex regex, Regex.Match match) {
        this.m$2 = match;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    public final String apply(int i) {
        return this.m$2.group(i);
    }
}
