package kotlin.p081e.p083b;

import kotlin.AbstractC1619c;
import kotlin.p081e.p082a.AbstractC1662a;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p082a.AbstractC1664c;
import kotlin.p081e.p082a.AbstractC1665d;
import kotlin.p081e.p082a.AbstractC1666e;
import kotlin.p081e.p082a.AbstractC1667f;
import kotlin.p081e.p082a.AbstractC1668g;
import kotlin.p081e.p082a.AbstractC1669h;
import kotlin.p081e.p082a.AbstractC1670i;
import kotlin.p081e.p082a.AbstractC1671j;
import kotlin.p081e.p082a.AbstractC1672k;
import kotlin.p081e.p082a.AbstractC1673l;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p082a.AbstractC1675n;
import kotlin.p081e.p082a.AbstractC1676o;
import kotlin.p081e.p082a.AbstractC1677p;
import kotlin.p081e.p082a.AbstractC1678q;
import kotlin.p081e.p082a.AbstractC1679r;
import kotlin.p081e.p082a.AbstractC1680s;
import kotlin.p081e.p082a.AbstractC1681t;
import kotlin.p081e.p082a.AbstractC1682u;
import kotlin.p081e.p082a.AbstractC1683v;
import kotlin.p081e.p082a.AbstractC1684w;
/* renamed from: kotlin.e.b.q */
/* loaded from: classes-dex2jar.jar:kotlin/e/b/q.class */
public class C1706q {
    /* renamed from: a */
    public static int m3098a(Object obj) {
        if (obj instanceof AbstractC1692f) {
            return ((AbstractC1692f) obj).mo3114g();
        }
        if (obj instanceof AbstractC1662a) {
            return 0;
        }
        if (obj instanceof AbstractC1663b) {
            return 1;
        }
        if (obj instanceof AbstractC1674m) {
            return 2;
        }
        if (obj instanceof AbstractC1678q) {
            return 3;
        }
        if (obj instanceof AbstractC1679r) {
            return 4;
        }
        if (obj instanceof AbstractC1680s) {
            return 5;
        }
        if (obj instanceof AbstractC1681t) {
            return 6;
        }
        if (obj instanceof AbstractC1682u) {
            return 7;
        }
        if (obj instanceof AbstractC1683v) {
            return 8;
        }
        if (obj instanceof AbstractC1684w) {
            return 9;
        }
        if (obj instanceof AbstractC1664c) {
            return 10;
        }
        if (obj instanceof AbstractC1665d) {
            return 11;
        }
        if (obj instanceof AbstractC1666e) {
            return 12;
        }
        if (obj instanceof AbstractC1667f) {
            return 13;
        }
        if (obj instanceof AbstractC1668g) {
            return 14;
        }
        if (obj instanceof AbstractC1669h) {
            return 15;
        }
        if (obj instanceof AbstractC1670i) {
            return 16;
        }
        if (obj instanceof AbstractC1671j) {
            return 17;
        }
        if (obj instanceof AbstractC1672k) {
            return 18;
        }
        if (obj instanceof AbstractC1673l) {
            return 19;
        }
        if (obj instanceof AbstractC1675n) {
            return 20;
        }
        if (obj instanceof AbstractC1676o) {
            return 21;
        }
        return obj instanceof AbstractC1677p ? 22 : -1;
    }

    /* renamed from: a */
    public static ClassCastException m3099a(ClassCastException classCastException) {
        throw ((ClassCastException) m3094a(classCastException));
    }

    /* renamed from: a */
    private static <T extends Throwable> T m3094a(T t) {
        return (T) C1694h.m3118a((Throwable) t, C1706q.class.getName());
    }

    /* renamed from: a */
    public static void m3096a(Object obj, String str) {
        String name = obj == null ? "null" : obj.getClass().getName();
        m3095a(name + " cannot be cast to " + str);
    }

    /* renamed from: a */
    public static void m3095a(String str) {
        throw m3099a(new ClassCastException(str));
    }

    /* renamed from: a */
    public static boolean m3097a(Object obj, int i) {
        return (obj instanceof AbstractC1619c) && m3098a(obj) == i;
    }

    /* renamed from: b */
    public static Object m3093b(Object obj, int i) {
        if (obj != null && !m3097a(obj, i)) {
            m3096a(obj, "kotlin.jvm.functions.Function" + i);
        }
        return obj;
    }
}
