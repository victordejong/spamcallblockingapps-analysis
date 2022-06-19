package scala.util.matching;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import scala.Serializable;
/* loaded from: classes3-dex2jar.jar:scala/util/matching/Regex$.class */
public final class Regex$ implements Serializable {
    public static final Regex$ MODULE$ = null;

    static {
        new Regex$();
    }

    private Regex$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public String quote(String str) {
        return Pattern.quote(str);
    }

    public String quoteReplacement(String str) {
        return Matcher.quoteReplacement(str);
    }
}
