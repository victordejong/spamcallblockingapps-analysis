package kotlin.p087i;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.p073a.C1600g;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import kotlin.p084f.C1713d;
/* renamed from: kotlin.i.f */
/* loaded from: classes-dex2jar.jar:kotlin/i/f.class */
public final class C1745f implements Serializable {

    /* renamed from: a */
    public static final C1746a f4430a = new C1746a(null);

    /* renamed from: b */
    private final Pattern f4431b;

    /* renamed from: kotlin.i.f$a */
    /* loaded from: classes-dex2jar.jar:kotlin/i/f$a.class */
    public static final class C1746a {
        private C1746a() {
        }

        public /* synthetic */ C1746a(C1691e c1691e) {
            this();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C1745f(java.lang.String r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r1 = "pattern"
            kotlin.p081e.p083b.C1694h.m3117b(r0, r1)
            r0 = r4
            java.util.regex.Pattern r0 = java.util.regex.Pattern.compile(r0)
            r4 = r0
            r0 = r4
            java.lang.String r1 = "Pattern.compile(pattern)"
            kotlin.p081e.p083b.C1694h.m3122a(r0, r1)
            r0 = r3
            r1 = r4
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.p087i.C1745f.<init>(java.lang.String):void");
    }

    public C1745f(Pattern pattern) {
        C1694h.m3117b(pattern, "nativePattern");
        this.f4431b = pattern;
    }

    /* renamed from: a */
    public final String m3047a(CharSequence charSequence, String str) {
        C1694h.m3117b(charSequence, "input");
        C1694h.m3117b(str, "replacement");
        String replaceAll = this.f4431b.matcher(charSequence).replaceAll(str);
        C1694h.m3122a((Object) replaceAll, "nativePattern.matcher(in…).replaceAll(replacement)");
        return replaceAll;
    }

    /* renamed from: a */
    public final List<String> m3048a(CharSequence charSequence, int i) {
        int end;
        C1694h.m3117b(charSequence, "input");
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("Limit must be non-negative, but was " + i + '.').toString());
        }
        Matcher matcher = this.f4431b.matcher(charSequence);
        if (!matcher.find() || i == 1) {
            return C1600g.m3203a(charSequence.toString());
        }
        int i2 = 10;
        if (i > 0) {
            i2 = C1713d.m3075d(i, 10);
        }
        ArrayList arrayList = new ArrayList(i2);
        int i3 = i - 1;
        int i4 = 0;
        do {
            arrayList.add(charSequence.subSequence(i4, matcher.start()).toString());
            end = matcher.end();
            if (i3 >= 0 && arrayList.size() == i3) {
                break;
            }
            i4 = end;
        } while (matcher.find());
        arrayList.add(charSequence.subSequence(end, charSequence.length()).toString());
        return arrayList;
    }

    public String toString() {
        String pattern = this.f4431b.toString();
        C1694h.m3122a((Object) pattern, "nativePattern.toString()");
        return pattern;
    }
}
