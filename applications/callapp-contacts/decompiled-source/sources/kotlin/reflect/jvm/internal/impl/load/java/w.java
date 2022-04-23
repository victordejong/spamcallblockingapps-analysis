package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.List;
import kotlin.a.n;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.g.a.a;
import kotlin.x;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/w.class */
public final class w {
    public static final List<e> a(e methodName) {
        p.d(methodName, "name");
        String a2 = methodName.a();
        p.b(a2, "name.asString()");
        t tVar = t.f37908a;
        if (t.a(a2)) {
            p.d(methodName, "methodName");
            e a3 = a(methodName, "get", false, null, 12);
            e eVar = a3;
            if (a3 == null) {
                eVar = a(methodName, "is", false, null, 8);
            }
            return n.b(eVar);
        }
        t tVar2 = t.f37908a;
        if (t.b(a2)) {
            p.d(methodName, "methodName");
            return n.e(a(methodName, false), a(methodName, true));
        }
        f fVar = f.f37769a;
        return f.a(methodName);
    }

    private static final e a(e eVar, String str, boolean z, String str2) {
        if (eVar.f37342a) {
            return null;
        }
        String b2 = eVar.b();
        p.b(b2, "methodName.identifier");
        if (!kotlin.h.p.a(b2, str, false) || b2.length() == str.length()) {
            return null;
        }
        char charAt = b2.charAt(str.length());
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
            if (!x.f38657a || z) {
                return e.a(p.a(str2, (Object) kotlin.h.p.a(b2, (CharSequence) str)));
            }
            throw new AssertionError("Assertion failed");
        } else if (!z) {
            return eVar;
        } else {
            String a2 = a.a(kotlin.h.p.a(b2, (CharSequence) str));
            if (!e.b(a2)) {
                return null;
            }
            return e.a(a2);
        }
    }

    private static /* synthetic */ e a(e eVar, String str, boolean z, String str2, int i) {
        if ((i & 4) != 0) {
            z = true;
        }
        if ((i & 8) != 0) {
            str2 = null;
        }
        return a(eVar, str, z, str2);
    }

    private static e a(e methodName, boolean z) {
        p.d(methodName, "methodName");
        return a(methodName, "set", false, z ? "is" : null, 4);
    }
}
