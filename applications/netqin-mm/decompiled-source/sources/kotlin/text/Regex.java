package kotlin.text;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p573f.p575b0.AbstractC9896b;
import p573f.p575b0.C9900f;
import p573f.p576c0.AbstractC9916h;
import p573f.p576c0.C9917i;
import p573f.p577r.C9977m;
import p573f.p577r.C9983s;
import p573f.p590w.p591b.AbstractC10031l;
import p573f.p590w.p592c.C10057o;
import p573f.p590w.p592c.C10059q;
import p573f.p595z.C10084f;
/* loaded from: classes2-dex2jar.jar:kotlin/text/Regex.class */
public final class Regex implements Serializable {
    public static final C10487a Companion = new C10487a(null);
    public Set<? extends RegexOption> _options;
    public final Pattern nativePattern;

    /* loaded from: classes2-dex2jar.jar:kotlin/text/Regex$Serialized.class */
    public static final class Serialized implements Serializable {
        public static final C10486a Companion = new C10486a(null);
        public static final long serialVersionUID = 0;
        public final int flags;
        public final String pattern;

        /* renamed from: kotlin.text.Regex$Serialized$a */
        /* loaded from: classes2-dex2jar.jar:kotlin/text/Regex$Serialized$a.class */
        public static final class C10486a {
            public C10486a() {
            }

            public /* synthetic */ C10486a(C10057o oVar) {
                this();
            }
        }

        public Serialized(String str, int i) {
            C10059q.m1637b(str, "pattern");
            this.pattern = str;
            this.flags = i;
        }

        private final Object readResolve() {
            Pattern compile = Pattern.compile(this.pattern, this.flags);
            C10059q.m1642a((Object) compile, "Pattern.compile(pattern, flags)");
            return new Regex(compile);
        }

        public final int getFlags() {
            return this.flags;
        }

        public final String getPattern() {
            return this.pattern;
        }
    }

    /* renamed from: kotlin.text.Regex$a */
    /* loaded from: classes2-dex2jar.jar:kotlin/text/Regex$a.class */
    public static final class C10487a {
        public C10487a() {
        }

        public /* synthetic */ C10487a(C10057o oVar) {
            this();
        }

