package scala.util.matching;

import scala.Function1;
import scala.Option;
import scala.Serializable;
import scala.collection.AbstractIterator;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.util.matching.Regex;
/* loaded from: classes3-dex2jar.jar:scala/util/matching/Regex$$anonfun$replaceSomeIn$1.class */
public final class Regex$$anonfun$replaceSomeIn$1 extends AbstractFunction1<Regex.Match, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    public final AbstractIterator it$2;
    private final Function1 replacer$2;

    public Regex$$anonfun$replaceSomeIn$1(Regex regex, Function1 function1, AbstractIterator abstractIterator) {
        this.replacer$2 = function1;
        this.it$2 = abstractIterator;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((Regex.Match) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(Regex.Match match) {
        Option option = (Option) this.replacer$2.apply(match);
        if (!option.isEmpty()) {
            ((Regex.Replacement) this.it$2).replace((String) option.get());
        }
    }
}
