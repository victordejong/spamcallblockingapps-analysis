package kotlin.reflect.jvm.internal.impl.load.java.b;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.p;
import kotlin.n;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ae;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.j;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.x;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/b/k.class */
public final class k {
    public static final List<ba> a(Collection<l> newValueParametersTypes, Collection<? extends ba> oldValueParameters, a newOwner) {
        p.d(newValueParametersTypes, "newValueParametersTypes");
        p.d(oldValueParameters, "oldValueParameters");
        p.d(newOwner, "newOwner");
        boolean z = newValueParametersTypes.size() == oldValueParameters.size();
        if (!x.f38657a || z) {
            List<n> d2 = kotlin.a.n.d((Iterable) newValueParametersTypes, (Iterable) oldValueParameters);
            ArrayList arrayList = new ArrayList(kotlin.a.n.a((Iterable) d2, 10));
            for (n nVar : d2) {
                l lVar = (l) nVar.f36810a;
                ba baVar = (ba) nVar.f36811b;
                int b2 = baVar.b();
                g annotations = baVar.getAnnotations();
                e name = baVar.getName();
                p.b(name, "oldParameter.name");
                KotlinType kotlinType = lVar.f37757a;
                boolean z2 = lVar.f37758b;
                boolean f = baVar.f();
                boolean h = baVar.h();
                KotlinType a2 = baVar.d() != null ? kotlin.reflect.jvm.internal.impl.resolve.b.a.c(newOwner).getBuiltIns().a(lVar.f37757a) : null;
                at source = baVar.getSource();
                p.b(source, "oldParameter.source");
                arrayList.add(new ae(newOwner, null, b2, annotations, name, kotlinType, z2, f, h, a2, source));
            }
            return arrayList;
        }
        throw new AssertionError("Different value parameters sizes: Enhanced = " + newValueParametersTypes.size() + ", Old = " + oldValueParameters.size());
    }

    public static final j a(d dVar) {
        while (true) {
            p.d(dVar, "<this>");
            d a2 = kotlin.reflect.jvm.internal.impl.resolve.b.a.a(dVar);
            j jVar = null;
            if (a2 == null) {
                return null;
            }
            h staticScope = a2.getStaticScope();
            if (staticScope instanceof j) {
                jVar = (j) staticScope;
            }
            if (jVar != null) {
                return jVar;
            }
            dVar = a2;
        }
    }
}
