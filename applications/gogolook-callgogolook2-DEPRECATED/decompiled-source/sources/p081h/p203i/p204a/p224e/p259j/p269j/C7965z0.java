package p081h.p203i.p204a.p224e.p259j.p269j;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7869n1;
/* renamed from: h.i.a.e.j.j.z0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/z0.class */
public class C7965z0 {

    /* renamed from: b */
    public static volatile C7965z0 f18682b;

    /* renamed from: c */
    public static final C7965z0 f18683c = new C7965z0(true);

    /* renamed from: a */
    public final Map<C7966a, AbstractC7869n1.C7873d<?, ?>> f18684a;

    /* renamed from: h.i.a.e.j.j.z0$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/z0$a.class */
    public static final class C7966a {

        /* renamed from: a */
        public final Object f18685a;

        /* renamed from: b */
        public final int f18686b;

        public C7966a(Object obj, int i) {
            this.f18685a = obj;
            this.f18686b = i;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof C7966a)) {
                return false;
            }
            C7966a aVar = (C7966a) obj;
            return this.f18685a == aVar.f18685a && this.f18686b == aVar.f18686b;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f18685a) * 65535) + this.f18686b;
        }
    }

    static {
        m18740b();
    }

    public C7965z0() {
        this.f18684a = new HashMap();
    }

    public C7965z0(boolean z) {
        this.f18684a = Collections.emptyMap();
    }

    /* renamed from: a */
    public static C7965z0 m18742a() {
        return AbstractC7855l1.m19261a(C7965z0.class);
    }

    /* renamed from: b */
    public static Class<?> m18740b() {
        try {
            return Class.forName("h.i.g.n");
        } catch (ClassNotFoundException e) {
            return null;
        }
    }

    /* renamed from: c */
    public static C7965z0 m18739c() {
        return C7958y0.m18803b();
    }

    /* renamed from: d */
    public static C7965z0 m18738d() {
        C7965z0 z0Var = f18682b;
        C7965z0 z0Var2 = z0Var;
        if (z0Var == null) {
            synchronized (C7965z0.class) {
                try {
                    C7965z0 z0Var3 = f18682b;
                    z0Var2 = z0Var3;
                    if (z0Var3 == null) {
                        z0Var2 = C7958y0.m18802c();
                        f18682b = z0Var2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return z0Var2;
    }

    /* renamed from: a */
    public final <ContainingType extends AbstractC7925t2> AbstractC7869n1.C7873d<ContainingType, ?> m18741a(ContainingType containingtype, int i) {
        return (AbstractC7869n1.C7873d<ContainingType, ?>) this.f18684a.get(new C7966a(containingtype, i));
    }
}
