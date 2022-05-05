package p626l.p631e0;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import p626l.p628b0.C14896i;
import p626l.p632u.C15020l;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n��\n\u0002\u0010\r\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010��\n\u0002\b\u0003\u0018�� ,2\u00060\u0001j\u0002`\u0002:\u0002,-B\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005B\u0017\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bB\u001d\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\n¢\u0006\u0002\u0010\u000bB\u000f\b\u0001\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u001a\u001a\u00020\u001bJ\u001e\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00190\u001d2\u0006\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u001a\u001a\u00020\u001bJ\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0016\u001a\u00020\u0017J\u0011\u0010\u001f\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0086\u0004J\"\u0010 \u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00172\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00170\"J\u0016\u0010 \u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010#\u001a\u00020\u0004J\u0016\u0010$\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010#\u001a\u00020\u0004J\u001e\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00040&2\u0006\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010'\u001a\u00020\u001bJ\u0006\u0010(\u001a\u00020\rJ\b\u0010)\u001a\u00020\u0004H\u0016J\b\u0010*\u001a\u00020+H\u0002R\u0016\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n��R\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\n8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u0006."}, m815d2 = {"Lkotlin/text/Regex;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "pattern", "", "(Ljava/lang/String;)V", "option", "Lkotlin/text/RegexOption;", "(Ljava/lang/String;Lkotlin/text/RegexOption;)V", "options", "", "(Ljava/lang/String;Ljava/util/Set;)V", "nativePattern", "Ljava/util/regex/Pattern;", "(Ljava/util/regex/Pattern;)V", "_options", "getOptions", "()Ljava/util/Set;", "getPattern", "()Ljava/lang/String;", "containsMatchIn", "", "input", "", "find", "Lkotlin/text/MatchResult;", "startIndex", "", "findAll", "Lkotlin/sequences/Sequence;", "matchEntire", "matches", "replace", "transform", "Lkotlin/Function1;", "replacement", "replaceFirst", "split", "", "limit", "toPattern", "toString", "writeReplace", "", "Companion", "Serialized", "kotlin-stdlib"}, m814k = 1, m813mv = {1, 1, 16})
/* renamed from: l.e0.k */
/* loaded from: classes3-dex2jar.jar:l/e0/k.class */
public final class C14949k implements Serializable {

    /* renamed from: b */
    public static final C14950a f32995b = new C14950a(null);

    /* renamed from: a */
    public final Pattern f32996a;

    /* renamed from: l.e0.k$a */
    /* loaded from: classes3-dex2jar.jar:l/e0/k$a.class */
    public static final class C14950a {
        public C14950a() {
        }

        public /* synthetic */ C14950a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final int m743a(int i) {
            int i2 = i;
            if ((i & 2) != 0) {
                i2 = i | 64;
            }
            return i2;
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010��\n\u0002\b\u0002\b\u0002\u0018�� \u000e2\u00060\u0001j\u0002`\u0002:\u0001\u000eB\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\f\u001a\u00020\rH\u0002R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000b¨\u0006\u000f"}, m815d2 = {"Lkotlin/text/Regex$Serialized;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "pattern", "", "flags", "", "(Ljava/lang/String;I)V", "getFlags", "()I", "getPattern", "()Ljava/lang/String;", "readResolve", "", "Companion", "kotlin-stdlib"}, m814k = 1, m813mv = {1, 1, 16})
    /* renamed from: l.e0.k$b */
    /* loaded from: classes3-dex2jar.jar:l/e0/k$b.class */
    public static final class C14951b implements Serializable {

        /* renamed from: a */
        public final String f32997a;

        /* renamed from: b */
        public final int f32998b;

        /* renamed from: l.e0.k$b$a */
        /* loaded from: classes3-dex2jar.jar:l/e0/k$b$a.class */
        public static final class C14952a {
            public C14952a() {
            }

            public /* synthetic */ C14952a(C15145g gVar) {
                this();
            }
        }

        static {
            new C14952a(null);
        }

        public C14951b(String str, int i) {
            C15149k.m377b(str, "pattern");
            this.f32997a = str;
            this.f32998b = i;
        }

        private final Object readResolve() {
            Pattern compile = Pattern.compile(this.f32997a, this.f32998b);
            C15149k.m383a((Object) compile, "Pattern.compile(pattern, flags)");
            return new C14949k(compile);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C14949k(java.lang.String r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r1 = "pattern"
            p626l.p641z.p643d.C15149k.m377b(r0, r1)
            r0 = r4
            java.util.regex.Pattern r0 = java.util.regex.Pattern.compile(r0)
            r4 = r0
            r0 = r4
            java.lang.String r1 = "Pattern.compile(pattern)"
            p626l.p641z.p643d.C15149k.m383a(r0, r1)
            r0 = r3
            r1 = r4
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p626l.p631e0.C14949k.<init>(java.lang.String):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C14949k(java.lang.String r5, p626l.p631e0.EnumC14954m r6) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r1 = "pattern"
            p626l.p641z.p643d.C15149k.m377b(r0, r1)
            r0 = r6
            java.lang.String r1 = "option"
            p626l.p641z.p643d.C15149k.m377b(r0, r1)
            r0 = r5
            l.e0.k$a r1 = p626l.p631e0.C14949k.f32995b
            r2 = r6
            int r2 = r2.m737a()
            int r1 = p626l.p631e0.C14949k.C14950a.m742a(r1, r2)
            java.util.regex.Pattern r0 = java.util.regex.Pattern.compile(r0, r1)
            r5 = r0
            r0 = r5
            java.lang.String r1 = "Pattern.compile(pattern,…nicodeCase(option.value))"
            p626l.p641z.p643d.C15149k.m383a(r0, r1)
            r0 = r4
            r1 = r5
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p626l.p631e0.C14949k.<init>(java.lang.String, l.e0.m):void");
    }

    public C14949k(Pattern pattern) {
        C15149k.m377b(pattern, "nativePattern");
        this.f32996a = pattern;
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC14945i m747a(C14949k kVar, CharSequence charSequence, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return kVar.m749a(charSequence, i);
    }

    private final Object writeReplace() {
        String pattern = this.f32996a.pattern();
        C15149k.m383a((Object) pattern, "nativePattern.pattern()");
        return new C14951b(pattern, this.f32996a.flags());
    }

    /* renamed from: a */
    public final String m748a(CharSequence charSequence, String str) {
        C15149k.m377b(charSequence, "input");
        C15149k.m377b(str, "replacement");
        String replaceAll = this.f32996a.matcher(charSequence).replaceAll(str);
        C15149k.m383a((Object) replaceAll, "nativePattern.matcher(in…).replaceAll(replacement)");
        return replaceAll;
    }

    /* renamed from: a */
    public final AbstractC14945i m749a(CharSequence charSequence, int i) {
        AbstractC14945i b;
        C15149k.m377b(charSequence, "input");
        Matcher matcher = this.f32996a.matcher(charSequence);
        C15149k.m383a((Object) matcher, "nativePattern.matcher(input)");
        b = C14953l.m738b(matcher, i, charSequence);
        return b;
    }

    /* renamed from: a */
    public final boolean m750a(CharSequence charSequence) {
        C15149k.m377b(charSequence, "input");
        return this.f32996a.matcher(charSequence).find();
    }

    /* renamed from: b */
    public final String m744b(CharSequence charSequence, String str) {
        C15149k.m377b(charSequence, "input");
        C15149k.m377b(str, "replacement");
        String replaceFirst = this.f32996a.matcher(charSequence).replaceFirst(str);
        C15149k.m383a((Object) replaceFirst, "nativePattern.matcher(in…replaceFirst(replacement)");
        return replaceFirst;
    }

    /* renamed from: b */
    public final List<String> m745b(CharSequence charSequence, int i) {
        int end;
        C15149k.m377b(charSequence, "input");
        int i2 = 0;
        if (i >= 0) {
            Matcher matcher = this.f32996a.matcher(charSequence);
            if (!matcher.find() || i == 1) {
                return C15020l.m567a(charSequence.toString());
            }
            int i3 = 10;
            if (i > 0) {
                i3 = C14896i.m793b(i, 10);
            }
            ArrayList arrayList = new ArrayList(i3);
            int i4 = i - 1;
            do {
                arrayList.add(charSequence.subSequence(i2, matcher.start()).toString());
                end = matcher.end();
                if (i4 >= 0 && arrayList.size() == i4) {
                    break;
                }
                i2 = end;
            } while (matcher.find());
            arrayList.add(charSequence.subSequence(end, charSequence.length()).toString());
            return arrayList;
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i + '.').toString());
    }

    /* renamed from: b */
    public final boolean m746b(CharSequence charSequence) {
        C15149k.m377b(charSequence, "input");
        return this.f32996a.matcher(charSequence).matches();
    }

    public String toString() {
        String pattern = this.f32996a.toString();
        C15149k.m383a((Object) pattern, "nativePattern.toString()");
        return pattern;
    }
}
