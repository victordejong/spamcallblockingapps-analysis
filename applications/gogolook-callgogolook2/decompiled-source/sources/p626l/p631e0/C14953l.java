package p626l.p631e0;

import java.util.regex.MatchResult;
import java.util.regex.Matcher;
import p626l.p628b0.C14888d;
import p626l.p628b0.C14896i;
/* renamed from: l.e0.l */
/* loaded from: classes3-dex2jar.jar:l/e0/l.class */
public final class C14953l {
    /* renamed from: b */
    public static final C14888d m739b(MatchResult matchResult, int i) {
        return C14896i.m790d(matchResult.start(i), matchResult.end(i));
    }

    /* renamed from: b */
    public static final AbstractC14945i m738b(Matcher matcher, int i, CharSequence charSequence) {
        return !matcher.find(i) ? null : new C14946j(matcher, charSequence);
    }
}
