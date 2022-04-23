package kotlin.reflect.jvm.internal.impl.resolve.e;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.h;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.a.a.b;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.as;
import kotlin.reflect.jvm.internal.impl.descriptors.av;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.l;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
import kotlin.reflect.jvm.internal.impl.resolve.e.k;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/m.class */
public final class m implements h {

    /* renamed from: a  reason: collision with root package name */
    private final h f38302a;

    /* renamed from: b  reason: collision with root package name */
    private final TypeSubstitutor f38303b;

    /* renamed from: c  reason: collision with root package name */
    private Map<k, k> f38304c;

    /* renamed from: d  reason: collision with root package name */
    private final Lazy f38305d = h.a(new a());

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/m$a.class */
    static final class a extends r implements Function0<Collection<? extends k>> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Collection<? extends k> invoke() {
            m mVar = m.this;
            return mVar.a(k.a.a(mVar.f38302a, null, null, 3));
        }
    }

    public m(h workerScope, TypeSubstitutor givenSubstitutor) {
        p.d(workerScope, "workerScope");
        p.d(givenSubstitutor, "givenSubstitutor");
        this.f38302a = workerScope;
        TypeSubstitution substitution = givenSubstitutor.getSubstitution();
        p.b(substitution, "givenSubstitutor.substitution");
        this.f38303b = kotlin.reflect.jvm.internal.impl.resolve.calls.inference.a.a(substitution).buildSubstitutor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final <D extends kotlin.reflect.jvm.internal.impl.descriptors.k> Collection<D> a(Collection<? extends D> collection) {
        if (!this.f38303b.isEmpty() && !collection.isEmpty()) {
            LinkedHashSet linkedHashSet = new LinkedHashSet(kotlin.reflect.jvm.internal.impl.utils.a.c(collection.size()));
            Iterator it2 = collection.iterator();
            while (it2.hasNext()) {
                linkedHashSet.add(a((m) ((kotlin.reflect.jvm.internal.impl.descriptors.k) it2.next())));
            }
            return linkedHashSet;
        }
        return collection;
    }

    private final <D extends kotlin.reflect.jvm.internal.impl.descriptors.k> D a(D d2) {
        if (this.f38303b.isEmpty()) {
            return d2;
        }
        if (this.f38304c == null) {
            this.f38304c = new HashMap();
        }
        Map<kotlin.reflect.jvm.internal.impl.descriptors.k, kotlin.reflect.jvm.internal.impl.descriptors.k> map = this.f38304c;
        p.a(map);
        kotlin.reflect.jvm.internal.impl.descriptors.k kVar = map.get(d2);
        l lVar = kVar;
        if (kVar == null) {
            if (d2 instanceof av) {
                l substitute = ((av) d2).substitute(this.f38303b);
                if (substitute != null) {
                    lVar = substitute;
                    map.put(d2, lVar);
                } else {
                    throw new AssertionError("We expect that no conflict should happen while substitution is guaranteed to generate invariant projection, but " + d2 + " substitution fails");
                }
            } else {
                throw new IllegalStateException(p.a("Unknown descriptor in scope: ", (Object) d2).toString());
            }
        }
        return (D) lVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.h
    public final Set<e> getClassifierNames() {
        return this.f38302a.getClassifierNames();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.k
    public final g getContributedClassifier(e name, b location) {
        p.d(name, "name");
        p.d(location, "location");
        g contributedClassifier = this.f38302a.getContributedClassifier(name, location);
        if (contributedClassifier == null) {
            return null;
        }
        return (g) a((m) contributedClassifier);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.k
    public final Collection<kotlin.reflect.jvm.internal.impl.descriptors.k> getContributedDescriptors(d kindFilter, Function1<? super e, Boolean> nameFilter) {
        p.d(kindFilter, "kindFilter");
        p.d(nameFilter, "nameFilter");
        return (Collection) this.f38305d.a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.h, kotlin.reflect.jvm.internal.impl.resolve.e.k
    public final Collection<? extends as> getContributedFunctions(e name, b location) {
        p.d(name, "name");
        p.d(location, "location");
        return a(this.f38302a.getContributedFunctions(name, location));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.h
    public final Collection<? extends an> getContributedVariables(e name, b location) {
        p.d(name, "name");
        p.d(location, "location");
        return a(this.f38302a.getContributedVariables(name, location));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.h
    public final Set<e> getFunctionNames() {
        return this.f38302a.getFunctionNames();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.h
    public final Set<e> getVariableNames() {
        return this.f38302a.getVariableNames();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.k
    public final void recordLookup(e eVar, b bVar) {
        h.b.a(this, eVar, bVar);
    }
}
