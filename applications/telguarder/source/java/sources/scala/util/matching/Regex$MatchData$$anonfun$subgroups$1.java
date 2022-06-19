package scala.util.matching;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
import scala.util.matching.Regex;
/* loaded from: classes3-dex2jar.jar:scala/util/matching/Regex$MatchData$$anonfun$subgroups$1.class */
public final class Regex$MatchData$$anonfun$subgroups$1 extends AbstractFunction1<Object, String> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Regex.MatchData $outer;

    public Regex$MatchData$$anonfun$subgroups$1(Regex.MatchData matchData) {
        Objects.requireNonNull(matchData);
        this.$outer = matchData;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    public final String apply(int i) {
        return this.$outer.group(i);
    }
}
