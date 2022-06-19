package kotlin.reflect.jvm.internal.impl.resolve.p567e;

import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19025as;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.AbstractC18695b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.utils.C20010d;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.i */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/i.class */
public abstract class AbstractC19839i implements AbstractC19834h {
    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
    public Set<C18966e> getClassifierNames() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public AbstractC19129g getContributedClassifier(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public Collection<AbstractC19193k> getContributedDescriptors(C19825d kindFilter, Function1<? super C18966e, Boolean> nameFilter) {
        C18524p.m3840d(kindFilter, "kindFilter");
        C18524p.m3840d(nameFilter, "nameFilter");
        return C18297z.f63400a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public Collection<? extends AbstractC19025as> getContributedFunctions(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        return C18297z.f63400a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
    public Collection<? extends AbstractC19017an> getContributedVariables(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        return C18297z.f63400a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
    public Set<C18966e> getFunctionNames() {
        Collection<AbstractC19193k> contributedDescriptors = getContributedDescriptors(C19825d.f66002k, C20010d.m1198a());
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Object obj : contributedDescriptors) {
            if (obj instanceof AbstractC19025as) {
                C18966e name = ((AbstractC19025as) obj).getName();
                C18524p.m3843b(name, "it.name");
                linkedHashSet.add(name);
            }
        }
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
    public Set<C18966e> getVariableNames() {
        Collection<AbstractC19193k> contributedDescriptors = getContributedDescriptors(C19825d.f66003l, C20010d.m1198a());
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Object obj : contributedDescriptors) {
            if (obj instanceof AbstractC19025as) {
                C18966e name = ((AbstractC19025as) obj).getName();
                C18524p.m3843b(name, "it.name");
                linkedHashSet.add(name);
            }
        }
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public void recordLookup(C18966e c18966e, AbstractC18695b abstractC18695b) {
        AbstractC19834h.C19837b.m1413a(this, c18966e, abstractC18695b);
    }
}
