package scala.util.matching;

import scala.Some;
import scala.util.matching.Regex;
/* loaded from: classes3-dex2jar.jar:scala/util/matching/Regex$Match$.class */
public class Regex$Match$ {
    public static final Regex$Match$ MODULE$ = null;

    static {
        new Regex$Match$();
    }

    public Regex$Match$() {
        MODULE$ = this;
    }

    public Some<String> unapply(Regex.Match match) {
        return new Some<>(match.matched());
    }
}
