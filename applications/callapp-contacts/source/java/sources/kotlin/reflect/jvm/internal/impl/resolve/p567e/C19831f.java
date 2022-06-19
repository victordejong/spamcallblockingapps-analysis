package kotlin.reflect.jvm.internal.impl.resolve.p567e;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Set;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19033ax;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19130h;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.AbstractC18695b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.C19825d;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.f */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/f.class */
public final class C19831f extends AbstractC19839i {

    /* renamed from: a */
    private final AbstractC19834h f66028a;

    public C19831f(AbstractC19834h workerScope) {
        C18524p.m3840d(workerScope, "workerScope");
        this.f66028a = workerScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
    public final Set<C18966e> getClassifierNames() {
        return this.f66028a.getClassifierNames();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public final AbstractC19129g getContributedClassifier(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        AbstractC19129g contributedClassifier = this.f66028a.getContributedClassifier(name, location);
        AbstractC19130h abstractC19130h = null;
        if (contributedClassifier != null) {
            AbstractC19070d abstractC19070d = contributedClassifier instanceof AbstractC19070d ? (AbstractC19070d) contributedClassifier : null;
            if (abstractC19070d == null) {
                AbstractC19033ax abstractC19033ax = null;
                if (contributedClassifier instanceof AbstractC19033ax) {
                    abstractC19033ax = (AbstractC19033ax) contributedClassifier;
                }
                abstractC19130h = abstractC19033ax;
            } else {
                abstractC19130h = abstractC19070d;
            }
        }
        return abstractC19130h;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public final /* synthetic */ Collection getContributedDescriptors(C19825d kindFilter, Function1 nameFilter) {
        int i;
        C18297z c18297z;
        C18524p.m3840d(kindFilter, "kindFilter");
        C18524p.m3840d(nameFilter, "nameFilter");
        C19825d.C19826a c19826a = C19825d.f65994a;
        i = C19825d.f66013v;
        int i2 = i & kindFilter.f66019c;
        C19825d c19825d = i2 == 0 ? null : new C19825d(i2, kindFilter.f66018b);
        if (c19825d == null) {
            c18297z = C18297z.f63400a;
        } else {
            Collection<AbstractC19193k> contributedDescriptors = this.f66028a.getContributedDescriptors(c19825d, nameFilter);
            ArrayList arrayList = new ArrayList();
            for (Object obj : contributedDescriptors) {
                if (obj instanceof AbstractC19130h) {
                    arrayList.add(obj);
                }
            }
            c18297z = arrayList;
        }
        return c18297z;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
    public final Set<C18966e> getFunctionNames() {
        return this.f66028a.getFunctionNames();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
    public final Set<C18966e> getVariableNames() {
        return this.f66028a.getVariableNames();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public final void recordLookup(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        this.f66028a.recordLookup(name, location);
    }

    public final String toString() {
        return C18524p.m3847a("Classes from ", (Object) this.f66028a);
    }
}
