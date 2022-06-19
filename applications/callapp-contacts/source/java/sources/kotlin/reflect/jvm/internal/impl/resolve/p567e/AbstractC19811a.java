package kotlin.reflect.jvm.internal.impl.resolve.p567e;

import java.util.Collection;
import java.util.Set;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19025as;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.AbstractC18695b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.a */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/a.class */
public abstract class AbstractC19811a implements AbstractC19834h {
    /* renamed from: a */
    protected abstract AbstractC19834h mo1404a();

    /* renamed from: b */
    public final AbstractC19834h m1441b() {
        AbstractC19811a abstractC19811a = this;
        while (true) {
            AbstractC19811a abstractC19811a2 = abstractC19811a;
            if (abstractC19811a2.mo1404a() instanceof AbstractC19811a) {
                abstractC19811a = (AbstractC19811a) abstractC19811a2.mo1404a();
            } else {
                return abstractC19811a2.mo1404a();
            }
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
    public Set<C18966e> getClassifierNames() {
        return mo1404a().getClassifierNames();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public AbstractC19129g getContributedClassifier(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        return mo1404a().getContributedClassifier(name, location);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public Collection<AbstractC19193k> getContributedDescriptors(C19825d kindFilter, Function1<? super C18966e, Boolean> nameFilter) {
        C18524p.m3840d(kindFilter, "kindFilter");
        C18524p.m3840d(nameFilter, "nameFilter");
        return mo1404a().getContributedDescriptors(kindFilter, nameFilter);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public Collection<AbstractC19025as> getContributedFunctions(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        return mo1404a().getContributedFunctions(name, location);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
    public Collection<AbstractC19017an> getContributedVariables(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        return mo1404a().getContributedVariables(name, location);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
    public Set<C18966e> getFunctionNames() {
        return mo1404a().getFunctionNames();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
    public Set<C18966e> getVariableNames() {
        return mo1404a().getVariableNames();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public void recordLookup(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        mo1404a().recordLookup(name, location);
    }
}
