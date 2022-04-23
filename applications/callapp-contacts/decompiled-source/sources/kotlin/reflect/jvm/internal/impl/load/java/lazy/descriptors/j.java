package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.a.ab;
import kotlin.a.n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.as;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.load.java.b.k;
import kotlin.reflect.jvm.internal.impl.load.java.d.g;
import kotlin.reflect.jvm.internal.impl.load.java.d.p;
import kotlin.reflect.jvm.internal.impl.resolve.c;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
import kotlin.reflect.jvm.internal.impl.utils.b;
import kotlin.v;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j.class */
public final class j extends k {

    /* renamed from: a  reason: collision with root package name */
    private final g f37874a;

    /* renamed from: b  reason: collision with root package name */
    private final LazyJavaClassDescriptor f37875b;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j$a.class */
    static final class a extends r implements Function1<p, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f37876a = new a();

        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(p pVar) {
            p it2 = pVar;
            kotlin.jvm.internal.p.d(it2, "it");
            return Boolean.valueOf(it2.p());
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j$b.class */
    static final class b extends r implements Function1<h, Collection<? extends e>> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f37877a = new b();

        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Collection<? extends e> invoke(h hVar) {
            h it2 = hVar;
            kotlin.jvm.internal.p.d(it2, "it");
            return it2.getVariableNames();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(kotlin.reflect.jvm.internal.impl.load.java.lazy.g c2, g jClass, LazyJavaClassDescriptor ownerDescriptor) {
        super(c2);
        kotlin.jvm.internal.p.d(c2, "c");
        kotlin.jvm.internal.p.d(jClass, "jClass");
        kotlin.jvm.internal.p.d(ownerDescriptor, "ownerDescriptor");
        this.f37874a = jClass;
        this.f37875b = ownerDescriptor;
    }

    private static <R> Set<R> a(final d dVar, final Set<R> set, final Function1<? super h, ? extends Collection<? extends R>> function1) {
        kotlin.reflect.jvm.internal.impl.utils.b.a(n.a(dVar), LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$1.INSTANCE, new b.a<d, v>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$2
            public final boolean beforeChildren(d current) {
                kotlin.jvm.internal.p.d(current, "current");
                if (current == d.this) {
                    return true;
                }
                h staticScope = current.getStaticScope();
                kotlin.jvm.internal.p.b(staticScope, "current.staticScope");
                if (!(staticScope instanceof k)) {
                    return true;
                }
                set.addAll((Collection) function1.invoke(staticScope));
                return false;
            }

            @Override // kotlin.reflect.jvm.internal.impl.utils.b.d
            public final void result() {
            }
        });
        return set;
    }

    private final an a(an anVar) {
        if (anVar.getKind().isReal()) {
            return anVar;
        }
        Collection<? extends an> overriddenDescriptors = anVar.getOverriddenDescriptors();
        kotlin.jvm.internal.p.b(overriddenDescriptors, "this.overriddenDescriptors");
        Collection<? extends an> collection = overriddenDescriptors;
        ArrayList arrayList = new ArrayList(n.a(collection, 10));
        for (an it2 : collection) {
            kotlin.jvm.internal.p.b(it2, "it");
            arrayList.add(a(it2));
        }
        return (an) n.i((List<? extends Object>) n.l(arrayList));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i
    protected final Set<e> a(kotlin.reflect.jvm.internal.impl.resolve.e.d kindFilter) {
        kotlin.jvm.internal.p.d(kindFilter, "kindFilter");
        Set<e> m = n.m(this.f.invoke().b());
        a(this.f37875b, m, b.f37877a);
        return m;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i
    protected final Set<e> a(kotlin.reflect.jvm.internal.impl.resolve.e.d kindFilter, Function1<? super e, Boolean> function1) {
        kotlin.jvm.internal.p.d(kindFilter, "kindFilter");
        return ab.f36567a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i
    protected final void a(Collection<as> result, e name) {
        kotlin.jvm.internal.p.d(result, "result");
        kotlin.jvm.internal.p.d(name, "name");
        j a2 = k.a(this.f37875b);
        Collection<? extends as> b2 = kotlin.reflect.jvm.internal.impl.load.java.a.a.b(name, a2 == null ? ab.f36567a : n.j(a2.getContributedFunctions(name, kotlin.reflect.jvm.internal.impl.a.a.d.WHEN_GET_SUPER_MEMBERS)), result, this.f37875b, this.f37854d.f37882a.f, this.f37854d.f37882a.u.getOverridingUtil());
        kotlin.jvm.internal.p.b(b2, "resolveOverridesForStaticMembers(\n            name,\n            functionsFromSupertypes,\n            result,\n            ownerDescriptor,\n            c.components.errorReporter,\n            c.components.kotlinTypeChecker.overridingUtil\n        )");
        result.addAll(b2);
        if (!this.f37874a.l()) {
            return;
        }
        if (kotlin.jvm.internal.p.a(name, kotlin.reflect.jvm.internal.impl.builtins.j.f37318c)) {
            as b3 = c.b(this.f37875b);
            kotlin.jvm.internal.p.b(b3, "createEnumValueOfMethod(ownerDescriptor)");
            result.add(b3);
        } else if (kotlin.jvm.internal.p.a(name, kotlin.reflect.jvm.internal.impl.builtins.j.f37317b)) {
            as a3 = c.a(this.f37875b);
            kotlin.jvm.internal.p.b(a3, "createEnumValuesMethod(ownerDescriptor)");
            result.add(a3);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.k, kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i
    protected final void a(e name, Collection<an> result) {
        kotlin.jvm.internal.p.d(name, "name");
        kotlin.jvm.internal.p.d(result, "result");
        Set a2 = a(this.f37875b, new LinkedHashSet(), new LazyJavaStaticClassScope$computeNonDeclaredProperties$propertiesFromSupertypes$1(name));
        if (!result.isEmpty()) {
            Collection<? extends an> b2 = kotlin.reflect.jvm.internal.impl.load.java.a.a.b(name, a2, result, this.f37875b, this.f37854d.f37882a.f, this.f37854d.f37882a.u.getOverridingUtil());
            kotlin.jvm.internal.p.b(b2, "resolveOverridesForStaticMembers(\n                    name,\n                    propertiesFromSupertypes,\n                    result,\n                    ownerDescriptor,\n                    c.components.errorReporter,\n                    c.components.kotlinTypeChecker.overridingUtil\n                )");
            result.addAll(b2);
            return;
        }
        Set set = a2;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : set) {
            an a3 = a((an) obj);
            Object obj2 = linkedHashMap.get(a3);
            ArrayList arrayList = obj2;
            if (obj2 == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(a3, arrayList);
            }
            ((List) arrayList).add(obj);
        }
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            Collection b3 = kotlin.reflect.jvm.internal.impl.load.java.a.a.b(name, (Collection) entry.getValue(), result, this.f37875b, this.f37854d.f37882a.f, this.f37854d.f37882a.u.getOverridingUtil());
            kotlin.jvm.internal.p.b(b3, "resolveOverridesForStaticMembers(\n                    name, it.value, result, ownerDescriptor, c.components.errorReporter,\n                    c.components.kotlinTypeChecker.overridingUtil\n                )");
            n.a((Collection) arrayList2, (Iterable) b3);
        }
        result.addAll(arrayList2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i
    protected final Set<e> b(kotlin.reflect.jvm.internal.impl.resolve.e.d kindFilter, Function1<? super e, Boolean> function1) {
        kotlin.jvm.internal.p.d(kindFilter, "kindFilter");
        Set<e> m = n.m(this.f.invoke().a());
        j a2 = k.a(this.f37875b);
        Set<e> functionNames = a2 == null ? null : a2.getFunctionNames();
        ab abVar = functionNames;
        if (functionNames == null) {
            abVar = ab.f36567a;
        }
        m.addAll(abVar);
        if (this.f37874a.l()) {
            m.addAll(n.b((Object[]) new e[]{kotlin.reflect.jvm.internal.impl.builtins.j.f37318c, kotlin.reflect.jvm.internal.impl.builtins.j.f37317b}));
        }
        return m;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i
    protected final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.k b() {
        return this.f37875b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i
    protected final /* synthetic */ kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.b c() {
        return new kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a(this.f37874a, a.f37876a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.k
    public final kotlin.reflect.jvm.internal.impl.descriptors.g getContributedClassifier(e name, kotlin.reflect.jvm.internal.impl.a.a.b location) {
        kotlin.jvm.internal.p.d(name, "name");
        kotlin.jvm.internal.p.d(location, "location");
        return null;
    }
}
