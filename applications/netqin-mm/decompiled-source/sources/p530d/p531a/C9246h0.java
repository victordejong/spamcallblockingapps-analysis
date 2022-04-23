package p530d.p531a;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.C9303r0;
/* renamed from: d.a.h0 */
/* loaded from: classes2-dex2jar.jar:d/a/h0.class */
public final class C9246h0 {

    /* renamed from: d */
    public static C9246h0 f35802d;

    /* renamed from: a */
    public final LinkedHashSet<AbstractC9243g0> f35804a = new LinkedHashSet<>();

    /* renamed from: b */
    public final LinkedHashMap<String, AbstractC9243g0> f35805b = new LinkedHashMap<>();

    /* renamed from: c */
    public static final Logger f35801c = Logger.getLogger(C9246h0.class.getName());

    /* renamed from: e */
    public static final Iterable<Class<?>> f35803e = m3088c();

    /* renamed from: d.a.h0$a */
    /* loaded from: classes2-dex2jar.jar:d/a/h0$a.class */
    public static final class C9247a implements C9303r0.AbstractC9305b<AbstractC9243g0> {
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public int mo636b(AbstractC9243g0 g0Var) {
            return g0Var.mo2137b();
        }

        /* renamed from: b  reason: avoid collision after fix types in other method */
        public boolean mo638a(AbstractC9243g0 g0Var) {
            return g0Var.mo2136c();
        }
    }

    /* renamed from: b */
    public static C9246h0 m3089b() {
        C9246h0 h0Var;
        synchronized (C9246h0.class) {
            try {
                if (f35802d == null) {
                    List<AbstractC9243g0> b = C9303r0.m2966b(AbstractC9243g0.class, f35803e, AbstractC9243g0.class.getClassLoader(), new C9247a());
                    f35802d = new C9246h0();
                    for (AbstractC9243g0 g0Var : b) {
                        Logger logger = f35801c;
                        logger.fine("Service loader found " + g0Var);
                        if (g0Var.mo2136c()) {
                            f35802d.m3091a(g0Var);
                        }
                    }
                    f35802d.m3092a();
                }
                h0Var = f35802d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return h0Var;
    }

    /* renamed from: c */
    public static List<Class<?>> m3088c() {
        ArrayList arrayList = new ArrayList();
        try {
            arrayList.add(Class.forName("d.a.v0.f1"));
        } catch (ClassNotFoundException e) {
            f35801c.log(Level.WARNING, "Unable to find pick-first LoadBalancer", (Throwable) e);
        }
        try {
            arrayList.add(Class.forName("d.a.z0.b"));
        } catch (ClassNotFoundException e2) {
            f35801c.log(Level.FINE, "Unable to find round-robin LoadBalancer", (Throwable) e2);
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: a */
    public AbstractC9243g0 m3090a(String str) {
        AbstractC9243g0 g0Var;
        synchronized (this) {
            LinkedHashMap<String, AbstractC9243g0> linkedHashMap = this.f35805b;
            C4933n.m24794a(str, "policy");
            g0Var = linkedHashMap.get(str);
        }
        return g0Var;
    }

    /* renamed from: a */
    public final void m3092a() {
        synchronized (this) {
            this.f35805b.clear();
            Iterator<AbstractC9243g0> it = this.f35804a.iterator();
            while (it.hasNext()) {
                AbstractC9243g0 next = it.next();
                String a = next.mo2140a();
                AbstractC9243g0 g0Var = this.f35805b.get(a);
                if (g0Var == null || g0Var.mo2137b() < next.mo2137b()) {
                    this.f35805b.put(a, next);
                }
            }
        }
    }

    /* renamed from: a */
    public final void m3091a(AbstractC9243g0 g0Var) {
        synchronized (this) {
            C4933n.m24790a(g0Var.mo2136c(), "isAvailable() returned false");
            this.f35804a.add(g0Var);
        }
    }
}
