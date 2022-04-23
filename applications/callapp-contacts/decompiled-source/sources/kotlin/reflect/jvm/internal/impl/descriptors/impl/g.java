package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import kotlin.a.n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.ae;
import kotlin.reflect.jvm.internal.impl.descriptors.af;
import kotlin.reflect.jvm.internal.impl.descriptors.ah;
import kotlin.reflect.jvm.internal.impl.descriptors.ai;
import kotlin.x;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/g.class */
public final class g implements ai {

    /* renamed from: a  reason: collision with root package name */
    private final List<af> f37537a;

    /* JADX WARN: Multi-variable type inference failed */
    public g(List<? extends af> providers) {
        p.d(providers, "providers");
        this.f37537a = providers;
        boolean z = providers.size() == n.j((Iterable) providers).size();
        if (x.f38657a && !z) {
            throw new AssertionError("providers.size is " + providers.size() + " while only " + n.j((Iterable) providers).size() + " unique providers");
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.af
    public final Collection<b> a(b fqName, Function1<? super e, Boolean> nameFilter) {
        p.d(fqName, "fqName");
        p.d(nameFilter, "nameFilter");
        HashSet hashSet = new HashSet();
        for (af afVar : this.f37537a) {
            hashSet.addAll(afVar.a(fqName, nameFilter));
        }
        return hashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ai
    public final void a(b fqName, Collection<ae> packageFragments) {
        p.d(fqName, "fqName");
        p.d(packageFragments, "packageFragments");
        for (af afVar : this.f37537a) {
            ah.a(afVar, fqName, packageFragments);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.af
    public final List<ae> b(b fqName) {
        p.d(fqName, "fqName");
        ArrayList arrayList = new ArrayList();
        for (af afVar : this.f37537a) {
            ah.a(afVar, fqName, arrayList);
        }
        return n.h((Iterable) arrayList);
    }
}
