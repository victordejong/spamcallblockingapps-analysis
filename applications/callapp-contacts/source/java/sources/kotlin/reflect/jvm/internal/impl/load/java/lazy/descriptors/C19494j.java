package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.C20128v;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18240ab;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.builtins.C18954j;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19025as;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.C19501g;
import kotlin.reflect.jvm.internal.impl.load.java.p558a.C19344a;
import kotlin.reflect.jvm.internal.impl.load.java.p559b.C19379k;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19398g;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19407p;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.AbstractC18695b;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.EnumC18698d;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.C19762c;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.C19825d;
import kotlin.reflect.jvm.internal.impl.utils.C20000b;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.j */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j.class */
public final class C19494j extends AbstractC19497k {

    /* renamed from: a */
    private final AbstractC19398g f65472a;

    /* renamed from: b */
    private final LazyJavaClassDescriptor f65473b;

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.j$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j$a.class */
    static final class C19495a extends AbstractC18526r implements Function1<AbstractC19407p, Boolean> {

        /* renamed from: a */
        public static final C19495a f65474a = new C19495a();

        C19495a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(AbstractC19407p abstractC19407p) {
            AbstractC19407p it2 = abstractC19407p;
            C18524p.m3840d(it2, "it");
            return Boolean.valueOf(it2.mo2185p());
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.j$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j$b.class */
    static final class C19496b extends AbstractC18526r implements Function1<AbstractC19834h, Collection<? extends C18966e>> {

        /* renamed from: a */
        public static final C19496b f65475a = new C19496b();

        C19496b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Collection<? extends C18966e> invoke(AbstractC19834h abstractC19834h) {
            AbstractC19834h it2 = abstractC19834h;
            C18524p.m3840d(it2, "it");
            return it2.getVariableNames();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19494j(C19501g c, AbstractC19398g jClass, LazyJavaClassDescriptor ownerDescriptor) {
        super(c);
        C18524p.m3840d(c, "c");
        C18524p.m3840d(jClass, "jClass");
        C18524p.m3840d(ownerDescriptor, "ownerDescriptor");
        this.f65472a = jClass;
        this.f65473b = ownerDescriptor;
    }

    /* renamed from: a */
    private static <R> Set<R> m2080a(final AbstractC19070d abstractC19070d, final Set<R> set, final Function1<? super AbstractC19834h, ? extends Collection<? extends R>> function1) {
        C20000b.m1202a(C18282n.m4176a(abstractC19070d), LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$1.INSTANCE, new C20000b.AbstractC20002a<AbstractC19070d, C20128v>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$2
            public final boolean beforeChildren(AbstractC19070d current) {
                C18524p.m3840d(current, "current");
                if (current == AbstractC19070d.this) {
                    return true;
                }
                AbstractC19834h staticScope = current.getStaticScope();
                C18524p.m3843b(staticScope, "current.staticScope");
                if (!(staticScope instanceof AbstractC19497k)) {
                    return true;
                }
                set.addAll((Collection) function1.invoke(staticScope));
                return false;
            }

            @Override // kotlin.reflect.jvm.internal.impl.utils.C20000b.AbstractC20005d
            public final void result() {
            }
        });
        return set;
    }

    /* renamed from: a */
    private final AbstractC19017an m2081a(AbstractC19017an abstractC19017an) {
        if (abstractC19017an.getKind().isReal()) {
            return abstractC19017an;
        }
        Collection<? extends AbstractC19017an> overriddenDescriptors = abstractC19017an.getOverriddenDescriptors();
        C18524p.m3843b(overriddenDescriptors, "this.overriddenDescriptors");
        Collection<? extends AbstractC19017an> collection = overriddenDescriptors;
        ArrayList arrayList = new ArrayList(C18282n.m4163a(collection, 10));
        for (AbstractC19017an it2 : collection) {
            C18524p.m3843b(it2, "it");
            arrayList.add(m2081a(it2));
        }
        return (AbstractC19017an) C18282n.m4115i((List<? extends Object>) C18282n.m4110l(arrayList));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19480i
    /* renamed from: a */
    protected final Set<C18966e> mo2079a(C19825d kindFilter) {
        C18524p.m3840d(kindFilter, "kindFilter");
        Set<C18966e> m = C18282n.m4109m(this.f65444f.invoke().mo2146b());
        m2080a(this.f65473b, m, C19496b.f65475a);
        return m;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19480i
    /* renamed from: a */
    protected final Set<C18966e> mo2078a(C19825d kindFilter, Function1<? super C18966e, Boolean> function1) {
        C18524p.m3840d(kindFilter, "kindFilter");
        return C18240ab.f63351a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19480i
    /* renamed from: a */
    protected final void mo2082a(Collection<AbstractC19025as> result, C18966e name) {
        C18524p.m3840d(result, "result");
        C18524p.m3840d(name, "name");
        C19494j m2247a = C19379k.m2247a(this.f65473b);
        Collection<? extends AbstractC19025as> m2284b = C19344a.m2284b(name, m2247a == null ? C18240ab.f63351a : C18282n.m4114j(m2247a.getContributedFunctions(name, EnumC18698d.WHEN_GET_SUPER_MEMBERS)), result, this.f65473b, this.f65442d.f65480a.f65323f, this.f65442d.f65480a.f65338u.getOverridingUtil());
        C18524p.m3843b(m2284b, "resolveOverridesForStaticMembers(\n            name,\n            functionsFromSupertypes,\n            result,\n            ownerDescriptor,\n            c.components.errorReporter,\n            c.components.kotlinTypeChecker.overridingUtil\n        )");
        result.addAll(m2284b);
        if (this.f65472a.mo2211l()) {
            if (C18524p.m3850a(name, C18954j.f64573c)) {
                AbstractC19025as m1513b = C19762c.m1513b(this.f65473b);
                C18524p.m3843b(m1513b, "createEnumValueOfMethod(ownerDescriptor)");
                result.add(m1513b);
            } else if (!C18524p.m3850a(name, C18954j.f64572b)) {
            } else {
                AbstractC19025as m1516a = C19762c.m1516a(this.f65473b);
                C18524p.m3843b(m1516a, "createEnumValuesMethod(ownerDescriptor)");
                result.add(m1516a);
            }
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19497k, kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19480i
    /* renamed from: a */
    protected final void mo2073a(C18966e name, Collection<AbstractC19017an> result) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(result, "result");
        Set m2080a = m2080a(this.f65473b, new LinkedHashSet(), new C19442xd2f8c9a5(name));
        if (!result.isEmpty()) {
            Collection<? extends AbstractC19017an> m2284b = C19344a.m2284b(name, m2080a, result, this.f65473b, this.f65442d.f65480a.f65323f, this.f65442d.f65480a.f65338u.getOverridingUtil());
            C18524p.m3843b(m2284b, "resolveOverridesForStaticMembers(\n                    name,\n                    propertiesFromSupertypes,\n                    result,\n                    ownerDescriptor,\n                    c.components.errorReporter,\n                    c.components.kotlinTypeChecker.overridingUtil\n                )");
            result.addAll(m2284b);
            return;
        }
        Set set = m2080a;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : set) {
            AbstractC19017an m2081a = m2081a((AbstractC19017an) obj);
            Object obj2 = linkedHashMap.get(m2081a);
            ArrayList arrayList = obj2;
            if (obj2 == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(m2081a, arrayList);
            }
            ((List) arrayList).add(obj);
        }
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            Collection m2284b2 = C19344a.m2284b(name, (Collection) entry.getValue(), result, this.f65473b, this.f65442d.f65480a.f65323f, this.f65442d.f65480a.f65338u.getOverridingUtil());
            C18524p.m3843b(m2284b2, "resolveOverridesForStaticMembers(\n                    name, it.value, result, ownerDescriptor, c.components.errorReporter,\n                    c.components.kotlinTypeChecker.overridingUtil\n                )");
            C18282n.m4158a((Collection) arrayList2, (Iterable) m2284b2);
        }
        result.addAll(arrayList2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19480i
    /* renamed from: b */
    protected final Set<C18966e> mo2076b(C19825d kindFilter, Function1<? super C18966e, Boolean> function1) {
        C18524p.m3840d(kindFilter, "kindFilter");
        Set<C18966e> m = C18282n.m4109m(this.f65444f.invoke().mo2148a());
        C19494j m2247a = C19379k.m2247a(this.f65473b);
        Set<C18966e> functionNames = m2247a == null ? null : m2247a.getFunctionNames();
        C18240ab c18240ab = functionNames;
        if (functionNames == null) {
            c18240ab = C18240ab.f63351a;
        }
        m.addAll(c18240ab);
        if (this.f65472a.mo2211l()) {
            m.addAll(C18282n.m4167b((Object[]) new C18966e[]{C18954j.f64573c, C18954j.f64572b}));
        }
        return m;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19480i
    /* renamed from: b */
    protected final /* bridge */ /* synthetic */ AbstractC19193k mo2077b() {
        return this.f65473b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19480i
    /* renamed from: c */
    protected final /* synthetic */ AbstractC19446b mo2075c() {
        return new C19444a(this.f65472a, C19495a.f65474a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public final AbstractC19129g getContributedClassifier(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        return null;
    }
}
