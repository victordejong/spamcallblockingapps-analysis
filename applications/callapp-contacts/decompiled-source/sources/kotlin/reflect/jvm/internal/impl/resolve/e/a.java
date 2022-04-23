package kotlin.reflect.jvm.internal.impl.resolve.e;

import java.util.Collection;
import java.util.Set;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.a.a.b;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.as;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/a.class */
public abstract class a implements h {
    protected abstract h a();

    public final h b() {
        a aVar = this;
        while (aVar.a() instanceof a) {
            aVar = (a) aVar.a();
        }
        return aVar.a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.h
    public Set<e> getClassifierNames() {
        return a().getClassifierNames();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.k
    public g getContributedClassifier(e name, b location) {
        p.d(name, "name");
        p.d(location, "location");
        return a().getContributedClassifier(name, location);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.k
    public Collection<k> getContributedDescriptors(d kindFilter, Function1<? super e, Boolean> nameFilter) {
        p.d(kindFilter, "kindFilter");
        p.d(nameFilter, "nameFilter");
        return a().getContributedDescriptors(kindFilter, nameFilter);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.h, kotlin.reflect.jvm.internal.impl.resolve.e.k
    public Collection<as> getContributedFunctions(e name, b location) {
        p.d(name, "name");
        p.d(location, "location");
        return a().getContributedFunctions(name, location);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.h
    public Collection<an> getContributedVariables(e name, b location) {
        p.d(name, "name");
        p.d(location, "location");
        return a().getContributedVariables(name, location);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.h
    public Set<e> getFunctionNames() {
        return a().getFunctionNames();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.h
    public Set<e> getVariableNames() {
        return a().getVariableNames();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.k
    public void recordLookup(e name, b location) {
        p.d(name, "name");
        p.d(location, "location");
        a().recordLookup(name, location);
    }
}
