package scala.util.matching;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
import scala.util.matching.Regex;
/* loaded from: classes3-dex2jar.jar:scala/util/matching/Regex$Groups$$anonfun$unapplySeq$4.class */
public final class Regex$Groups$$anonfun$unapplySeq$4 extends AbstractFunction1<Object, String> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Regex.Match m$4;

    public Regex$Groups$$anonfun$unapplySeq$4(Regex.Match match) {
        this.m$4 = match;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    public final String apply(int i) {
        return this.m$4.group(i);
    }
}
