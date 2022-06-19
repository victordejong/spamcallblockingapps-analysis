package kotlin;

import java.io.Serializable;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlin.j */
/* loaded from: classes-dex2jar.jar:kotlin/j.class */
public final class C1768j<T> implements Serializable {

    /* renamed from: a */
    public static final C1769a f4443a = new C1769a(null);

    /* renamed from: b */
    private final Object f4444b;

    /* renamed from: kotlin.j$a */
    /* loaded from: classes-dex2jar.jar:kotlin/j$a.class */
    public static final class C1769a {
        private C1769a() {
        }

        public /* synthetic */ C1769a(C1691e c1691e) {
            this();
        }
    }

    /* renamed from: kotlin.j$b */
    /* loaded from: classes-dex2jar.jar:kotlin/j$b.class */
    public static final class C1770b implements Serializable {

        /* renamed from: a */
        public final Throwable f4445a;

        public C1770b(Throwable th) {
            C1694h.m3117b(th, "exception");
            this.f4445a = th;
        }

        public boolean equals(Object obj) {
            return (obj instanceof C1770b) && C1694h.m3123a(this.f4445a, ((C1770b) obj).f4445a);
        }

        public int hashCode() {
            return this.f4445a.hashCode();
        }

        public String toString() {
            return "Failure(" + this.f4445a + ')';
        }
    }

    /* renamed from: a */
    public static final boolean m2986a(Object obj) {
        return !(obj instanceof C1770b);
    }

    /* renamed from: a */
    public static boolean m2985a(Object obj, Object obj2) {
        return (obj2 instanceof C1768j) && C1694h.m3123a(obj, ((C1768j) obj2).m2987a());
    }

    /* renamed from: b */
    public static final boolean m2984b(Object obj) {
        return obj instanceof C1770b;
    }

    /* renamed from: c */
    public static final Throwable m2983c(Object obj) {
        return obj instanceof C1770b ? ((C1770b) obj).f4445a : null;
    }

    /* renamed from: d */
    public static String m2982d(Object obj) {
        String str;
        if (obj instanceof C1770b) {
            str = obj.toString();
        } else {
            str = "Success(" + obj + ')';
        }
        return str;
    }

    /* renamed from: e */
    public static Object m2981e(Object obj) {
        return obj;
    }

    /* renamed from: f */
    public static int m2980f(Object obj) {
        return obj != null ? obj.hashCode() : 0;
    }

    /* renamed from: a */
    public final /* synthetic */ Object m2987a() {
        return this.f4444b;
    }

    public boolean equals(Object obj) {
        return m2985a(this.f4444b, obj);
    }

    public int hashCode() {
        return m2980f(this.f4444b);
    }

    public String toString() {
        return m2982d(this.f4444b);
    }
}
