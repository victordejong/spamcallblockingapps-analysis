package scala.util.matching;

import java.util.Objects;
import java.util.regex.Matcher;
import scala.collection.AbstractIterator;
import scala.util.matching.Regex;
/* loaded from: classes3-dex2jar.jar:scala/util/matching/Regex$MatchIterator$$anon$1.class */
public final class Regex$MatchIterator$$anon$1 extends AbstractIterator<Regex.Match> implements Regex.Replacement {
    private final /* synthetic */ Regex.MatchIterator $outer;
    private final StringBuffer scala$util$matching$Regex$Replacement$$sb;

    public Regex$MatchIterator$$anon$1(Regex.MatchIterator matchIterator) {
        Objects.requireNonNull(matchIterator);
        this.$outer = matchIterator;
        mo0x275edc61(new StringBuffer());
    }

    @Override // scala.collection.Iterator
    public boolean hasNext() {
        return this.$outer.hasNext();
    }

    @Override // scala.util.matching.Regex.Replacement
    public Matcher matcher() {
        return this.$outer.matcher();
    }

    @Override // scala.collection.Iterator
    public Regex.Match next() {
        this.$outer.next();
        return new Regex.Match(this.$outer.source(), matcher(), this.$outer.groupNames()).force();
    }

    @Override // scala.util.matching.Regex.Replacement
    public Matcher replace(String str) {
        return Regex.Replacement.Cclass.replace(this, str);
    }

    @Override // scala.util.matching.Regex.Replacement
    public String replaced() {
        return Regex.Replacement.Cclass.replaced(this);
    }

    @Override // scala.util.matching.Regex.Replacement
    public StringBuffer scala$util$matching$Regex$Replacement$$sb() {
        return this.scala$util$matching$Regex$Replacement$$sb;
    }

    @Override // scala.util.matching.Regex.Replacement
    /* renamed from: scala$util$matching$Regex$Replacement$_setter_$scala$util$matching$Regex$Replacement$$sb_$eq */
    public void mo0x275edc61(StringBuffer stringBuffer) {
        this.scala$util$matching$Regex$Replacement$$sb = stringBuffer;
    }
}
