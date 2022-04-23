package kotlin.reflect.jvm.internal.impl.resolve.e;

import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import kotlin.a.ab;
import kotlin.a.i;
import kotlin.a.n;
import kotlin.a.z;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.as;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
import kotlin.reflect.jvm.internal.impl.utils.h;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/b.class */
public final class b implements h {

    /* renamed from: a  reason: collision with root package name */
    public static final a f38273a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    private final String f38274b;

    /* renamed from: c  reason: collision with root package name */
    private final h[] f38275c;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/b$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static h a(String debugName, Iterable<? extends h> scopes) {
            p.d(debugName, "debugName");
            p.d(scopes, "scopes");
            h hVar = new h();
            for (h hVar2 : scopes) {
                if (hVar2 != h.c.f38297a) {
                    if (hVar2 instanceof b) {
                        n.a((Collection) hVar, (Object[]) ((b) hVar2).f38275c);
                    } else {
                        hVar.add(hVar2);
                    }
                }
            }
            return a(debugName, (List<? extends h>) hVar);
        }

        public static h a(String debugName, List<? extends h> scopes) {
            p.d(debugName, "debugName");
            p.d(scopes, "scopes");
            int size = scopes.size();
            if (size == 0) {
                return h.c.f38297a;
            }
            if (size == 1) {
                return (h) scopes.get(0);
            }
            Object[] array = scopes.toArray(new h[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            return new b(debugName, (h[]) array, null);
        }
    }

    private b(String str, h[] hVarArr) {
        this.f38274b = str;
        this.f38275c = hVarArr;
    }

    public /* synthetic */ b(String str, h[] hVarArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, hVarArr);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.h
    public final Set<e> getClassifierNames() {
        return j.a(i.n(this.f38275c));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.k
    public final g getContributedClassifier(e name, kotlin.reflect.jvm.internal.impl.a.a.b location) {
        p.d(name, "name");
        p.d(location, "location");
        h[] hVarArr = this.f38275c;
        int length = hVarArr.length;
        g gVar = null;
        int i = 0;
        while (i < length) {
            h hVar = hVarArr[i];
            int i2 = i + 1;
            g contributedClassifier = hVar.getContributedClassifier(name, location);
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
    public final Collection<k> getContributedDescriptors(d kindFilter, Function1<? super e, Boolean> nameFilter) {
        p.d(kindFilter, "kindFilter");
        p.d(nameFilter, "nameFilter");
        h[] hVarArr = this.f38275c;
        int length = hVarArr.length;
        if (length == 0) {
            return z.f36608a;
        }
        int i = 0;
        if (length == 1) {
            return hVarArr[0].getContributedDescriptors(kindFilter, nameFilter);
        }
        Collection<k> collection = null;
        int length2 = hVarArr.length;
        while (i < length2) {
            h hVar = hVarArr[i];
            i++;
            collection = kotlin.reflect.jvm.internal.impl.g.b.a.a(collection, hVar.getContributedDescriptors(kindFilter, nameFilter));
        }
        return collection == null ? ab.f36567a : collection;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.h, kotlin.reflect.jvm.internal.impl.resolve.e.k
    public final Collection<as> getContributedFunctions(e name, kotlin.reflect.jvm.internal.impl.a.a.b location) {
        p.d(name, "name");
        p.d(location, "location");
        h[] hVarArr = this.f38275c;
        int length = hVarArr.length;
        if (length == 0) {
            return z.f36608a;
        }
        int i = 0;
        if (length == 1) {
            return hVarArr[0].getContributedFunctions(name, location);
        }
        Collection<as> collection = null;
        int length2 = hVarArr.length;
        while (i < length2) {
            h hVar = hVarArr[i];
            i++;
            collection = kotlin.reflect.jvm.internal.impl.g.b.a.a(collection, hVar.getContributedFunctions(name, location));
        }
        return collection == null ? ab.f36567a : collection;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.h
    public final Collection<an> getContributedVariables(e name, kotlin.reflect.jvm.internal.impl.a.a.b location) {
        p.d(name, "name");
        p.d(location, "location");
        h[] hVarArr = this.f38275c;
        int length = hVarArr.length;
        if (length == 0) {
            return z.f36608a;
        }
        int i = 0;
        if (length == 1) {
            return hVarArr[0].getContributedVariables(name, location);
        }
        Collection<an> collection = null;
        int length2 = hVarArr.length;
        while (i < length2) {
            h hVar = hVarArr[i];
            i++;
            collection = kotlin.reflect.jvm.internal.impl.g.b.a.a(collection, hVar.getContributedVariables(name, location));
        }
        return collection == null ? ab.f36567a : collection;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.h
    public final Set<e> getFunctionNames() {
        h[] hVarArr = this.f38275c;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (h hVar : hVarArr) {
            n.a((Collection) linkedHashSet, (Iterable) hVar.getFunctionNames());
        }
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.h
    public final Set<e> getVariableNames() {
        h[] hVarArr = this.f38275c;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (h hVar : hVarArr) {
            n.a((Collection) linkedHashSet, (Iterable) hVar.getVariableNames());
        }
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.k
    public final void recordLookup(e name, kotlin.reflect.jvm.internal.impl.a.a.b location) {
        p.d(name, "name");
        p.d(location, "location");
        for (h hVar : this.f38275c) {
            hVar.recordLookup(name, location);
        }
    }

    public final String toString() {
        return this.f38274b;
    }
}
