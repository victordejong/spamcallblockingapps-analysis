package kotlin.reflect.jvm.internal.impl.resolve.p567e;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.C18399h;
import kotlin.Lazy;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19025as;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19030av;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19194l;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.AbstractC18695b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.C19768a;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.utils.C19999a;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.m */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/m.class */
public final class C19845m implements AbstractC19834h {

    /* renamed from: a */
    private final AbstractC19834h f66040a;

    /* renamed from: b */
    private final TypeSubstitutor f66041b;

    /* renamed from: c */
    private Map<AbstractC19193k, AbstractC19193k> f66042c;

    /* renamed from: d */
    private final Lazy f66043d = C18399h.m3897a(new C19846a());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.m$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/m$a.class */
    public static final class C19846a extends AbstractC18526r implements Function0<Collection<? extends AbstractC19193k>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19846a() {
            super(0);
            C19845m.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Collection<? extends AbstractC19193k> invoke() {
            C19845m c19845m = C19845m.this;
            return c19845m.m1408a(AbstractC19841k.C19842a.m1411a(c19845m.f66040a, null, null, 3));
        }
    }

    public C19845m(AbstractC19834h workerScope, TypeSubstitutor givenSubstitutor) {
        C18524p.m3840d(workerScope, "workerScope");
        C18524p.m3840d(givenSubstitutor, "givenSubstitutor");
        this.f66040a = workerScope;
        TypeSubstitution substitution = givenSubstitutor.getSubstitution();
        C18524p.m3843b(substitution, "givenSubstitutor.substitution");
        this.f66041b = C19768a.m1495a(substitution).buildSubstitutor();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final <D extends AbstractC19193k> Collection<D> m1408a(Collection<? extends D> collection) {
        if (!this.f66041b.isEmpty() && !collection.isEmpty()) {
            LinkedHashSet linkedHashSet = new LinkedHashSet(C19999a.m1206c(collection.size()));
            Iterator it2 = collection.iterator();
            while (it2.hasNext()) {
                linkedHashSet.add(m1407a((C19845m) ((AbstractC19193k) it2.next())));
            }
            return linkedHashSet;
        }
        return collection;
    }

    /* renamed from: a */
    private final <D extends AbstractC19193k> D m1407a(D d) {
        if (this.f66041b.isEmpty()) {
            return d;
        }
        if (this.f66042c == null) {
            this.f66042c = new HashMap();
        }
        Map<AbstractC19193k, AbstractC19193k> map = this.f66042c;
        C18524p.m3851a(map);
        AbstractC19193k abstractC19193k = map.get(d);
        AbstractC19194l abstractC19194l = abstractC19193k;
        if (abstractC19193k == null) {
            if (!(d instanceof AbstractC19030av)) {
                throw new IllegalStateException(C18524p.m3847a("Unknown descriptor in scope: ", (Object) d).toString());
            }
            AbstractC19194l substitute = ((AbstractC19030av) d).substitute(this.f66041b);
            if (substitute == null) {
                throw new AssertionError("We expect that no conflict should happen while substitution is guaranteed to generate invariant projection, but " + d + " substitution fails");
            }
            abstractC19194l = substitute;
            map.put(d, abstractC19194l);
        }
        return (D) abstractC19194l;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
    public final Set<C18966e> getClassifierNames() {
        return this.f66040a.getClassifierNames();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public final AbstractC19129g getContributedClassifier(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        AbstractC19129g contributedClassifier = this.f66040a.getContributedClassifier(name, location);
        if (contributedClassifier == null) {
            return null;
        }
        return (AbstractC19129g) m1407a((C19845m) contributedClassifier);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public final Collection<AbstractC19193k> getContributedDescriptors(C19825d kindFilter, Function1<? super C18966e, Boolean> nameFilter) {
        C18524p.m3840d(kindFilter, "kindFilter");
        C18524p.m3840d(nameFilter, "nameFilter");
        return (Collection) this.f66043d.mo1102a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public final Collection<? extends AbstractC19025as> getContributedFunctions(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        return m1408a(this.f66040a.getContributedFunctions(name, location));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
    public final Collection<? extends AbstractC19017an> getContributedVariables(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        return m1408a(this.f66040a.getContributedVariables(name, location));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
    public final Set<C18966e> getFunctionNames() {
        return this.f66040a.getFunctionNames();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
    public final Set<C18966e> getVariableNames() {
        return this.f66040a.getVariableNames();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public final void recordLookup(C18966e c18966e, AbstractC18695b abstractC18695b) {
        AbstractC19834h.C19837b.m1413a(this, c18966e, abstractC18695b);
    }
}
