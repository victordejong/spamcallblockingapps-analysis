package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19016am;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19025as;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.load.java.C19592y;
import kotlin.reflect.jvm.internal.impl.load.java.p559b.AbstractC19370d;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.C19807d;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.checker.TypeCheckingProcedure;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.x */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/x.class */
public final class C19588x {

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.x$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/x$a.class */
    public static final class C19589a extends AbstractC18526r implements Function1<AbstractC19039b, Boolean> {

        /* renamed from: a */
        public static final C19589a f65642a = new C19589a();

        C19589a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(AbstractC19039b abstractC19039b) {
            AbstractC19039b it2 = abstractC19039b;
            C18524p.m3840d(it2, "it");
            return Boolean.valueOf(C19423h.f65309a.m2162b(C19756a.m1536a(it2)));
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.x$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/x$b.class */
    public static final class C19590b extends AbstractC18526r implements Function1<AbstractC19039b, Boolean> {

        /* renamed from: a */
        public static final C19590b f65643a = new C19590b();

        C19590b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(AbstractC19039b abstractC19039b) {
            AbstractC19039b it2 = abstractC19039b;
            C18524p.m3840d(it2, "it");
            C19387d c19387d = C19387d.f65299a;
            return Boolean.valueOf(C19387d.m2232b((AbstractC19025as) it2));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.x$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/x$c.class */
    public static final class C19591c extends AbstractC18526r implements Function1<AbstractC19039b, Boolean> {

        /* renamed from: a */
        public static final C19591c f65644a = new C19591c();

        C19591c() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(AbstractC19039b abstractC19039b) {
            boolean z;
            AbstractC19039b it2 = abstractC19039b;
            C18524p.m3840d(it2, "it");
            if (AbstractC18940g.m2827a(it2)) {
                C19418e c19418e = C19418e.f65301a;
                if (C19418e.m2172a(it2) != null) {
                    z = true;
                    return Boolean.valueOf(z);
                }
            }
            z = false;
            return Boolean.valueOf(z);
        }
    }

    /* renamed from: a */
    public static final <T extends AbstractC19039b> T m1971a(T t) {
        List list;
        C18524p.m3840d(t, "<this>");
        C19592y.C19593a c19593a = C19592y.f65646b;
        list = C19592y.f65656l;
        if (!list.contains(t.getName())) {
            C19421f c19421f = C19421f.f65304a;
            if (!C19421f.m2166c().contains(C19756a.m1536a((AbstractC19039b) t).getName())) {
                return null;
            }
        }
        if (t instanceof AbstractC19017an ? true : t instanceof AbstractC19016am) {
            return (T) C19756a.m1535a(t, C19589a.f65642a);
        }
        if (!(t instanceof AbstractC19025as)) {
            return null;
        }
        return (T) C19756a.m1535a(t, C19590b.f65643a);
    }

    /* renamed from: a */
    public static final boolean m1970a(AbstractC19070d abstractC19070d, AbstractC18973a specialCallableDescriptor) {
        C18524p.m3840d(abstractC19070d, "<this>");
        C18524p.m3840d(specialCallableDescriptor, "specialCallableDescriptor");
        SimpleType defaultType = ((AbstractC19070d) specialCallableDescriptor.getContainingDeclaration()).getDefaultType();
        C18524p.m3843b(defaultType, "specialCallableDescriptor.containingDeclaration as ClassDescriptor).defaultType");
        AbstractC19070d m1479a = C19807d.m1479a(abstractC19070d);
        while (true) {
            AbstractC19070d abstractC19070d2 = m1479a;
            if (abstractC19070d2 != null) {
                if (!(abstractC19070d2 instanceof AbstractC19370d)) {
                    if (TypeCheckingProcedure.findCorrespondingSupertype(abstractC19070d2.getDefaultType(), defaultType) != null) {
                        return !AbstractC18940g.m2827a((AbstractC19193k) abstractC19070d2);
                    }
                }
                m1479a = C19807d.m1479a(abstractC19070d2);
            } else {
                return false;
            }
        }
    }

    /* renamed from: b */
    public static final boolean m1969b(AbstractC19039b abstractC19039b) {
        C18524p.m3840d(abstractC19039b, "<this>");
        return m1971a(abstractC19039b) != null;
    }

    /* renamed from: c */
    public static final <T extends AbstractC19039b> T m1968c(T t) {
        C18524p.m3840d(t, "<this>");
        T t2 = (T) m1971a(t);
        if (t2 != null) {
            return t2;
        }
        C19418e c19418e = C19418e.f65301a;
        C18966e name = t.getName();
        C18524p.m3843b(name, "name");
        if (C19418e.m2173a(name)) {
            return (T) C19756a.m1535a(t, C19591c.f65644a);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [kotlin.reflect.jvm.internal.impl.descriptors.b] */
    /* renamed from: d */
    public static final String m1967d(AbstractC19039b callableMemberDescriptor) {
        C18524p.m3840d(callableMemberDescriptor, "callableMemberDescriptor");
        AbstractC19039b m1965f = m1965f(callableMemberDescriptor);
        AbstractC19025as m1536a = m1965f == null ? null : C19756a.m1536a(m1965f);
        if (m1536a == null) {
            return null;
        }
        if (m1536a instanceof AbstractC19017an) {
            return C19423h.f65309a.m2163a(m1536a);
        }
        if (!(m1536a instanceof AbstractC19025as)) {
            return null;
        }
        C19387d c19387d = C19387d.f65299a;
        C18966e m2234a = C19387d.m2234a(m1536a);
        if (m2234a == null) {
            return null;
        }
        return m2234a.m2721a();
    }

    /* renamed from: e */
    public static final boolean m1966e(AbstractC19039b abstractC19039b) {
        C18524p.m3840d(abstractC19039b, "<this>");
        C18524p.m3840d(abstractC19039b, "<this>");
        return (C19756a.m1536a(abstractC19039b).getContainingDeclaration() instanceof AbstractC19370d) || AbstractC18940g.m2827a(abstractC19039b);
    }

    /* renamed from: f */
    private static final AbstractC19039b m1965f(AbstractC19039b abstractC19039b) {
        if (AbstractC18940g.m2827a(abstractC19039b)) {
            return m1971a(abstractC19039b);
        }
        return null;
    }
}
