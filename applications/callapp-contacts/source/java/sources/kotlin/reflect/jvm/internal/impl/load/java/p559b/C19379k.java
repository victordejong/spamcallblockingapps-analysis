package kotlin.reflect.jvm.internal.impl.load.java.p559b;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.C18538n;
import kotlin.C20130x;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19148ae;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.C19494j;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.b.k */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/b/k.class */
public final class C19379k {
    /* renamed from: a */
    public static final List<AbstractC19050ba> m2248a(Collection<C19380l> newValueParametersTypes, Collection<? extends AbstractC19050ba> oldValueParameters, AbstractC18973a newOwner) {
        C18524p.m3840d(newValueParametersTypes, "newValueParametersTypes");
        C18524p.m3840d(oldValueParameters, "oldValueParameters");
        C18524p.m3840d(newOwner, "newOwner");
        boolean z = newValueParametersTypes.size() == oldValueParameters.size();
        if (C20130x.f66532a && !z) {
            throw new AssertionError("Different value parameters sizes: Enhanced = " + newValueParametersTypes.size() + ", Old = " + oldValueParameters.size());
        }
        List<C18538n> d = C18282n.m4127d((Iterable) newValueParametersTypes, (Iterable) oldValueParameters);
        ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) d, 10));
        for (C18538n c18538n : d) {
            C19380l c19380l = (C19380l) c18538n.f63624a;
            AbstractC19050ba abstractC19050ba = (AbstractC19050ba) c18538n.f63625b;
            int mo2610b = abstractC19050ba.mo2610b();
            AbstractC18983g annotations = abstractC19050ba.getAnnotations();
            C18966e name = abstractC19050ba.getName();
            C18524p.m3843b(name, "oldParameter.name");
            KotlinType kotlinType = c19380l.f65292a;
            boolean z2 = c19380l.f65293b;
            boolean mo2606f = abstractC19050ba.mo2606f();
            boolean mo2605h = abstractC19050ba.mo2605h();
            KotlinType m2826a = abstractC19050ba.mo2608d() != null ? C19756a.m1527c(newOwner).getBuiltIns().m2826a(c19380l.f65292a) : null;
            AbstractC19026at source = abstractC19050ba.getSource();
            C18524p.m3843b(source, "oldParameter.source");
            arrayList.add(new C19148ae(newOwner, null, mo2610b, annotations, name, kotlinType, z2, mo2606f, mo2605h, m2826a, source));
        }
        return arrayList;
    }

    /* renamed from: a */
    public static final C19494j m2247a(AbstractC19070d abstractC19070d) {
        while (true) {
            C18524p.m3840d(abstractC19070d, "<this>");
            AbstractC19070d m1533a = C19756a.m1533a(abstractC19070d);
            C19494j c19494j = null;
            if (m1533a == null) {
                return null;
            }
            AbstractC19834h staticScope = m1533a.getStaticScope();
            if (staticScope instanceof C19494j) {
                c19494j = (C19494j) staticScope;
            }
            if (c19494j != null) {
                return c19494j;
            }
            abstractC19070d = m1533a;
        }
    }
}
