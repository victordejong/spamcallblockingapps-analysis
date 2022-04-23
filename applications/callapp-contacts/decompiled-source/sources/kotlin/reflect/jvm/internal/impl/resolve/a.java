package kotlin.reflect.jvm.internal.impl.resolve;

import java.util.Collection;
import java.util.LinkedHashSet;
import kotlin.a.z;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.ae;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
import kotlin.reflect.jvm.internal.impl.resolve.e.k;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/a.class */
public final class a extends l {

    /* renamed from: a  reason: collision with root package name */
    public static final a f38221a = new a();

    private a() {
    }

    public static Collection<d> a(d sealedClass) {
        p.d(sealedClass, "sealedClass");
        if (sealedClass.getModality() != y.SEALED) {
            return z.f36608a;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        k containingDeclaration = sealedClass.getContainingDeclaration();
        if (containingDeclaration instanceof ae) {
            a(sealedClass, linkedHashSet, ((ae) containingDeclaration).a(), false);
        }
        h unsubstitutedInnerClassesScope = sealedClass.getUnsubstitutedInnerClassesScope();
        p.b(unsubstitutedInnerClassesScope, "sealedClass.unsubstitutedInnerClassesScope");
        a(sealedClass, linkedHashSet, unsubstitutedInnerClassesScope, true);
        return linkedHashSet;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final void a(d dVar, LinkedHashSet<d> linkedHashSet, h hVar, boolean z) {
        for (k kVar : k.a.a(hVar, kotlin.reflect.jvm.internal.impl.resolve.e.d.i, null, 2)) {
            if (kVar instanceof d) {
                d dVar2 = (d) kVar;
                if (d.a(dVar2, dVar)) {
                    linkedHashSet.add(kVar);
                }
                if (z) {
                    h unsubstitutedInnerClassesScope = dVar2.getUnsubstitutedInnerClassesScope();
                    p.b(unsubstitutedInnerClassesScope, "descriptor.unsubstitutedInnerClassesScope");
                    a(dVar, linkedHashSet, unsubstitutedInnerClassesScope, z);
                }
            }
        }
    }
}
