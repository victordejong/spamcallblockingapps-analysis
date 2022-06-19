package scala.util.matching;

import java.util.regex.Matcher;
import scala.Function1;
import scala.Serializable;
import scala.collection.AbstractIterator;
import scala.runtime.AbstractFunction1;
import scala.util.matching.Regex;
/* loaded from: classes3-dex2jar.jar:scala/util/matching/Regex$$anonfun$replaceAllIn$1.class */
public final class Regex$$anonfun$replaceAllIn$1 extends AbstractFunction1<Regex.Match, Matcher> implements Serializable {
    public static final long serialVersionUID = 0;
    private final AbstractIterator it$1;
    private final Function1 replacer$1;

    public Regex$$anonfun$replaceAllIn$1(Regex regex, Function1 function1, AbstractIterator abstractIterator) {
        this.replacer$1 = function1;
        this.it$1 = abstractIterator;
    }

    public final Matcher apply(Regex.Match match) {
        return ((Regex.Replacement) this.it$1).replace((String) this.replacer$1.apply(match));
    }
}
