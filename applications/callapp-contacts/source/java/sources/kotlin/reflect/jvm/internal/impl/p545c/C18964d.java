package kotlin.reflect.jvm.internal.impl.p545c;

import kotlin.jvm.internal.C18524p;
import kotlin.p532h.C18425p;
/* renamed from: kotlin.reflect.jvm.internal.impl.c.d */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/c/d.class */
public final class C18964d {

    /* renamed from: kotlin.reflect.jvm.internal.impl.c.d$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/c/d$a.class */
    public final /* synthetic */ class C18965a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f64695a;

        static {
            int[] iArr = new int[EnumC18969h.values().length];
            iArr[EnumC18969h.BEGINNING.ordinal()] = 1;
            iArr[EnumC18969h.AFTER_DOT.ordinal()] = 2;
            iArr[EnumC18969h.MIDDLE.ordinal()] = 3;
            f64695a = iArr;
        }
    }

    /* renamed from: a */
    public static final C18961b m2723a(C18961b c18961b, C18961b prefix) {
        C18524p.m3840d(c18961b, "<this>");
        C18524p.m3840d(prefix, "prefix");
        if (!m2722b(c18961b, prefix) || prefix.m2741c()) {
            return c18961b;
        }
        if (C18524p.m3850a(c18961b, prefix)) {
            C18961b ROOT = C18961b.f64685a;
            C18524p.m3843b(ROOT, "ROOT");
            return ROOT;
        }
        String m2746a = c18961b.m2746a();
        C18524p.m3843b(m2746a, "asString()");
        String substring = m2746a.substring(prefix.m2746a().length() + 1);
        C18524p.m3843b(substring, "(this as java.lang.String).substring(startIndex)");
        return new C18961b(substring);
    }

    /* renamed from: b */
    private static boolean m2722b(C18961b c18961b, C18961b packageName) {
        C18524p.m3840d(c18961b, "<this>");
        C18524p.m3840d(packageName, "packageName");
        if (!C18524p.m3850a(c18961b, packageName) && !packageName.m2741c()) {
            String m2746a = c18961b.m2746a();
            C18524p.m3843b(m2746a, "this.asString()");
            String m2746a2 = packageName.m2746a();
            C18524p.m3843b(m2746a2, "packageName.asString()");
            return C18425p.m3957a(m2746a, m2746a2, false) && m2746a.charAt(m2746a2.length()) == '.';
        }
        return true;
    }
}
