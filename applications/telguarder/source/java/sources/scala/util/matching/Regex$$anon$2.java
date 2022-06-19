package scala.util.matching;

import java.util.Objects;
import java.util.regex.Matcher;
import scala.util.matching.UnanchoredRegex;
/* loaded from: classes3-dex2jar.jar:scala/util/matching/Regex$$anon$2.class */
public final class Regex$$anon$2 extends Regex implements UnanchoredRegex {
    private final /* synthetic */ Regex $outer;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Regex$$anon$2(Regex regex) {
        super(regex.pattern(), regex.scala$util$matching$Regex$$groupNames);
        Objects.requireNonNull(regex);
        this.$outer = regex;
        UnanchoredRegex.Cclass.$init$(this);
    }

    @Override // scala.util.matching.Regex
    public Regex anchored() {
        return this.$outer;
    }

    @Override // scala.util.matching.Regex, scala.util.matching.UnanchoredRegex
    public boolean runMatcher(Matcher matcher) {
        return UnanchoredRegex.Cclass.runMatcher(this, matcher);
    }

    @Override // scala.util.matching.Regex, scala.util.matching.UnanchoredRegex
    public UnanchoredRegex unanchored() {
        return UnanchoredRegex.Cclass.unanchored(this);
    }
}
