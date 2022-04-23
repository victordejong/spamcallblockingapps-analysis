package kotlin.jvm.internal;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.a.a;
import kotlin.jvm.internal.a.b;
import kotlin.jvm.internal.a.c;
import kotlin.jvm.internal.a.e;
import kotlin.jvm.internal.a.f;
import kotlin.jvm.internal.a.h;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/ah.class */
public class ah {
    public static Iterable a(Object obj) {
        if ((obj instanceof a) && !(obj instanceof c)) {
            a(obj, "kotlin.collections.MutableIterable");
        }
        return f(obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:85:0x0177  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object a(java.lang.Object r4, int r5) {
        /*
            Method dump skipped, instructions count: 390
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.jvm.internal.ah.a(java.lang.Object, int):java.lang.Object");
    }

    private static <T extends Throwable> T a(T t) {
        return (T) p.a((Throwable) t, ah.class.getName());
    }

    private static void a(Object obj, String str) {
        String name = obj == null ? JsonReaderKt.NULL : obj.getClass().getName();
        throw ((ClassCastException) a(new ClassCastException(name + " cannot be cast to " + str)));
    }

    public static Collection b(Object obj) {
        if ((obj instanceof a) && !(obj instanceof b)) {
            a(obj, "kotlin.collections.MutableCollection");
        }
        return g(obj);
    }

    public static List c(Object obj) {
        if ((obj instanceof a) && !(obj instanceof e)) {
            a(obj, "kotlin.collections.MutableList");
        }
        return h(obj);
    }

    public static Set d(Object obj) {
        if ((obj instanceof a) && !(obj instanceof h)) {
            a(obj, "kotlin.collections.MutableSet");
        }
        return i(obj);
    }

    public static Map e(Object obj) {
        if ((obj instanceof a) && !(obj instanceof f)) {
            a(obj, "kotlin.collections.MutableMap");
        }
        return j(obj);
    }

    private static Iterable f(Object obj) {
        try {
            return (Iterable) obj;
        } catch (ClassCastException e) {
            throw ((ClassCastException) a(e));
        }
    }

    private static Collection g(Object obj) {
        try {
            return (Collection) obj;
        } catch (ClassCastException e) {
            throw ((ClassCastException) a(e));
        }
    }

    private static List h(Object obj) {
        try {
            return (List) obj;
        } catch (ClassCastException e) {
            throw ((ClassCastException) a(e));
        }
    }

    private static Set i(Object obj) {
        try {
            return (Set) obj;
        } catch (ClassCastException e) {
            throw ((ClassCastException) a(e));
        }
    }

    private static Map j(Object obj) {
        try {
            return (Map) obj;
        } catch (ClassCastException e) {
            throw ((ClassCastException) a(e));
        }
    }
}
