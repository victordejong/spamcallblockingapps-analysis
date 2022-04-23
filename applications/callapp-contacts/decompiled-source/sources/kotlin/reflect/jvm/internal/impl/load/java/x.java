package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.builtins.g;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.am;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.as;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.load.java.y;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.checker.TypeCheckingProcedure;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/x.class */
public final class x {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/x$a.class */
    public static final class a extends r implements Function1<kotlin.reflect.jvm.internal.impl.descriptors.b, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f38009a = new a();

        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(kotlin.reflect.jvm.internal.impl.descriptors.b bVar) {
            kotlin.reflect.jvm.internal.impl.descriptors.b it2 = bVar;
            p.d(it2, "it");
            return Boolean.valueOf(h.f37773a.b(kotlin.reflect.jvm.internal.impl.resolve.b.a.a(it2)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/x$b.class */
    public static final class b extends r implements Function1<kotlin.reflect.jvm.internal.impl.descriptors.b, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f38010a = new b();

        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(kotlin.reflect.jvm.internal.impl.descriptors.b bVar) {
            kotlin.reflect.jvm.internal.impl.descriptors.b it2 = bVar;
            p.d(it2, "it");
            d dVar = d.f37764a;
            return Boolean.valueOf(d.b((as) it2));
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/x$c.class */
    static final class c extends r implements Function1<kotlin.reflect.jvm.internal.impl.descriptors.b, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        public static final c f38011a = new c();

        c() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(kotlin.reflect.jvm.internal.impl.descriptors.b bVar) {
            boolean z;
            kotlin.reflect.jvm.internal.impl.descriptors.b it2 = bVar;
            p.d(it2, "it");
            if (g.a(it2)) {
                e eVar = e.f37766a;
                if (e.a(it2) != null) {
                    z = true;
                    return Boolean.valueOf(z);
                }
            }
            z = false;
            return Boolean.valueOf(z);
        }
    }

    public static final <T extends kotlin.reflect.jvm.internal.impl.descriptors.b> T a(T t) {
        p.d(t, "<this>");
        y.a aVar = y.f38013b;
        if (!y.g().contains(t.getName())) {
            f fVar = f.f37769a;
            if (!f.c().contains(kotlin.reflect.jvm.internal.impl.resolve.b.a.a((kotlin.reflect.jvm.internal.impl.descriptors.b) t).getName())) {
                return null;
            }
        }
        if (t instanceof an ? true : t instanceof am) {
            return (T) kotlin.reflect.jvm.internal.impl.resolve.b.a.a(t, a.f38009a);
        }
        if (t instanceof as) {
            return (T) kotlin.reflect.jvm.internal.impl.resolve.b.a.a(t, b.f38010a);
        }
        return null;
    }

    public static final boolean a(d dVar, kotlin.reflect.jvm.internal.impl.descriptors.a specialCallableDescriptor) {
        p.d(dVar, "<this>");
        p.d(specialCallableDescriptor, "specialCallableDescriptor");
        SimpleType defaultType = ((d) specialCallableDescriptor.getContainingDeclaration()).getDefaultType();
        p.b(defaultType, "specialCallableDescriptor.containingDeclaration as ClassDescriptor).defaultType");
        for (d a2 = kotlin.reflect.jvm.internal.impl.resolve.d.a(dVar); a2 != null; a2 = kotlin.reflect.jvm.internal.impl.resolve.d.a(a2)) {
            if (!(a2 instanceof kotlin.reflect.jvm.internal.impl.load.java.b.d)) {
                if (TypeCheckingProcedure.findCorrespondingSupertype(a2.getDefaultType(), defaultType) != null) {
                    return !g.a((k) a2);
                }
            }
        }
        return false;
    }

    public static final boolean b(kotlin.reflect.jvm.internal.impl.descriptors.b bVar) {
        p.d(bVar, "<this>");
        return a(bVar) != null;
    }

    public static final <T extends kotlin.reflect.jvm.internal.impl.descriptors.b> T c(T t) {
        p.d(t, "<this>");
        T t2 = (T) a(t);
        if (t2 != null) {
            return t2;
        }
        e eVar = e.f37766a;
        e name = t.getName();
        p.b(name, "name");
        if (!e.a(name)) {
            return null;
        }
        return (T) kotlin.reflect.jvm.internal.impl.resolve.b.a.a(t, c.f38011a);
    }

    public static final String d(kotlin.reflect.jvm.internal.impl.descriptors.b callableMemberDescriptor) {
        p.d(callableMemberDescriptor, "callableMemberDescriptor");
        kotlin.reflect.jvm.internal.impl.descriptors.b f = f(callableMemberDescriptor);
        kotlin.reflect.jvm.internal.impl.descriptors.b a2 = f == null ? null : kotlin.reflect.jvm.internal.impl.resolve.b.a.a(f);
        if (a2 == null) {
            return null;
        }
        if (a2 instanceof an) {
            return h.f37773a.a(a2);
        }
        if (!(a2 instanceof as)) {
            return null;
        }
        d dVar = d.f37764a;
        e a3 = d.a((as) a2);
        if (a3 != null) {
            return a3.a();
        }
        return null;
    }

    public static final boolean e(kotlin.reflect.jvm.internal.impl.descriptors.b bVar) {
        p.d(bVar, "<this>");
        p.d(bVar, "<this>");
        return (kotlin.reflect.jvm.internal.impl.resolve.b.a.a(bVar).getContainingDeclaration() instanceof kotlin.reflect.jvm.internal.impl.load.java.b.d) || g.a(bVar);
    }

    private static final kotlin.reflect.jvm.internal.impl.descriptors.b f(kotlin.reflect.jvm.internal.impl.descriptors.b bVar) {
        if (g.a(bVar)) {
            return a(bVar);
        }
        return null;
    }
}
