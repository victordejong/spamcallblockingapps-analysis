package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.List;
import kotlin.C20130x;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p532h.C18425p;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p555g.p556a.C19304a;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.w */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/w.class */
public final class C19587w {
    /* renamed from: a */
    public static final List<C18966e> m1975a(C18966e methodName) {
        C18524p.m3840d(methodName, "name");
        String m2721a = methodName.m2721a();
        C18524p.m3843b(m2721a, "name.asString()");
        C19521t c19521t = C19521t.f65508a;
        if (C19521t.m2048a(m2721a)) {
            C18524p.m3840d(methodName, "methodName");
            C18966e m1973a = m1973a(methodName, "get", false, null, 12);
            C18966e c18966e = m1973a;
            if (m1973a == null) {
                c18966e = m1973a(methodName, "is", false, null, 8);
            }
            return C18282n.m4169b(c18966e);
        }
        C19521t c19521t2 = C19521t.f65508a;
        if (C19521t.m2047b(m2721a)) {
            C18524p.m3840d(methodName, "methodName");
            return C18282n.m4164e(m1972a(methodName, false), m1972a(methodName, true));
        }
        C19421f c19421f = C19421f.f65304a;
        return C19421f.m2168a(methodName);
    }

    /* renamed from: a */
    private static final C18966e m1974a(C18966e c18966e, String str, boolean z, String str2) {
        if (c18966e.f64696a) {
            return null;
        }
        String m2717b = c18966e.m2717b();
        C18524p.m3843b(m2717b, "methodName.identifier");
        if (!C18425p.m3957a(m2717b, str, false) || m2717b.length() == str.length()) {
            return null;
        }
        char charAt = m2717b.charAt(str.length());
        boolean z2 = false;
        if ('a' <= charAt) {
            z2 = false;
            if (charAt <= 'z') {
                z2 = true;
            }
        }
        if (z2) {
            return null;
        }
        if (str2 != null) {
            if (C20130x.f66532a && !z) {
                throw new AssertionError("Assertion failed");
            }
            return C18966e.m2719a(C18524p.m3847a(str2, (Object) C18425p.m3931a(m2717b, (CharSequence) str)));
        } else if (!z) {
            return c18966e;
        } else {
            String m2305a = C19304a.m2305a(C18425p.m3931a(m2717b, (CharSequence) str));
            if (C18966e.m2716b(m2305a)) {
                return C18966e.m2719a(m2305a);
            }
            return null;
        }
    }

    /* renamed from: a */
    private static /* synthetic */ C18966e m1973a(C18966e c18966e, String str, boolean z, String str2, int i) {
        if ((i & 4) != 0) {
            z = true;
        }
        if ((i & 8) != 0) {
            str2 = null;
        }
        return m1974a(c18966e, str, z, str2);
    }

    /* renamed from: a */
    private static C18966e m1972a(C18966e methodName, boolean z) {
        C18524p.m3840d(methodName, "methodName");
        return m1973a(methodName, "set", false, z ? "is" : null, 4);
    }
}
