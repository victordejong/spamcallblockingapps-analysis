package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.Set;
import kotlin.a.ab;
import kotlin.a.n;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.aa;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.a.a.b;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.as;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.f.i;
import kotlin.reflect.jvm.internal.impl.f.m;
import kotlin.reflect.jvm.internal.impl.load.java.d.t;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.g;
import kotlin.reflect.jvm.internal.impl.load.kotlin.o;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
import kotlin.reflect.jvm.internal.impl.resolve.e.j;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d.class */
public final class d implements h {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ KProperty<Object>[] f37807a = {ac.a(new aa(ac.b(d.class), "kotlinScopes", "getKotlinScopes()[Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"))};

    /* renamed from: b  reason: collision with root package name */
    final h f37808b;

    /* renamed from: c  reason: collision with root package name */
    private final g f37809c;

    /* renamed from: d  reason: collision with root package name */
    private final g f37810d;
    private final i e;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d$a.class */
    static final class a extends r implements Function0<h[]> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ h[] invoke() {
            Collection<o> values = d.this.f37810d.d().values();
            d dVar = d.this;
            ArrayList arrayList = new ArrayList();
            for (o oVar : values) {
                h a2 = dVar.f37809c.f37882a.f37785d.a(dVar.f37810d, oVar);
                if (a2 != null) {
                    arrayList.add(a2);
                }
            }
            Object[] array = kotlin.reflect.jvm.internal.impl.g.b.a.a(arrayList).toArray(new h[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            return (h[]) array;
        }
    }

    public d(g c2, t jPackage, g packageFragment) {
        p.d(c2, "c");
        p.d(jPackage, "jPackage");
        p.d(packageFragment, "packageFragment");
        this.f37809c = c2;
        this.f37810d = packageFragment;
        this.f37808b = new h(c2, jPackage, packageFragment);
        this.e = c2.f37882a.f37782a.a(new a());
    }

    private final h[] a() {
        return (h[]) m.a(this.e, f37807a[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.h
    public final Set<e> getClassifierNames() {
        Set<e> a2 = j.a(kotlin.a.i.n(a()));
        if (a2 == null) {
            return null;
        }
        a2.addAll(this.f37808b.getClassifierNames());
        return a2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.k
    public final kotlin.reflect.jvm.internal.impl.descriptors.g getContributedClassifier(e name, b location) {
        p.d(name, "name");
        p.d(location, "location");
        recordLookup(name, location);
        kotlin.reflect.jvm.internal.impl.descriptors.d a2 = this.f37808b.getContributedClassifier(name, location);
        if (a2 != null) {
            return a2;
        }
        h[] a3 = a();
        kotlin.reflect.jvm.internal.impl.descriptors.g gVar = null;
        int i = 0;
        int length = a3.length;
        while (i < length) {
            h hVar = a3[i];
            int i2 = i + 1;
            kotlin.reflect.jvm.internal.impl.descriptors.g contributedClassifier = hVar.getContributedClassifier(name, location);
            i = i2;
            if (contributedClassifier != null) {
                if (!(contributedClassifier instanceof kotlin.reflect.jvm.internal.impl.descriptors.h) || !((kotlin.reflect.jvm.internal.impl.descriptors.h) contributedClassifier).isExpect()) {
                    return contributedClassifier;
                }
                i = i2;
                if (gVar == null) {
                    gVar = contributedClassifier;
                    i = i2;
                }
            }
        }
        return gVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.k
    public final Collection<k> getContributedDescriptors(kotlin.reflect.jvm.internal.impl.resolve.e.d kindFilter, Function1<? super e, Boolean> nameFilter) {
        p.d(kindFilter, "kindFilter");
        p.d(nameFilter, "nameFilter");
        h hVar = this.f37808b;
        h[] a2 = a();
        Collection<k> contributedDescriptors = hVar.getContributedDescriptors(kindFilter, nameFilter);
        int length = a2.length;
        int i = 0;
        while (i < length) {
            h hVar2 = a2[i];
            i++;
            contributedDescriptors = kotlin.reflect.jvm.internal.impl.g.b.a.a(contributedDescriptors, hVar2.getContributedDescriptors(kindFilter, nameFilter));
        }
        return contributedDescriptors == null ? ab.f36567a : contributedDescriptors;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.h, kotlin.reflect.jvm.internal.impl.resolve.e.k
    public final Collection<as> getContributedFunctions(e name, b location) {
        p.d(name, "name");
        p.d(location, "location");
        recordLookup(name, location);
        h hVar = this.f37808b;
        h[] a2 = a();
        Collection<? extends as> contributedFunctions = hVar.getContributedFunctions(name, location);
        int length = a2.length;
        int i = 0;
        Collection collection = contributedFunctions;
        while (i < length) {
            h hVar2 = a2[i];
            i++;
            collection = kotlin.reflect.jvm.internal.impl.g.b.a.a(collection, hVar2.getContributedFunctions(name, location));
        }
        return collection == null ? ab.f36567a : collection;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.h
    public final Collection<an> getContributedVariables(e name, b location) {
        p.d(name, "name");
        p.d(location, "location");
        recordLookup(name, location);
        h hVar = this.f37808b;
        h[] a2 = a();
        Collection<? extends an> contributedVariables = hVar.getContributedVariables(name, location);
        int length = a2.length;
        int i = 0;
        Collection collection = contributedVariables;
        while (i < length) {
            h hVar2 = a2[i];
            i++;
            collection = kotlin.reflect.jvm.internal.impl.g.b.a.a(collection, hVar2.getContributedVariables(name, location));
        }
        return collection == null ? ab.f36567a : collection;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.h
    public final Set<e> getFunctionNames() {
        h[] a2 = a();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (h hVar : a2) {
            n.a((Collection) linkedHashSet, (Iterable) hVar.getFunctionNames());
        }
        LinkedHashSet linkedHashSet2 = linkedHashSet;
        linkedHashSet2.addAll(this.f37808b.getFunctionNames());
        return linkedHashSet2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.h
    public final Set<e> getVariableNames() {
        h[] a2 = a();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (h hVar : a2) {
            n.a((Collection) linkedHashSet, (Iterable) hVar.getVariableNames());
        }
        LinkedHashSet linkedHashSet2 = linkedHashSet;
        linkedHashSet2.addAll(this.f37808b.getVariableNames());
        return linkedHashSet2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.k
    public final void recordLookup(e name, b location) {
        p.d(name, "name");
        p.d(location, "location");
        kotlin.reflect.jvm.internal.impl.a.a.a(this.f37809c.f37882a.n, location, this.f37810d, name);
    }
}