        /* renamed from: a */
        public final int m36a(int i) {
            int i2 = i;
            if ((i & 2) != 0) {
                i2 = i | 64;
            }
            return i2;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Regex(java.lang.String r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r1 = "pattern"
            p573f.p590w.p592c.C10059q.m1637b(r0, r1)
            r0 = r4
            java.util.regex.Pattern r0 = java.util.regex.Pattern.compile(r0)
            r4 = r0
            r0 = r4
            java.lang.String r1 = "Pattern.compile(pattern)"
            p573f.p590w.p592c.C10059q.m1642a(r0, r1)
            r0 = r3
            r1 = r4
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.Regex.<init>(java.lang.String):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Regex(java.lang.String r5, java.util.Set<? extends kotlin.text.RegexOption> r6) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r1 = "pattern"
            p573f.p590w.p592c.C10059q.m1637b(r0, r1)
            r0 = r6
            java.lang.String r1 = "options"
            p573f.p590w.p592c.C10059q.m1637b(r0, r1)
            r0 = r5
            kotlin.text.Regex$a r1 = kotlin.text.Regex.Companion
            r2 = r6
            int r2 = p573f.p576c0.C9917i.m1796a(r2)
            int r1 = kotlin.text.Regex.C10487a.m35a(r1, r2)
            java.util.regex.Pattern r0 = java.util.regex.Pattern.compile(r0, r1)
            r5 = r0
            r0 = r5
            java.lang.String r1 = "Pattern.compile(pattern,…odeCase(options.toInt()))"
            p573f.p590w.p592c.C10059q.m1642a(r0, r1)
            r0 = r4
            r1 = r5
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.Regex.<init>(java.lang.String, java.util.Set):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Regex(java.lang.String r5, kotlin.text.RegexOption r6) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r1 = "pattern"
            p573f.p590w.p592c.C10059q.m1637b(r0, r1)
            r0 = r6
            java.lang.String r1 = "option"
            p573f.p590w.p592c.C10059q.m1637b(r0, r1)
            r0 = r5
            kotlin.text.Regex$a r1 = kotlin.text.Regex.Companion
            r2 = r6
            int r2 = r2.getValue()
            int r1 = kotlin.text.Regex.C10487a.m35a(r1, r2)
            java.util.regex.Pattern r0 = java.util.regex.Pattern.compile(r0, r1)
            r5 = r0
            r0 = r5
            java.lang.String r1 = "Pattern.compile(pattern,…nicodeCase(option.value))"
            p573f.p590w.p592c.C10059q.m1642a(r0, r1)
            r0 = r4
            r1 = r5
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.Regex.<init>(java.lang.String, kotlin.text.RegexOption):void");
    }

    public Regex(Pattern pattern) {
        C10059q.m1637b(pattern, "nativePattern");
        this.nativePattern = pattern;
    }

    public static /* synthetic */ AbstractC9916h find$default(Regex regex, CharSequence charSequence, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return regex.find(charSequence, i);
    }

    public static /* synthetic */ AbstractC9896b findAll$default(Regex regex, CharSequence charSequence, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return regex.findAll(charSequence, i);
    }

    public static /* synthetic */ List split$default(Regex regex, CharSequence charSequence, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return regex.split(charSequence, i);
    }

    private final Object writeReplace() {
        String pattern = this.nativePattern.pattern();
        C10059q.m1642a((Object) pattern, "nativePattern.pattern()");
        return new Serialized(pattern, this.nativePattern.flags());
    }

    public final boolean containsMatchIn(CharSequence charSequence) {
        C10059q.m1637b(charSequence, "input");
        return this.nativePattern.matcher(charSequence).find();
    }

    public final AbstractC9916h find(CharSequence charSequence, int i) {
        AbstractC9916h b;
        C10059q.m1637b(charSequence, "input");
        Matcher matcher = this.nativePattern.matcher(charSequence);
        C10059q.m1642a((Object) matcher, "nativePattern.matcher(input)");
        b = C9917i.m1788b(matcher, i, charSequence);
        return b;
    }

    public final AbstractC9896b<AbstractC9916h> findAll(CharSequence charSequence, int i) {
        C10059q.m1637b(charSequence, "input");
        return C9900f.m1812a(new Regex$findAll$1(this, charSequence, i), Regex$findAll$2.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Set<RegexOption> getOptions() {
        Set set = this._options;
        Set set2 = set;
        if (set == null) {
            int flags = this.nativePattern.flags();
            EnumSet allOf = EnumSet.allOf(RegexOption.class);
            C9983s.m1703a(allOf, new Regex$fromInt$$inlined$apply$lambda$1(flags));
            Set unmodifiableSet = Collections.unmodifiableSet(allOf);
            C10059q.m1642a((Object) unmodifiableSet, "Collections.unmodifiable…mask == it.value }\n    })");
            this._options = unmodifiableSet;
            set2 = unmodifiableSet;
        }
        return set2;
    }

    public final String getPattern() {
        String pattern = this.nativePattern.pattern();
        C10059q.m1642a((Object) pattern, "nativePattern.pattern()");
        return pattern;
    }

    public final AbstractC9916h matchEntire(CharSequence charSequence) {
        AbstractC9916h b;
        C10059q.m1637b(charSequence, "input");
        Matcher matcher = this.nativePattern.matcher(charSequence);
        C10059q.m1642a((Object) matcher, "nativePattern.matcher(input)");
        b = C9917i.m1787b(matcher, charSequence);
        return b;
    }

    public final boolean matches(CharSequence charSequence) {
        C10059q.m1637b(charSequence, "input");
        return this.nativePattern.matcher(charSequence).matches();
    }

    public final String replace(CharSequence charSequence, AbstractC10031l<? super AbstractC9916h, ? extends CharSequence> lVar) {
        C10059q.m1637b(charSequence, "input");
        C10059q.m1637b(lVar, "transform");
        int i = 0;
        AbstractC9916h find$default = find$default(this, charSequence, 0, 2, null);
        if (find$default == null) {
            return charSequence.toString();
        }
        int length = charSequence.length();
        StringBuilder sb = new StringBuilder(length);
        while (find$default != null) {
            sb.append(charSequence, i, find$default.mo41a().m1574c().intValue());
            sb.append((CharSequence) lVar.invoke(find$default));
            int intValue = find$default.mo41a().m1575b().intValue() + 1;
            AbstractC9916h next = find$default.next();
            if (intValue < length) {
                i = intValue;
                find$default = next;
                if (next == null) {
                }
            }
            if (intValue < length) {
                sb.append(charSequence, intValue, length);
            }
            String sb2 = sb.toString();
            C10059q.m1642a((Object) sb2, "sb.toString()");
            return sb2;
        }
        C10059q.m1646a();
        throw null;
    }

    public final String replace(CharSequence charSequence, String str) {
        C10059q.m1637b(charSequence, "input");
        C10059q.m1637b(str, "replacement");
        String replaceAll = this.nativePattern.matcher(charSequence).replaceAll(str);
        C10059q.m1642a((Object) replaceAll, "nativePattern.matcher(in…).replaceAll(replacement)");
        return replaceAll;
    }

    public final String replaceFirst(CharSequence charSequence, String str) {
        C10059q.m1637b(charSequence, "input");
        C10059q.m1637b(str, "replacement");
        String replaceFirst = this.nativePattern.matcher(charSequence).replaceFirst(str);
        C10059q.m1642a((Object) replaceFirst, "nativePattern.matcher(in…replaceFirst(replacement)");
        return replaceFirst;
    }

    public final List<String> split(CharSequence charSequence, int i) {
        int end;
        C10059q.m1637b(charSequence, "input");
        int i2 = 0;
        if (i >= 0) {
            Matcher matcher = this.nativePattern.matcher(charSequence);
            if (!matcher.find() || i == 1) {
                return C9977m.m1710a(charSequence.toString());
            }
            int i3 = 10;
            if (i > 0) {
                i3 = C10084f.m1569b(i, 10);
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

    public final Pattern toPattern() {
        return this.nativePattern;
    }

    public String toString() {
        String pattern = this.nativePattern.toString();
        C10059q.m1642a((Object) pattern, "nativePattern.toString()");
        return pattern;
    }
}
