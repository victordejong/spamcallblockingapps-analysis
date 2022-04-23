package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Set;
import kotlin.a.z;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.aj;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.resolve.e.c;
import kotlin.reflect.jvm.internal.impl.resolve.e.d;
import kotlin.reflect.jvm.internal.impl.resolve.e.i;
import kotlin.reflect.jvm.internal.impl.utils.a;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/ab.class */
public final class ab extends i {

    /* renamed from: a  reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.descriptors.ab f37513a;

    /* renamed from: b  reason: collision with root package name */
    private final b f37514b;

    public ab(kotlin.reflect.jvm.internal.impl.descriptors.ab moduleDescriptor, b fqName) {
        p.d(moduleDescriptor, "moduleDescriptor");
        p.d(fqName, "fqName");
        this.f37513a = moduleDescriptor;
        this.f37514b = fqName;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.h
    public final Set<e> getClassifierNames() {
        return kotlin.a.ab.f36567a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.k
    public final Collection<k> getContributedDescriptors(d kindFilter, Function1<? super e, Boolean> nameFilter) {
        int i;
        p.d(kindFilter, "kindFilter");
        p.d(nameFilter, "nameFilter");
        d.a aVar = d.f38279a;
        i = d.r;
        if (!kindFilter.a(i)) {
            return z.f36608a;
        }
        if (this.f37514b.f37335b.f37340a.isEmpty() && kindFilter.f38281b.contains(c.b.f38278a)) {
            return z.f36608a;
        }
        Collection<b> subPackagesOf = this.f37513a.getSubPackagesOf(this.f37514b, nameFilter);
        ArrayList arrayList = new ArrayList(subPackagesOf.size());
        for (b bVar : subPackagesOf) {
            e name = bVar.e();
            p.b(name, "subFqName.shortName()");
            if (nameFilter.invoke(name).booleanValue()) {
                ArrayList arrayList2 = arrayList;
                p.d(name, "name");
                aj ajVar = null;
                if (!name.f37342a) {
                    kotlin.reflect.jvm.internal.impl.descriptors.ab abVar = this.f37513a;
                    b a2 = this.f37514b.a(name);
                    p.b(a2, "fqName.child(name)");
                    aj ajVar2 = abVar.getPackage(a2);
                    if (!ajVar2.e()) {
                        ajVar = ajVar2;
                    }
                }
                a.a(arrayList2, ajVar);
            }
        }
        return arrayList;
    }
}
