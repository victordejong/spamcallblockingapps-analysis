package kotlin.text;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.messaging.Constants;
import java.util.regex.MatchResult;
import java.util.regex.Matcher;
import kotlin.Metadata;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
@Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\b\n��\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\r\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u001c\n\u0002\b\u0003\u001a4\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028��0\u0005\"\u0014\b��\u0010\u0002\u0018\u0001*\u00020��*\b\u0012\u0004\u0012\u00028��0\u00012\u0006\u0010\u0004\u001a\u00020\u0003H\u0082\b¢\u0006\u0004\b\u0006\u0010\u0007\u001a%\u0010\r\u001a\u0004\u0018\u00010\f*\u00020\b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\u000e\u001a\u001d\u0010\u000f\u001a\u0004\u0018\u00010\f*\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000f\u0010\u0010\u001a\u0013\u0010\u0013\u001a\u00020\u0012*\u00020\u0011H\u0002¢\u0006\u0004\b\u0013\u0010\u0014\u001a\u001b\u0010\u0013\u001a\u00020\u0012*\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0013\u0010\u0016\u001a\u0019\u0010\u0018\u001a\u00020\u0003*\b\u0012\u0004\u0012\u00020��0\u0017H\u0002¢\u0006\u0004\b\u0018\u0010\u0019¨\u0006\u001a"}, d2 = {"Lkotlin/text/FlagEnum;", "", "T", "", FirebaseAnalytics.Param.VALUE, "", "fromInt", "(I)Ljava/util/Set;", "Ljava/util/regex/Matcher;", Constants.MessagePayloadKeys.FROM, "", "input", "Lkotlin/text/MatchResult;", "findNext", "(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lkotlin/text/MatchResult;", "matchEntire", "(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)Lkotlin/text/MatchResult;", "Ljava/util/regex/MatchResult;", "Lkotlin/ranges/IntRange;", "range", "(Ljava/util/regex/MatchResult;)Lkotlin/ranges/IntRange;", "groupIndex", "(Ljava/util/regex/MatchResult;I)Lkotlin/ranges/IntRange;", "", "toInt", "(Ljava/lang/Iterable;)I", "kotlin-stdlib"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/text/RegexKt.class */
public final class RegexKt {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static final MatchResult m1546c(Matcher matcher, int i, CharSequence charSequence) {
        return !matcher.find(i) ? null : new MatcherMatchResult(matcher, charSequence);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static final IntRange m1545d(MatchResult matchResult, int i) {
        return RangesKt.m1715i(matchResult.start(i), matchResult.end(i));
    }
}
