package kotlin.p532h;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18282n;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n��\n\u0002\u0010\r\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010��\n\u0002\b\u0003\u0018�� ,2\u00060\u0001j\u0002`\u0002:\u0002,-B\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005B\u0017\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bB\u001d\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\n¢\u0006\u0002\u0010\u000bB\u000f\b\u0001\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u001a\u001a\u00020\u001bJ\u001e\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00190\u001d2\u0006\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u001a\u001a\u00020\u001bJ\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0016\u001a\u00020\u0017J\u0011\u0010\u001f\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0086\u0004J\"\u0010 \u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00172\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00170\"J\u0016\u0010 \u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010#\u001a\u00020\u0004J\u0016\u0010$\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010#\u001a\u00020\u0004J\u001e\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00040&2\u0006\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010'\u001a\u00020\u001bJ\u0006\u0010(\u001a\u00020\rJ\b\u0010)\u001a\u00020\u0004H\u0016J\b\u0010*\u001a\u00020+H\u0002R\u0016\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n��R\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\n8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u0006."}, m4298d2 = {"Lkotlin/text/Regex;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "pattern", "", "(Ljava/lang/String;)V", "option", "Lkotlin/text/RegexOption;", "(Ljava/lang/String;Lkotlin/text/RegexOption;)V", "options", "", "(Ljava/lang/String;Ljava/util/Set;)V", "nativePattern", "Ljava/util/regex/Pattern;", "(Ljava/util/regex/Pattern;)V", "_options", "getOptions", "()Ljava/util/Set;", "getPattern", "()Ljava/lang/String;", "containsMatchIn", "", "input", "", "find", "Lkotlin/text/MatchResult;", "startIndex", "", "findAll", "Lkotlin/sequences/Sequence;", "matchEntire", "matches", "replace", "transform", "Lkotlin/Function1;", "replacement", "replaceFirst", "split", "", "limit", "toPattern", "toString", "writeReplace", "", "Companion", "Serialized", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.h.l */
/* loaded from: classes5-dex2jar.jar:kotlin/h/l.class */
public final class C18418l implements Serializable {

    /* renamed from: b */
    public static final C18419a f63545b = new C18419a(null);

    /* renamed from: a */
    public final Pattern f63546a;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u0007¨\u0006\f"}, m4298d2 = {"Lkotlin/text/Regex$Companion;", "", "()V", "ensureUnicodeCase", "", "flags", "escape", "", "literal", "escapeReplacement", "fromLiteral", "Lkotlin/text/Regex;", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.h.l$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/h/l$a.class */
    public static final class C18419a {
        private C18419a() {
        }

        public /* synthetic */ C18419a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        static int m3981a(int i) {
            int i2 = i;
            if ((i & 2) != 0) {
                i2 = i | 64;
            }
            return i2;
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010��\n\u0002\b\u0002\b\u0002\u0018�� \u000e2\u00060\u0001j\u0002`\u0002:\u0001\u000eB\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\f\u001a\u00020\rH\u0002R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000b¨\u0006\u000f"}, m4298d2 = {"Lkotlin/text/Regex$Serialized;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "pattern", "", "flags", "", "(Ljava/lang/String;I)V", "getFlags", "()I", "getPattern", "()Ljava/lang/String;", "readResolve", "", "Companion", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.h.l$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/h/l$b.class */
    static final class C18420b implements Serializable {

        /* renamed from: a */
        public static final C18421a f63547a = new C18421a(null);

        /* renamed from: b */
        private final String f63548b;

        /* renamed from: c */
        private final int f63549c;

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0005"}, m4298d2 = {"Lkotlin/text/Regex$Serialized$Companion;", "", "()V", "serialVersionUID", "", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.h.l$b$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/h/l$b$a.class */
        public static final class C18421a {
            private C18421a() {
            }

            public /* synthetic */ C18421a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        public C18420b(String pattern, int i) {
            C18524p.m3840d(pattern, "pattern");
            this.f63548b = pattern;
            this.f63549c = i;
        }

        private final Object readResolve() {
            Pattern compile = Pattern.compile(this.f63548b, this.f63549c);
            C18524p.m3843b(compile, "Pattern.compile(pattern, flags)");
            return new C18418l(compile);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C18418l(java.lang.String r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r1 = "pattern"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r4
            java.util.regex.Pattern r0 = java.util.regex.Pattern.compile(r0)
            r4 = r0
            r0 = r4
            java.lang.String r1 = "Pattern.compile(pattern)"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
            r0 = r3
            r1 = r4
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.p532h.C18418l.<init>(java.lang.String):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C18418l(java.lang.String r4, java.util.Set<? extends kotlin.p532h.EnumC18423n> r5) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r1 = "pattern"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r5
            java.lang.String r1 = "options"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r4
            r1 = r5
            java.lang.Iterable r1 = (java.lang.Iterable) r1
            int r1 = kotlin.p532h.C18422m.m3980a(r1)
            int r1 = kotlin.p532h.C18418l.C18419a.m3981a(r1)
            java.util.regex.Pattern r0 = java.util.regex.Pattern.compile(r0, r1)
            r4 = r0
            r0 = r4
            java.lang.String r1 = "Pattern.compile(pattern,…odeCase(options.toInt()))"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
            r0 = r3
            r1 = r4
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.p532h.C18418l.<init>(java.lang.String, java.util.Set):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C18418l(java.lang.String r4, kotlin.p532h.EnumC18423n r5) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r1 = "pattern"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r5
            java.lang.String r1 = "option"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r4
            r1 = r5
            int r1 = r1.getValue()
            int r1 = kotlin.p532h.C18418l.C18419a.m3981a(r1)
            java.util.regex.Pattern r0 = java.util.regex.Pattern.compile(r0, r1)
            r4 = r0
            r0 = r4
            java.lang.String r1 = "Pattern.compile(pattern,…nicodeCase(option.value))"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
            r0 = r3
            r1 = r4
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.p532h.C18418l.<init>(java.lang.String, kotlin.h.n):void");
    }

    public C18418l(Pattern nativePattern) {
        C18524p.m3840d(nativePattern, "nativePattern");
        this.f63546a = nativePattern;
    }

    /* renamed from: a */
    private static /* synthetic */ AbstractC18412j m3983a(C18418l c18418l, CharSequence input) {
        C18524p.m3840d(input, "input");
        Matcher matcher = c18418l.f63546a.matcher(input);
        C18524p.m3843b(matcher, "nativePattern.matcher(input)");
        return C18422m.m3979a(matcher, 0, input);
    }

    private final Object writeReplace() {
        String pattern = this.f63546a.pattern();
        C18524p.m3843b(pattern, "nativePattern.pattern()");
        return new C18420b(pattern, this.f63546a.flags());
    }

    /* renamed from: a */
    public final String m3985a(CharSequence input, String replacement) {
        C18524p.m3840d(input, "input");
        C18524p.m3840d(replacement, "replacement");
        String replaceAll = this.f63546a.matcher(input).replaceAll(replacement);
        C18524p.m3843b(replaceAll, "nativePattern.matcher(in…).replaceAll(replacement)");
        return replaceAll;
    }

    /* renamed from: a */
    public final String m3984a(CharSequence input, Function1<? super AbstractC18412j, ? extends CharSequence> transform) {
        int i;
        AbstractC18412j mo3988d;
        C18524p.m3840d(input, "input");
        C18524p.m3840d(transform, "transform");
        AbstractC18412j m3983a = m3983a(this, input);
        if (m3983a == null) {
            return input.toString();
        }
        int i2 = 0;
        int length = input.length();
        StringBuilder sb = new StringBuilder(length);
        do {
            C18524p.m3851a(m3983a);
            sb.append(input, i2, m3983a.mo3991a().f63459a);
            sb.append(transform.invoke(m3983a));
            i = m3983a.mo3991a().f63460b + 1;
            mo3988d = m3983a.mo3988d();
            if (i >= length) {
                break;
            }
            m3983a = mo3988d;
            i2 = i;
        } while (mo3988d != null);
        if (i < length) {
            sb.append(input, i, length);
        }
        String sb2 = sb.toString();
        C18524p.m3843b(sb2, "sb.toString()");
        return sb2;
    }

    /* renamed from: a */
    public final boolean m3986a(CharSequence input) {
        C18524p.m3840d(input, "input");
        return this.f63546a.matcher(input).matches();
    }

    /* renamed from: b */
    public final List<String> m3982b(CharSequence input) {
        int end;
        C18524p.m3840d(input, "input");
        Matcher matcher = this.f63546a.matcher(input);
        if (!matcher.find()) {
            return C18282n.m4176a(input.toString());
        }
        ArrayList arrayList = new ArrayList(10);
        int i = 0;
        do {
            arrayList.add(input.subSequence(i, matcher.start()).toString());
            end = matcher.end();
            i = end;
        } while (matcher.find());
        arrayList.add(input.subSequence(end, input.length()).toString());
        return arrayList;
    }

    public final String toString() {
        String pattern = this.f63546a.toString();
        C18524p.m3843b(pattern, "nativePattern.toString()");
        return pattern;
    }
}
