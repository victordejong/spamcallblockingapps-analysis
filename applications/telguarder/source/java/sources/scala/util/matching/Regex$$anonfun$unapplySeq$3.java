package scala.util.matching;

import java.util.regex.Matcher;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/util/matching/Regex$$anonfun$unapplySeq$3.class */
public final class Regex$$anonfun$unapplySeq$3 extends AbstractFunction1<Object, String> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Matcher m$3;

    public Regex$$anonfun$unapplySeq$3(Regex regex, Matcher matcher) {
        this.m$3 = matcher;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    public final String apply(int i) {
        return this.m$3.group(i);
    }
}
