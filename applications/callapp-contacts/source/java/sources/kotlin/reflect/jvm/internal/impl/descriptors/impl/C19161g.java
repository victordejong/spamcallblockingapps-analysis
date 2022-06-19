package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import kotlin.C20130x;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19006ae;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19007af;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19012ai;
import kotlin.reflect.jvm.internal.impl.descriptors.C19011ah;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.g */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/g.class */
public final class C19161g implements AbstractC19012ai {

    /* renamed from: a */
    private final List<AbstractC19007af> f64922a;

    /* JADX WARN: Multi-variable type inference failed */
    public C19161g(List<? extends AbstractC19007af> providers) {
        C18524p.m3840d(providers, "providers");
        this.f64922a = providers;
        boolean z = providers.size() == C18282n.m4114j((Iterable) providers).size();
        if (!C20130x.f66532a || z) {
            return;
        }
        throw new AssertionError("providers.size is " + providers.size() + " while only " + C18282n.m4114j((Iterable) providers).size() + " unique providers");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19007af
    /* renamed from: a */
    public final Collection<C18961b> mo1388a(C18961b fqName, Function1<? super C18966e, Boolean> nameFilter) {
        C18524p.m3840d(fqName, "fqName");
        C18524p.m3840d(nameFilter, "nameFilter");
        HashSet hashSet = new HashSet();
        for (AbstractC19007af abstractC19007af : this.f64922a) {
            hashSet.addAll(abstractC19007af.mo1388a(fqName, nameFilter));
        }
        return hashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19012ai
    /* renamed from: a */
    public final void mo1389a(C18961b fqName, Collection<AbstractC19006ae> packageFragments) {
        C18524p.m3840d(fqName, "fqName");
        C18524p.m3840d(packageFragments, "packageFragments");
        for (AbstractC19007af abstractC19007af : this.f64922a) {
            C19011ah.m2697a(abstractC19007af, fqName, packageFragments);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19007af
    /* renamed from: b */
    public final List<AbstractC19006ae> mo1385b(C18961b fqName) {
        C18524p.m3840d(fqName, "fqName");
        ArrayList arrayList = new ArrayList();
        for (AbstractC19007af abstractC19007af : this.f64922a) {
            C19011ah.m2697a(abstractC19007af, fqName, arrayList);
        }
        return C18282n.m4118h((Iterable) arrayList);
    }
}
