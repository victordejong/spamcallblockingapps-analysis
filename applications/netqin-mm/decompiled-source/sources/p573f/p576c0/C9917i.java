package p573f.p576c0;

import java.util.regex.MatchResult;
import java.util.regex.Matcher;
import kotlin.text.MatcherMatchResult;
import p573f.p595z.C10080c;
import p573f.p595z.C10084f;
/* renamed from: f.c0.i */
/* loaded from: classes2-dex2jar.jar:f/c0/i.class */
public final class C9917i {
    /* renamed from: b */
    public static final int m1791b(Iterable<? extends AbstractC9912d> iterable) {
        int i = 0;
        for (AbstractC9912d dVar : iterable) {
            i |= dVar.getValue();
        }
        return i;
    }

    /* renamed from: b */
    public static final AbstractC9916h m1788b(Matcher matcher, int i, CharSequence charSequence) {
        return !matcher.find(i) ? null : new MatcherMatchResult(matcher, charSequence);
    }

    /* renamed from: b */
    public static final AbstractC9916h m1787b(Matcher matcher, CharSequence charSequence) {
        return !matcher.matches() ? null : new MatcherMatchResult(matcher, charSequence);
    }

    /* renamed from: b */
    public static final C10080c m1790b(MatchResult matchResult) {
        return C10084f.m1567d(matchResult.start(), matchResult.end());
    }

    /* renamed from: b */
    public static final C10080c m1789b(MatchResult matchResult, int i) {
        return C10084f.m1567d(matchResult.start(i), matchResult.end(i));
    }
}
