package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Set;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18240ab;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19013aj;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19822c;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.C19825d;
import kotlin.reflect.jvm.internal.impl.utils.C19999a;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.ab */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/ab.class */
public final class C19143ab extends AbstractC19839i {

    /* renamed from: a */
    private final AbstractC18999ab f64889a;

    /* renamed from: b */
    private final C18961b f64890b;

    public C19143ab(AbstractC18999ab moduleDescriptor, C18961b fqName) {
        C18524p.m3840d(moduleDescriptor, "moduleDescriptor");
        C18524p.m3840d(fqName, "fqName");
        this.f64889a = moduleDescriptor;
        this.f64890b = fqName;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
    public final Set<C18966e> getClassifierNames() {
        return C18240ab.f63351a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public final Collection<AbstractC19193k> getContributedDescriptors(C19825d kindFilter, Function1<? super C18966e, Boolean> nameFilter) {
        int i;
        C18524p.m3840d(kindFilter, "kindFilter");
        C18524p.m3840d(nameFilter, "nameFilter");
        C19825d.C19826a c19826a = C19825d.f65994a;
        i = C19825d.f66009r;
        if (!kindFilter.m1428a(i)) {
            return C18297z.f63400a;
        }
        if (this.f64890b.f64686b.f64691a.isEmpty() && kindFilter.f66018b.contains(AbstractC19822c.C19824b.f65993a)) {
            return C18297z.f63400a;
        }
        Collection<C18961b> subPackagesOf = this.f64889a.getSubPackagesOf(this.f64890b, nameFilter);
        ArrayList arrayList = new ArrayList(subPackagesOf.size());
        for (C18961b c18961b : subPackagesOf) {
            C18966e name = c18961b.m2738e();
            C18524p.m3843b(name, "subFqName.shortName()");
            if (nameFilter.invoke(name).booleanValue()) {
                ArrayList arrayList2 = arrayList;
                C18524p.m3840d(name, "name");
                AbstractC19013aj abstractC19013aj = null;
                if (!name.f64696a) {
                    AbstractC18999ab abstractC18999ab = this.f64889a;
                    C18961b m2744a = this.f64890b.m2744a(name);
                    C18524p.m3843b(m2744a, "fqName.child(name)");
                    AbstractC19013aj abstractC19013aj2 = abstractC18999ab.getPackage(m2744a);
                    if (!abstractC19013aj2.mo2567e()) {
                        abstractC19013aj = abstractC19013aj2;
                    }
                }
                C19999a.m1208a(arrayList2, abstractC19013aj);
            }
        }
        return arrayList;
    }
}
