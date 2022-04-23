package kotlin.text;

import java.io.Serializable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0012\u0018�� 72\u00020\u0001:\u000278B\u0011\b\u0016\u0012\u0006\u00100\u001a\u00020\u0014¢\u0006\u0004\b1\u00102B\u0019\b\u0016\u0012\u0006\u00100\u001a\u00020\u0014\u0012\u0006\u00103\u001a\u00020'¢\u0006\u0004\b1\u00104B\u001f\b\u0016\u0012\u0006\u00100\u001a\u00020\u0014\u0012\f\u0010.\u001a\b\u0012\u0004\u0012\u00020'0&¢\u0006\u0004\b1\u00105B\u0011\b\u0001\u0012\u0006\u0010*\u001a\u00020\u001e¢\u0006\u0004\b1\u00106J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J!\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\n\u0010\u000bJ%\u0010\r\u001a\b\u0012\u0004\u0012\u00020\t0\f2\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0018\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0086\u0004¢\u0006\u0004\b\u0011\u0010\u0006J)\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0003\u001a\u00020\u00022\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00020\u0012¢\u0006\u0004\b\u0015\u0010\u0016J\u001d\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0014¢\u0006\u0004\b\u0015\u0010\u0018J\u001d\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0014¢\u0006\u0004\b\u0019\u0010\u0018J%\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00140\u001b2\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u001a\u001a\u00020\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ\r\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0014H\u0016¢\u0006\u0004\b!\u0010\"J\u000f\u0010$\u001a\u00020#H\u0002¢\u0006\u0004\b$\u0010%R\u001e\u0010(\u001a\n\u0012\u0004\u0012\u00020'\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010*\u001a\u00020\u001e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R\u0019\u0010.\u001a\b\u0012\u0004\u0012\u00020'0&8F@\u0006¢\u0006\u0006\u001a\u0004\b,\u0010-R\u0013\u00100\u001a\u00020\u00148F@\u0006¢\u0006\u0006\u001a\u0004\b/\u0010\"¨\u00069"}, d2 = {"Lkotlin/text/Regex;", "Ljava/io/Serializable;", "", "input", "", "containsMatchIn", "(Ljava/lang/CharSequence;)Z", "", "startIndex", "Lkotlin/text/MatchResult;", "find", "(Ljava/lang/CharSequence;I)Lkotlin/text/MatchResult;", "Lkotlin/sequences/Sequence;", "findAll", "(Ljava/lang/CharSequence;I)Lkotlin/sequences/Sequence;", "matchEntire", "(Ljava/lang/CharSequence;)Lkotlin/text/MatchResult;", "matches", "Lkotlin/Function1;", "transform", "", "replace", "(Ljava/lang/CharSequence;Lkotlin/Function1;)Ljava/lang/String;", "replacement", "(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;", "replaceFirst", "limit", "", "split", "(Ljava/lang/CharSequence;I)Ljava/util/List;", "Ljava/util/regex/Pattern;", "toPattern", "()Ljava/util/regex/Pattern;", "toString", "()Ljava/lang/String;", "", "writeReplace", "()Ljava/lang/Object;", "", "Lkotlin/text/RegexOption;", "_options", "Ljava/util/Set;", "nativePattern", "Ljava/util/regex/Pattern;", "getOptions", "()Ljava/util/Set;", "options", "getPattern", "pattern", "<init>", "(Ljava/lang/String;)V", "option", "(Ljava/lang/String;Lkotlin/text/RegexOption;)V", "(Ljava/lang/String;Ljava/util/Set;)V", "(Ljava/util/regex/Pattern;)V", "Companion", "Serialized", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/text/Regex.class */
public final class Regex implements Serializable {

    /* renamed from: f */
    private final Pattern f21039f;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\t\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\t\u0010\bJ\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000f"}, d2 = {"Lkotlin/text/Regex$Companion;", "", "flags", "ensureUnicodeCase", "(I)I", "", "literal", "escape", "(Ljava/lang/String;)Ljava/lang/String;", "escapeReplacement", "Lkotlin/text/Regex;", "fromLiteral", "(Ljava/lang/String;)Lkotlin/text/Regex;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/text/Regex$Companion.class */
    public static final class Companion {
        private Companion() {
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\b\b\u0002\u0018�� \u00112\u00020\u0001:\u0001\u0011B\u0017\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004R\u0019\u0010\u0006\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tR\u0019\u0010\u000b\u001a\u00020\n8\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u0012"}, d2 = {"Lkotlin/text/Regex$Serialized;", "Ljava/io/Serializable;", "", "readResolve", "()Ljava/lang/Object;", "", "flags", "I", "getFlags", "()I", "", "pattern", "Ljava/lang/String;", "getPattern", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;I)V", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/text/Regex$Serialized.class */
    private static final class Serialized implements Serializable {
        private static final long serialVersionUID = 0;
        @NotNull

        /* renamed from: f */
        private final String f21040f;

        /* renamed from: g */
        private final int f21041g;

        @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0005\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0016\u0010\u0002\u001a\u00020\u00018\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lkotlin/text/Regex$Serialized$Companion;", "", "serialVersionUID", "J", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* loaded from: classes2-dex2jar.jar:kotlin/text/Regex$Serialized$Companion.class */
        public static final class Companion {
            private Companion() {
            }
        }

        public Serialized(@NotNull String pattern, int i) {
            Intrinsics.m1830e(pattern, "pattern");
            this.f21040f = pattern;
            this.f21041g = i;
        }

        private final Object readResolve() {
            Pattern compile = Pattern.compile(this.f21040f, this.f21041g);
            Intrinsics.m1831d(compile, "Pattern.compile(pattern, flags)");
            return new Regex(compile);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Regex(@org.jetbrains.annotations.NotNull java.lang.String r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r1 = "pattern"
            kotlin.jvm.internal.Intrinsics.m1830e(r0, r1)
            r0 = r4
            java.util.regex.Pattern r0 = java.util.regex.Pattern.compile(r0)
            r4 = r0
            r0 = r4
            java.lang.String r1 = "Pattern.compile(pattern)"
            kotlin.jvm.internal.Intrinsics.m1831d(r0, r1)
            r0 = r3
            r1 = r4
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.Regex.<init>(java.lang.String):void");
    }

    @PublishedApi
    public Regex(@NotNull Pattern nativePattern) {
        Intrinsics.m1830e(nativePattern, "nativePattern");
        this.f21039f = nativePattern;
    }

    private final Object writeReplace() {
        String pattern = this.f21039f.pattern();
        Intrinsics.m1831d(pattern, "nativePattern.pattern()");
        return new Serialized(pattern, this.f21039f.flags());
    }

    @Nullable
    /* renamed from: a */
    public final MatchResult m1554a(@NotNull CharSequence input, int i) {
        MatchResult c;
        Intrinsics.m1830e(input, "input");
        Matcher matcher = this.f21039f.matcher(input);
        Intrinsics.m1831d(matcher, "nativePattern.matcher(input)");
        c = RegexKt.m1546c(matcher, i, input);
        return c;
    }

    /* renamed from: b */
    public final boolean m1553b(@NotNull CharSequence input) {
        Intrinsics.m1830e(input, "input");
        return this.f21039f.matcher(input).matches();
    }

    @NotNull
    /* renamed from: c */
    public final String m1552c(@NotNull CharSequence input, @NotNull String replacement) {
        Intrinsics.m1830e(input, "input");
        Intrinsics.m1830e(replacement, "replacement");
        String replaceAll = this.f21039f.matcher(input).replaceAll(replacement);
        Intrinsics.m1831d(replaceAll, "nativePattern.matcher(in…).replaceAll(replacement)");
        return replaceAll;
    }

    @NotNull
    public String toString() {
        String pattern = this.f21039f.toString();
        Intrinsics.m1831d(pattern, "nativePattern.toString()");
        return pattern;
    }
}
