package kotlin.reflect.jvm.internal.impl.resolve.e;

import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.a.z;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.a.a.b;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.as;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
import kotlin.reflect.jvm.internal.impl.utils.d;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/i.class */
public abstract class i implements h {
    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.h
    public Set<e> getClassifierNames() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.k
    public g getContributedClassifier(e name, b location) {
        p.d(name, "name");
        p.d(location, "location");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.k
    public Collection<k> getContributedDescriptors(d kindFilter, Function1<? super e, Boolean> nameFilter) {
        p.d(kindFilter, "kindFilter");
        p.d(nameFilter, "nameFilter");
        return z.f36608a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.h, kotlin.reflect.jvm.internal.impl.resolve.e.k
    public Collection<? extends as> getContributedFunctions(e name, b location) {
        p.d(name, "name");
        p.d(location, "location");
        return z.f36608a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.h
    public Collection<? extends an> getContributedVariables(e name, b location) {
        p.d(name, "name");
        p.d(location, "location");
        return z.f36608a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.h
    public Set<e> getFunctionNames() {
        Collection<k> contributedDescriptors = getContributedDescriptors(d.k, d.a());
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Object obj : contributedDescriptors) {
            if (obj instanceof as) {
                e name = ((as) obj).getName();
                p.b(name, "it.name");
                linkedHashSet.add(name);
            }
        }
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.h
    public Set<e> getVariableNames() {
        Collection<k> contributedDescriptors = getContributedDescriptors(d.l, d.a());
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Object obj : contributedDescriptors) {
            if (obj instanceof as) {
                e name = ((as) obj).getName();
                p.b(name, "it.name");
                linkedHashSet.add(name);
            }
        }
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.k
    public void recordLookup(e eVar, b bVar) {
        h.b.a(this, eVar, bVar);
    }
}
