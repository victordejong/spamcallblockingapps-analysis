package kotlin.reflect.jvm.internal.impl.e;

import java.util.List;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.c;
import kotlin.reflect.jvm.internal.impl.c.e;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/n.class */
public final class n {
    public static final String a(List<e> pathSegments) {
        p.d(pathSegments, "pathSegments");
        StringBuilder sb = new StringBuilder();
        for (e eVar : pathSegments) {
            if (sb.length() > 0) {
                sb.append(".");
            }
            sb.append(a(eVar));
        }
        String sb2 = sb.toString();
        p.b(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    public static final String a(c cVar) {
        p.d(cVar, "<this>");
        List<e> g = cVar.g();
        p.b(g, "pathSegments()");
        return a(g);
    }

    public static final String a(e eVar) {
        p.d(eVar, "<this>");
        boolean b2 = b(eVar);
        String a2 = eVar.a();
        p.b(a2, "asString()");
        String str = a2;
        if (b2) {
            str = p.a("`" + a2, (Object) "`");
        }
        return str;
    }

    private static final boolean b(e eVar) {
        boolean z;
        if (eVar.f37342a) {
            return false;
        }
        String a2 = eVar.a();
        p.b(a2, "asString()");
        if (i.f37635a.contains(a2)) {
            return true;
        }
        String str = a2;
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
