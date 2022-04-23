package kotlin.text;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.regex.MatchResult;
import java.util.regex.Matcher;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\r\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0002\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b!\u0010\"J\u0011\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0016¢\u0006\u0004\b\u0002\u0010\u0003R\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u001e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\nR\u001c\u0010\f\u001a\u00020\u000b8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0011\u001a\u00020\u00108\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0016\u001a\u00020\u00138B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0018\u001a\u00020\u00178\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\u001a8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\u0016\u0010 \u001a\u00020\u00058V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001f¨\u0006#"}, d2 = {"Lkotlin/text/MatcherMatchResult;", "Lkotlin/text/MatchResult;", "next", "()Lkotlin/text/MatchResult;", "", "", "getGroupValues", "()Ljava/util/List;", "groupValues", "groupValues_", "Ljava/util/List;", "Lkotlin/text/MatchGroupCollection;", "groups", "Lkotlin/text/MatchGroupCollection;", "getGroups", "()Lkotlin/text/MatchGroupCollection;", "", "input", "Ljava/lang/CharSequence;", "Ljava/util/regex/MatchResult;", "getMatchResult", "()Ljava/util/regex/MatchResult;", "matchResult", "Ljava/util/regex/Matcher;", "matcher", "Ljava/util/regex/Matcher;", "Lkotlin/ranges/IntRange;", "getRange", "()Lkotlin/ranges/IntRange;", "range", "getValue", "()Ljava/lang/String;", FirebaseAnalytics.Param.VALUE, "<init>", "(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/text/MatcherMatchResult.class */
public final class MatcherMatchResult implements MatchResult {

    /* renamed from: a */
    private final Matcher f21034a;

    /* renamed from: b */
    private final CharSequence f21035b;

    public MatcherMatchResult(@NotNull Matcher matcher, @NotNull CharSequence input) {
        Intrinsics.m1830e(matcher, "matcher");
        Intrinsics.m1830e(input, "input");
        this.f21034a = matcher;
        this.f21035b = input;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public final MatchResult m1562b() {
        return this.f21034a;
    }

    @Override // kotlin.text.MatchResult
    @Nullable
    public MatchResult next() {
        MatchResult matchResult;
        int end = m1562b().end() + (m1562b().end() == m1562b().start() ? 1 : 0);
        if (end <= this.f21035b.length()) {
            Matcher matcher = this.f21034a.pattern().matcher(this.f21035b);
            Intrinsics.m1831d(matcher, "matcher.pattern().matcher(input)");
            matchResult = RegexKt.m1546c(matcher, end, this.f21035b);
        } else {
            matchResult = null;
        }
        return matchResult;
    }
}
