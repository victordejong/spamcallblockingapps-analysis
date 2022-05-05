package kotlin.jvm.internal;

import java.util.List;
import java.util.Map;
import kotlin.Function;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function10;
import kotlin.jvm.functions.Function11;
import kotlin.jvm.functions.Function12;
import kotlin.jvm.functions.Function13;
import kotlin.jvm.functions.Function14;
import kotlin.jvm.functions.Function15;
import kotlin.jvm.functions.Function16;
import kotlin.jvm.functions.Function17;
import kotlin.jvm.functions.Function18;
import kotlin.jvm.functions.Function19;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function20;
import kotlin.jvm.functions.Function21;
import kotlin.jvm.functions.Function22;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.functions.Function7;
import kotlin.jvm.functions.Function8;
import kotlin.jvm.functions.Function9;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.jvm.internal.markers.KMutableList;
import kotlin.jvm.internal.markers.KMutableMap;
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/TypeIntrinsics.class */
public class TypeIntrinsics {
    /* renamed from: a */
    public static List m1786a(Object obj) {
        if (!(obj instanceof KMappedMarker) || (obj instanceof KMutableList)) {
            return m1784c(obj);
        }
        m1778i(obj, "kotlin.collections.MutableList");
        throw null;
    }

    /* renamed from: b */
    public static Object m1785b(Object obj, int i) {
        if (obj == null || m1782e(obj, i)) {
            return obj;
        }
        m1778i(obj, "kotlin.jvm.functions.Function" + i);
        throw null;
    }

    /* renamed from: c */
    public static List m1784c(Object obj) {
        try {
            return (List) obj;
        } catch (ClassCastException e) {
            m1779h(e);
            throw null;
        }
    }

    /* renamed from: d */
    public static int m1783d(Object obj) {
        if (obj instanceof FunctionBase) {
            return ((FunctionBase) obj).getArity();
        }
        if (obj instanceof Function0) {
            return 0;
        }
        if (obj instanceof Function1) {
            return 1;
        }
        if (obj instanceof Function2) {
            return 2;
        }
        if (obj instanceof Function3) {
            return 3;
        }
        if (obj instanceof Function4) {
            return 4;
        }
        if (obj instanceof Function5) {
            return 5;
        }
        if (obj instanceof Function6) {
            return 6;
        }
        if (obj instanceof Function7) {
            return 7;
        }
        if (obj instanceof Function8) {
            return 8;
        }
        if (obj instanceof Function9) {
            return 9;
        }
        if (obj instanceof Function10) {
            return 10;
        }
        if (obj instanceof Function11) {
            return 11;
        }
        if (obj instanceof Function12) {
            return 12;
        }
        if (obj instanceof Function13) {
            return 13;
        }
        if (obj instanceof Function14) {
            return 14;
        }
        if (obj instanceof Function15) {
            return 15;
        }
        if (obj instanceof Function16) {
            return 16;
        }
        if (obj instanceof Function17) {
            return 17;
        }
        if (obj instanceof Function18) {
            return 18;
        }
        if (obj instanceof Function19) {
            return 19;
        }
        if (obj instanceof Function20) {
            return 20;
        }
        if (obj instanceof Function21) {
            return 21;
        }
        return obj instanceof Function22 ? 22 : -1;
    }

    /* renamed from: e */
    public static boolean m1782e(Object obj, int i) {
        return (obj instanceof Function) && m1783d(obj) == i;
    }

    /* renamed from: f */
    public static boolean m1781f(Object obj) {
        return (obj instanceof Map.Entry) && (!(obj instanceof KMappedMarker) || (obj instanceof KMutableMap.Entry));
    }

    /* renamed from: g */
    private static <T extends Throwable> T m1780g(T t) {
        Intrinsics.m1823l(t, TypeIntrinsics.class.getName());
        return t;
    }

    /* renamed from: h */
    public static ClassCastException m1779h(ClassCastException classCastException) {
        m1780g(classCastException);
        throw classCastException;
    }

    /* renamed from: i */
    public static void m1778i(Object obj, String str) {
        String name = obj == null ? "null" : obj.getClass().getName();
        m1777j(name + " cannot be cast to " + str);
        throw null;
    }

    /* renamed from: j */
    public static void m1777j(String str) {
        m1779h(new ClassCastException(str));
        throw null;
    }
}
