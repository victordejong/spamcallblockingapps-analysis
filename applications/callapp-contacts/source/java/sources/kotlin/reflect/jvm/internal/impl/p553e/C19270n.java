package kotlin.reflect.jvm.internal.impl.p553e;

import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.p545c.C18962c;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
/* renamed from: kotlin.reflect.jvm.internal.impl.e.n */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/n.class */
public final class C19270n {
    /* renamed from: a */
    public static final String m2353a(List<C18966e> pathSegments) {
        C18524p.m3840d(pathSegments, "pathSegments");
        StringBuilder sb = new StringBuilder();
        for (C18966e c18966e : pathSegments) {
            if (sb.length() > 0) {
                sb.append(".");
            }
            sb.append(m2351a(c18966e));
        }
        String sb2 = sb.toString();
        C18524p.m3843b(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    /* renamed from: a */
    public static final String m2352a(C18962c c18962c) {
        C18524p.m3840d(c18962c, "<this>");
        List<C18966e> m2725g = c18962c.m2725g();
        C18524p.m3843b(m2725g, "pathSegments()");
        return m2353a(m2725g);
    }

    /* renamed from: a */
    public static final String m2351a(C18966e c18966e) {
        C18524p.m3840d(c18966e, "<this>");
        boolean m2350b = m2350b(c18966e);
        String m2721a = c18966e.m2721a();
        C18524p.m3843b(m2721a, "asString()");
        String str = m2721a;
        if (m2350b) {
            str = C18524p.m3847a("`" + m2721a, (Object) "`");
        }
        return str;
    }

    /* renamed from: b */
    private static final boolean m2350b(C18966e c18966e) {
        boolean z;
        if (c18966e.f64696a) {
            return false;
        }
        String m2721a = c18966e.m2721a();
        C18524p.m3843b(m2721a, "asString()");
        if (C19263i.f65115a.contains(m2721a)) {
            return true;
        }
        String str = m2721a;
        int i = 0;
        while (true) {
            if (i >= str.length()) {
                z = false;
                break;
            }
            char charAt = str.charAt(i);
            if (!Character.isLetterOrDigit(charAt) && charAt != '_') {
                z = true;
                break;
            }
            i++;
        }
        return z;
    }
}
